; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_wait_for_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_wait_for_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tpm_chip*)* }
%struct.st33zp24_dev = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@TPM_CHIP_FLAG_IRQ = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32, i64, i32*, i32)* @wait_for_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_stat(%struct.tpm_chip* %0, i32 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.st33zp24_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %20 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %19, i32 0, i32 2
  %21 = call %struct.st33zp24_dev* @dev_get_drvdata(i32* %20)
  store %struct.st33zp24_dev* %21, %struct.st33zp24_dev** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %23 = call i32 @st33zp24_status(%struct.tpm_chip* %22)
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %142

30:                                               ; preds = %5
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %13, align 8
  %34 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %35 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %115

40:                                               ; preds = %30
  %41 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %12, align 8
  %42 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %17, align 8
  %44 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %12, align 8
  %45 = call i32 @clear_interruption(%struct.st33zp24_dev* %44)
  %46 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %12, align 8
  %47 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @enable_irq(i32 %48)
  br label %50

50:                                               ; preds = %108, %40
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @ERESTARTSYS, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* @current, align 4
  %57 = call i64 @freezing(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @TIF_SIGPENDING, align 4
  %61 = call i32 @clear_thread_flag(i32 %60)
  br label %62

62:                                               ; preds = %59, %55, %50
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @jiffies, align 8
  %65 = sub i64 %63, %64
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %6, align 4
  br label %142

69:                                               ; preds = %62
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %17, align 8
  %73 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %12, align 8
  %74 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @wait_event_interruptible_timeout(i32 %71, i32 %77, i64 %78)
  store i32 %79, i32* %14, align 4
  %80 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %12, align 8
  %81 = call i32 @clear_interruption(%struct.st33zp24_dev* %80)
  %82 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @wait_for_tpm_stat_cond(%struct.tpm_chip* %82, i32 %83, i32 %84, i32* %15)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %69
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @ECANCELED, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %142

97:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %142

98:                                               ; preds = %88, %69
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @ERESTARTSYS, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @current, align 4
  %106 = call i64 @freezing(i32 %105)
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %104, %99
  %109 = phi i1 [ false, %99 ], [ %107, %104 ]
  br i1 %109, label %50, label %110

110:                                              ; preds = %108
  %111 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %12, align 8
  %112 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @disable_irq_nosync(i32 %113)
  br label %139

115:                                              ; preds = %30
  br label %116

116:                                              ; preds = %133, %115
  %117 = load i32, i32* @TPM_TIMEOUT, align 4
  %118 = call i32 @msleep(i32 %117)
  %119 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %120 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (%struct.tpm_chip*)*, i32 (%struct.tpm_chip*)** %122, align 8
  %124 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %125 = call i32 %123(%struct.tpm_chip* %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  br label %142

132:                                              ; preds = %116
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* @jiffies, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i64 @time_before(i64 %134, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %116, label %138

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %110
  %140 = load i32, i32* @ETIME, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %139, %131, %97, %94, %68, %29
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local %struct.st33zp24_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @st33zp24_status(%struct.tpm_chip*) #1

declare dso_local i32 @clear_interruption(%struct.st33zp24_dev*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @wait_for_tpm_stat_cond(%struct.tpm_chip*, i32, i32, i32*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
