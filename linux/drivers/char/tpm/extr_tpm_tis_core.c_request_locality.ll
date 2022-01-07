; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_request_locality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_request_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i64, i32, i32 }
%struct.tpm_tis_data = type { i32 }

@TPM_ACCESS_REQUEST_USE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TPM_CHIP_FLAG_IRQ = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @request_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_locality(%struct.tpm_chip* %0, i32 %1) #0 {
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
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @check_locality(%struct.tpm_chip* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TPM_ACCESS(i32 %21)
  %23 = load i32, i32* @TPM_ACCESS_REQUEST_USE, align 4
  %24 = call i64 @tpm_tis_write8(%struct.tpm_tis_data* %20, i32 %22, i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %94

30:                                               ; preds = %19
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %33 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  store i64 %35, i64* %7, align 8
  %36 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %37 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %72, %42
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @jiffies, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %94

50:                                               ; preds = %43
  %51 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %6, align 8
  %52 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @check_locality(%struct.tpm_chip* %54, i32 %55)
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @wait_event_interruptible_timeout(i32 %53, i64 %56, i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %3, align 4
  br label %94

63:                                               ; preds = %50
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @ERESTARTSYS, align 8
  %66 = sub nsw i64 0, %65
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* @current, align 4
  %70 = call i64 @freezing(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @TIF_SIGPENDING, align 4
  %74 = call i32 @clear_thread_flag(i32 %73)
  br label %43

75:                                               ; preds = %68, %63
  br label %93

76:                                               ; preds = %30
  br label %77

77:                                               ; preds = %87, %76
  %78 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @check_locality(%struct.tpm_chip* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %3, align 4
  br label %94

84:                                               ; preds = %77
  %85 = load i32, i32* @TPM_TIMEOUT, align 4
  %86 = call i32 @tpm_msleep(i32 %85)
  br label %87

87:                                               ; preds = %84
  %88 = load i64, i64* @jiffies, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i64 @time_before(i64 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %77, label %92

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %75
  store i32 -1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %82, %61, %49, %27, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i64 @check_locality(%struct.tpm_chip*, i32) #1

declare dso_local i64 @tpm_tis_write8(%struct.tpm_tis_data*, i32, i32) #1

declare dso_local i32 @TPM_ACCESS(i32) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i64, i64) #1

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
