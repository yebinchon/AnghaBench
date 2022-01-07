; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_st33zp24_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_st33zp24.c_st33zp24_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable to read header\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to read remainder of result\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i8*, i64)* @st33zp24_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st33zp24_recv(%struct.tpm_chip* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %11 = icmp ne %struct.tpm_chip* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %79

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %73

22:                                               ; preds = %15
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %26 = call i32 @recv_data(%struct.tpm_chip* %23, i8* %24, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %33 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %73

35:                                               ; preds = %22
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @be32_to_cpu(i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %35
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %73

51:                                               ; preds = %44
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %58 = sub i64 %56, %57
  %59 = call i32 @recv_data(%struct.tpm_chip* %52, i8* %55, i64 %58)
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %9, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %68 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ETIME, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %51
  br label %73

73:                                               ; preds = %72, %48, %31, %19
  %74 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %75 = call i32 @st33zp24_cancel(%struct.tpm_chip* %74)
  %76 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %77 = call i32 @release_locality(%struct.tpm_chip* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %12
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @recv_data(%struct.tpm_chip*, i8*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @st33zp24_cancel(%struct.tpm_chip*) #1

declare dso_local i32 @release_locality(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
