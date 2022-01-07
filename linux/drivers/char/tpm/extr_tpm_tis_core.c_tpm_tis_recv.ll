; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32 }
%struct.tpm_tis_data = type { i32 }

@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable to read header\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to read remainder of result\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@TPM_STS_DATA_AVAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Error left over data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_tis_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_recv(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tpm_tis_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %12)
  store %struct.tpm_tis_data* %13, %struct.tpm_tis_data** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %96

20:                                               ; preds = %3
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %24 = call i32 @recv_data(%struct.tpm_chip* %21, i32* %22, i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %31 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %96

33:                                               ; preds = %20
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @be32_to_cpu(i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %33
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %96

48:                                               ; preds = %41
  %49 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %55 = sub i64 %53, %54
  %56 = call i32 @recv_data(%struct.tpm_chip* %49, i32* %52, i64 %55)
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %10, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %48
  %64 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %65 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ETIME, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %96

69:                                               ; preds = %48
  %70 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %71 = load i32, i32* @TPM_STS_VALID, align 4
  %72 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %73 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %76 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %75, i32 0, i32 0
  %77 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %70, i32 %71, i32 %74, i32* %76, i32 0)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* @ETIME, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %96

82:                                               ; preds = %69
  %83 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %84 = call i32 @tpm_tis_status(%struct.tpm_chip* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @TPM_STS_DATA_AVAIL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %91 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %96

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %89, %79, %63, %45, %29, %17
  %97 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %98 = call i32 @tpm_tis_ready(%struct.tpm_chip* %97)
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @recv_data(%struct.tpm_chip*, i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @wait_for_tpm_stat(%struct.tpm_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @tpm_tis_status(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_tis_ready(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
