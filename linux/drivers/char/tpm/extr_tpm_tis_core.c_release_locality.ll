; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_release_locality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_release_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i64, i32, i32 }
%struct.tpm_tis_data = type { i32 }

@TPM_ACCESS_ACTIVE_LOCALITY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TPM_CHIP_FLAG_IRQ = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @release_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release_locality(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_tis_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %11 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %10, i32 0, i32 2
  %12 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %11)
  store %struct.tpm_tis_data* %12, %struct.tpm_tis_data** %6, align 8
  %13 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @TPM_ACCESS(i32 %14)
  %16 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %17 = call i32 @tpm_tis_write8(%struct.tpm_tis_data* %13, i32 %15, i32 %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %20 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %24 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @jiffies, align 8
  %33 = sub i64 %31, %32
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %79

37:                                               ; preds = %30
  %38 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %6, align 8
  %39 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @locality_inactive(%struct.tpm_chip* %41, i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @wait_event_interruptible_timeout(i32 %40, i64 %43, i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %79

49:                                               ; preds = %37
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @ERESTARTSYS, align 8
  %52 = sub nsw i64 0, %51
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32, i32* @current, align 4
  %56 = call i64 @freezing(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @TIF_SIGPENDING, align 4
  %60 = call i32 @clear_thread_flag(i32 %59)
  br label %30

61:                                               ; preds = %54, %49
  br label %78

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %72, %62
  %64 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @locality_inactive(%struct.tpm_chip* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %79

69:                                               ; preds = %63
  %70 = load i32, i32* @TPM_TIMEOUT, align 4
  %71 = call i32 @tpm_msleep(i32 %70)
  br label %72

72:                                               ; preds = %69
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @time_before(i64 %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %63, label %77

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %61
  store i32 -1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %68, %48, %36
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_write8(%struct.tpm_tis_data*, i32, i32) #1

declare dso_local i32 @TPM_ACCESS(i32) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i64, i64) #1

declare dso_local i64 @locality_inactive(%struct.tpm_chip*, i32) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @tpm_msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
