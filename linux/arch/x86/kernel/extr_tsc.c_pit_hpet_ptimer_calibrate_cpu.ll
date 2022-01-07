; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_pit_hpet_ptimer_calibrate_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_pit_hpet_ptimer_calibrate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@CAL_LATCH = common dso_local global i64 0, align 8
@CAL_MS = common dso_local global i64 0, align 8
@CAL_PIT_LOOPS = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"PIT calibration matches %s. %d loops\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HPET\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PMTIMER\00", align 1
@CAL2_LATCH = common dso_local global i64 0, align 8
@CAL2_MS = common dso_local global i64 0, align 8
@CAL2_PIT_LOOPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to calibrate against PIT\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"No reference (HPET/PMTIMER) available\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"HPET/PMTIMER calibration failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"using %s reference calibration\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Using PIT calibration value\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"HPET/PMTIMER calibration failed. Using PIT calibration.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"PIT calibration deviates from %s: %lu %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @pit_hpet_ptimer_calibrate_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pit_hpet_ptimer_calibrate_cpu() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = load i64, i64* @ULONG_MAX, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* @ULONG_MAX, align 8
  store i64 %17, i64* %8, align 8
  %18 = call i32 (...) @is_hpet_enabled()
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* @CAL_LATCH, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* @CAL_MS, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* @CAL_PIT_LOOPS, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %106, %0
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %109

25:                                               ; preds = %22
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @tsc_read_refs(i64* %5, i32 %28)
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @pit_calibrate_tsc(i64 %30, i64 %31, i32 %32)
  store i64 %33, i64* %15, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @tsc_read_refs(i64* %6, i32 %34)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call i64 @min(i64 %38, i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  br label %106

45:                                               ; preds = %25
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @ULLONG_MAX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @ULLONG_MAX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45
  br label %106

54:                                               ; preds = %49
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* %2, align 8
  %57 = sub nsw i64 %55, %56
  %58 = mul nsw i64 %57, 1000000
  store i64 %58, i64* %3, align 8
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @calc_hpet_ref(i64 %62, i64 %63, i64 %64)
  store i64 %65, i64* %3, align 8
  br label %71

66:                                               ; preds = %54
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @calc_pmtimer_ref(i64 %67, i64 %68, i64 %69)
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %3, align 8
  %74 = call i64 @min(i64 %72, i64 %73)
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = mul nsw i64 %75, 100
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @do_div(i64 %77, i64 %78)
  %80 = load i64, i64* %4, align 8
  %81 = icmp sge i64 %80, 90
  br i1 %81, label %82, label %94

82:                                               ; preds = %71
  %83 = load i64, i64* %4, align 8
  %84 = icmp sle i64 %83, 110
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %89, i32 %91)
  %93 = load i64, i64* %8, align 8
  store i64 %93, i64* %1, align 8
  br label %167

94:                                               ; preds = %82, %71
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* @ULONG_MAX, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i64, i64* @CAL2_LATCH, align 8
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* @CAL2_MS, align 8
  store i64 %103, i64* %11, align 8
  %104 = load i32, i32* @CAL2_PIT_LOOPS, align 4
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %101, %97, %94
  br label %106

106:                                              ; preds = %105, %53, %44
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %22

109:                                              ; preds = %22
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @ULONG_MAX, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %109
  %114 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %5, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %6, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = call i32 @pr_notice(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %167

125:                                              ; preds = %120, %117, %113
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @ULONG_MAX, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %167

131:                                              ; preds = %125
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %136 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %135)
  %137 = load i64, i64* %8, align 8
  store i64 %137, i64* %1, align 8
  br label %167

138:                                              ; preds = %109
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %138
  %142 = load i64, i64* %5, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* %6, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i64, i64* %7, align 8
  store i64 %149, i64* %1, align 8
  br label %167

150:                                              ; preds = %144, %141, %138
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* @ULONG_MAX, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %156 = load i64, i64* %7, align 8
  store i64 %156, i64* %1, align 8
  br label %167

157:                                              ; preds = %150
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* %8, align 8
  %164 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %161, i64 %162, i64 %163)
  %165 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %166 = load i64, i64* %7, align 8
  store i64 %166, i64* %1, align 8
  br label %167

167:                                              ; preds = %157, %154, %147, %131, %129, %123, %85
  %168 = load i64, i64* %1, align 8
  ret i64 %168
}

declare dso_local i32 @is_hpet_enabled(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @tsc_read_refs(i64*, i32) #1

declare dso_local i64 @pit_calibrate_tsc(i64, i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @calc_hpet_ref(i64, i64, i64) #1

declare dso_local i64 @calc_pmtimer_ref(i64, i64, i64) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @pr_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
