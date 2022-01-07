; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_tpm_tis_i2c_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_tpm_tis_i2c_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tpm_chip = type { i32, i32 }

@TPM_STS_GO = common dso_local global i64 0, align 8
@TPM_I2C_INFINEON_BUFSIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TPM_STS_COMMAND_READY = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@tpm_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MAX_COUNT_LONG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@TPM_STS_DATA_EXPECT = common dso_local global i32 0, align 4
@SLEEP_DURATION_RESET_LOW = common dso_local global i32 0, align 4
@SLEEP_DURATION_RESET_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i64*, i64)* @tpm_tis_i2c_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_i2c_send(%struct.tpm_chip* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* @TPM_STS_GO, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @TPM_I2C_INFINEON_BUFSIZE, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @E2BIG, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %153

21:                                               ; preds = %3
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %23 = call i64 @request_locality(%struct.tpm_chip* %22, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %153

28:                                               ; preds = %21
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %30 = call i32 @tpm_tis_i2c_status(%struct.tpm_chip* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @TPM_STS_COMMAND_READY, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %37 = call i32 @tpm_tis_i2c_ready(%struct.tpm_chip* %36)
  %38 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %39 = load i32, i32* @TPM_STS_COMMAND_READY, align 4
  %40 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %41 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @wait_for_stat(%struct.tpm_chip* %38, i32 %39, i32 %42, i32* %9)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @ETIME, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %143

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %28
  br label %50

50:                                               ; preds = %118, %49
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 1
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %119

55:                                               ; preds = %50
  %56 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %57 = call i64 @get_burstcount(%struct.tpm_chip* %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %153

63:                                               ; preds = %55
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, 1
  %67 = load i64, i64* %11, align 8
  %68 = sub i64 %66, %67
  %69 = icmp ugt i64 %64, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i64, i64* %7, align 8
  %72 = sub i64 %71, 1
  %73 = load i64, i64* %11, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %70, %63
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 4
  %77 = call i32 @TPM_DATA_FIFO(i32 %76)
  %78 = load i64*, i64** %6, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %10, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @iic_tpm_write(i32 %77, i64* %80, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %11, align 8
  br label %97

90:                                               ; preds = %75
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %12, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %86
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @MAX_COUNT_LONG, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %143

104:                                              ; preds = %97
  %105 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %106 = load i32, i32* @TPM_STS_VALID, align 4
  %107 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %108 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @wait_for_stat(%struct.tpm_chip* %105, i32 %106, i32 %109, i32* %9)
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @TPM_STS_DATA_EXPECT, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %143

118:                                              ; preds = %104
  br label %50

119:                                              ; preds = %50
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 4
  %121 = call i32 @TPM_DATA_FIFO(i32 %120)
  %122 = load i64*, i64** %6, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = call i32 @iic_tpm_write(i32 %121, i64* %124, i32 1)
  %126 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %127 = load i32, i32* @TPM_STS_VALID, align 4
  %128 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %129 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @wait_for_stat(%struct.tpm_chip* %126, i32 %127, i32 %130, i32* %9)
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @TPM_STS_DATA_EXPECT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %119
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %8, align 4
  br label %143

139:                                              ; preds = %119
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 4
  %141 = call i32 @TPM_STS(i32 %140)
  %142 = call i32 @iic_tpm_write(i32 %141, i64* %13, i32 1)
  store i32 0, i32* %4, align 4
  br label %153

143:                                              ; preds = %136, %115, %101, %45
  %144 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %145 = call i32 @tpm_tis_i2c_ready(%struct.tpm_chip* %144)
  %146 = load i32, i32* @SLEEP_DURATION_RESET_LOW, align 4
  %147 = load i32, i32* @SLEEP_DURATION_RESET_HI, align 4
  %148 = call i32 @usleep_range(i32 %146, i32 %147)
  %149 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 4
  %151 = call i32 @release_locality(%struct.tpm_chip* %149, i32 %150, i32 0)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %143, %139, %60, %25, %18
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i64 @request_locality(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm_tis_i2c_status(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_tis_i2c_ready(%struct.tpm_chip*) #1

declare dso_local i64 @wait_for_stat(%struct.tpm_chip*, i32, i32, i32*) #1

declare dso_local i64 @get_burstcount(%struct.tpm_chip*) #1

declare dso_local i32 @iic_tpm_write(i32, i64*, i32) #1

declare dso_local i32 @TPM_DATA_FIFO(i32) #1

declare dso_local i32 @TPM_STS(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @release_locality(%struct.tpm_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
