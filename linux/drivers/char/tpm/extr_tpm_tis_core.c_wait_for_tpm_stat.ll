; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_wait_for_tpm_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_wait_for_tpm_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tpm_chip*)* }

@jiffies = common dso_local global i64 0, align 8
@TPM_CHIP_FLAG_IRQ = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@TPM_TIMEOUT_USECS_MIN = common dso_local global i32 0, align 4
@TPM_TIMEOUT_USECS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32, i64, i32*, i32)* @wait_for_tpm_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_tpm_stat(%struct.tpm_chip* %0, i32 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %17 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.tpm_chip*)*, i32 (%struct.tpm_chip*)** %19, align 8
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %22 = call i32 %20(%struct.tpm_chip* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %108

29:                                               ; preds = %5
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %12, align 8
  %33 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %34 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %76, %39
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @jiffies, align 8
  %43 = sub i64 %41, %42
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @ETIME, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %108

49:                                               ; preds = %40
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @wait_for_tpm_stat_cond(%struct.tpm_chip* %52, i32 %53, i32 %54, i32* %15)
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @wait_event_interruptible_timeout(i32 %51, i32 %55, i64 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ECANCELED, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %108

66:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %108

67:                                               ; preds = %49
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @ERESTARTSYS, align 8
  %70 = sub nsw i64 0, %69
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @current, align 4
  %74 = call i64 @freezing(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @TIF_SIGPENDING, align 4
  %78 = call i32 @clear_thread_flag(i32 %77)
  br label %40

79:                                               ; preds = %72, %67
  br label %105

80:                                               ; preds = %29
  br label %81

81:                                               ; preds = %99, %80
  %82 = load i32, i32* @TPM_TIMEOUT_USECS_MIN, align 4
  %83 = load i32, i32* @TPM_TIMEOUT_USECS_MAX, align 4
  %84 = call i32 @usleep_range(i32 %82, i32 %83)
  %85 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %86 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.tpm_chip*)*, i32 (%struct.tpm_chip*)** %88, align 8
  %90 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %91 = call i32 %89(%struct.tpm_chip* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %108

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @time_before(i64 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %81, label %104

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %79
  %106 = load i32, i32* @ETIME, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %97, %66, %63, %46, %28
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @wait_for_tpm_stat_cond(%struct.tpm_chip*, i32, i32, i32*) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
