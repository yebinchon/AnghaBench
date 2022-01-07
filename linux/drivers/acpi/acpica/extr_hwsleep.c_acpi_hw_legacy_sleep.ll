; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwsleep.c_acpi_hw_legacy_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwsleep.c_acpi_hw_legacy_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_bit_register_info = type { i32, i32 }

@hw_legacy_sleep = common dso_local global i32 0, align 4
@ACPI_BITREG_SLEEP_TYPE = common dso_local global i32 0, align 4
@ACPI_BITREG_SLEEP_ENABLE = common dso_local global i32 0, align 4
@ACPI_BITREG_WAKE_STATUS = common dso_local global i32 0, align 4
@ACPI_CLEAR_STATUS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@acpi_gbl_system_awake_and_running = common dso_local global i32 0, align 4
@ACPI_REGISTER_PM1_CONTROL = common dso_local global i32 0, align 4
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Entering sleep state [S%u]\0A\00", align 1
@acpi_gbl_sleep_type_a = common dso_local global i32 0, align 4
@acpi_gbl_sleep_type_b = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8
@ACPI_STATE_S3 = common dso_local global i64 0, align 8
@ACPI_USEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_hw_legacy_sleep(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_bit_register_info*, align 8
  %5 = alloca %struct.acpi_bit_register_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %10 = load i32, i32* @hw_legacy_sleep, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* @ACPI_BITREG_SLEEP_TYPE, align 4
  %13 = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 %12)
  store %struct.acpi_bit_register_info* %13, %struct.acpi_bit_register_info** %4, align 8
  %14 = load i32, i32* @ACPI_BITREG_SLEEP_ENABLE, align 4
  %15 = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 %14)
  store %struct.acpi_bit_register_info* %15, %struct.acpi_bit_register_info** %5, align 8
  %16 = load i32, i32* @ACPI_BITREG_WAKE_STATUS, align 4
  %17 = load i32, i32* @ACPI_CLEAR_STATUS, align 4
  %18 = call i64 @acpi_write_bit_register(i32 %16, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @ACPI_FAILURE(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @return_ACPI_STATUS(i64 %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = call i64 (...) @acpi_hw_disable_all_gpes()
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @ACPI_FAILURE(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @return_ACPI_STATUS(i64 %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = call i64 (...) @acpi_hw_clear_acpi_status()
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @ACPI_FAILURE(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @return_ACPI_STATUS(i64 %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* @acpi_gbl_system_awake_and_running, align 4
  %43 = call i64 (...) @acpi_hw_enable_all_wakeup_gpes()
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @ACPI_FAILURE(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @return_ACPI_STATUS(i64 %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* @ACPI_REGISTER_PM1_CONTROL, align 4
  %52 = call i64 @acpi_hw_register_read(i32 %51, i32* %6)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @ACPI_FAILURE(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @return_ACPI_STATUS(i64 %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* @ACPI_DB_INIT, align 4
  %61 = load i64, i64* %3, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @ACPI_DEBUG_PRINT(i32 %62)
  %64 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %4, align 8
  %65 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %5, align 8
  %68 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %66, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @acpi_gbl_sleep_type_a, align 4
  %76 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %4, align 8
  %77 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %75, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @acpi_gbl_sleep_type_b, align 4
  %83 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %4, align 8
  %84 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %82, %85
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @acpi_hw_write_pm1_control(i32 %89, i32 %90)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i64 @ACPI_FAILURE(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %59
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @return_ACPI_STATUS(i64 %96)
  br label %98

98:                                               ; preds = %95, %59
  %99 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %5, align 8
  %100 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %5, align 8
  %105 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  %110 = load i64, i64* %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i64 @acpi_os_enter_sleep(i64 %110, i32 %111, i32 %112)
  store i64 %113, i64* %9, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %98
  %118 = load i64, i64* @AE_OK, align 8
  %119 = call i32 @return_ACPI_STATUS(i64 %118)
  br label %120

120:                                              ; preds = %117, %98
  %121 = load i64, i64* %9, align 8
  %122 = call i64 @ACPI_FAILURE(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @return_ACPI_STATUS(i64 %125)
  br label %127

127:                                              ; preds = %124, %120
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i64 @acpi_hw_write_pm1_control(i32 %128, i32 %129)
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i64 @ACPI_FAILURE(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @return_ACPI_STATUS(i64 %135)
  br label %137

137:                                              ; preds = %134, %127
  %138 = load i64, i64* %3, align 8
  %139 = load i64, i64* @ACPI_STATE_S3, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load i32, i32* @ACPI_USEC_PER_SEC, align 4
  %143 = mul nsw i32 10, %142
  %144 = call i32 @acpi_os_stall(i32 %143)
  %145 = load i32, i32* @ACPI_REGISTER_PM1_CONTROL, align 4
  %146 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %5, align 8
  %147 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @acpi_hw_register_write(i32 %145, i32 %148)
  store i64 %149, i64* %9, align 8
  %150 = load i64, i64* %9, align 8
  %151 = call i64 @ACPI_FAILURE(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %141
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @return_ACPI_STATUS(i64 %154)
  br label %156

156:                                              ; preds = %153, %141
  br label %157

157:                                              ; preds = %156, %137
  br label %158

158:                                              ; preds = %168, %157
  %159 = load i32, i32* @ACPI_BITREG_WAKE_STATUS, align 4
  %160 = call i64 @acpi_read_bit_register(i32 %159, i32* %8)
  store i64 %160, i64* %9, align 8
  %161 = load i64, i64* %9, align 8
  %162 = call i64 @ACPI_FAILURE(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @return_ACPI_STATUS(i64 %165)
  br label %167

167:                                              ; preds = %164, %158
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  br i1 %171, label %158, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* @AE_OK, align 8
  %174 = call i32 @return_ACPI_STATUS(i64 %173)
  %175 = load i64, i64* %2, align 8
  ret i64 %175
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32) #1

declare dso_local i64 @acpi_write_bit_register(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @acpi_hw_disable_all_gpes(...) #1

declare dso_local i64 @acpi_hw_clear_acpi_status(...) #1

declare dso_local i64 @acpi_hw_enable_all_wakeup_gpes(...) #1

declare dso_local i64 @acpi_hw_register_read(i32, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @acpi_hw_write_pm1_control(i32, i32) #1

declare dso_local i32 @ACPI_FLUSH_CPU_CACHE(...) #1

declare dso_local i64 @acpi_os_enter_sleep(i64, i32, i32) #1

declare dso_local i32 @acpi_os_stall(i32) #1

declare dso_local i64 @acpi_hw_register_write(i32, i32) #1

declare dso_local i64 @acpi_read_bit_register(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
