; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_probe_itpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_probe_itpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_tis_data = type { i32, i32 }

@probe_itpm.cmd_getticks = internal constant [10 x i32] [i32 0, i32 193, i32 0, i32 0, i32 0, i32 10, i32 0, i32 0, i32 0, i32 241], align 16
@TPM_TIS_ITPM_WORKAROUND = common dso_local global i32 0, align 4
@TPM_VID_INTEL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Detected an iTPM.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @probe_itpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_itpm(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_tis_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %9 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %8, i32 0, i32 0
  %10 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %9)
  store %struct.tpm_tis_data* %10, %struct.tpm_tis_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 40, i64* %6, align 8
  %11 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %4, align 8
  %12 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TPM_TIS_ITPM_WORKAROUND, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

18:                                               ; preds = %1
  %19 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %4, align 8
  %20 = call i32 @TPM_DID_VID(i32 0)
  %21 = call i32 @tpm_tis_read16(%struct.tpm_tis_data* %19, i32 %20, i64* %7)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %81

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @TPM_VID_INTEL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %81

31:                                               ; preds = %26
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %33 = call i64 @request_locality(%struct.tpm_chip* %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %81

38:                                               ; preds = %31
  %39 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @tpm_tis_send_data(%struct.tpm_chip* %39, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @probe_itpm.cmd_getticks, i64 0, i64 0), i64 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %72

45:                                               ; preds = %38
  %46 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %47 = call i32 @tpm_tis_ready(%struct.tpm_chip* %46)
  %48 = load i32, i32* @TPM_TIS_ITPM_WORKAROUND, align 4
  %49 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %4, align 8
  %50 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @tpm_tis_send_data(%struct.tpm_chip* %53, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @probe_itpm.cmd_getticks, i64 0, i64 0), i64 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %60 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %59, i32 0, i32 0
  %61 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %71

62:                                               ; preds = %45
  %63 = load i32, i32* @TPM_TIS_ITPM_WORKAROUND, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %4, align 8
  %66 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %62, %58
  br label %72

72:                                               ; preds = %71, %44
  %73 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %74 = call i32 @tpm_tis_ready(%struct.tpm_chip* %73)
  %75 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %76 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %4, align 8
  %77 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @release_locality(%struct.tpm_chip* %75, i32 %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %72, %35, %30, %24, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_read16(%struct.tpm_tis_data*, i32, i64*) #1

declare dso_local i32 @TPM_DID_VID(i32) #1

declare dso_local i64 @request_locality(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm_tis_send_data(%struct.tpm_chip*, i32*, i64) #1

declare dso_local i32 @tpm_tis_ready(%struct.tpm_chip*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @release_locality(%struct.tpm_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
