; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-dev-common.c_tpm_dev_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-dev-common.c_tpm_dev_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_space = type { i32 }
%struct.tpm_header = type { i8*, i32, i8* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@TPM2_ST_NO_SESSIONS = common dso_local global i32 0, align 4
@TPM2_RC_COMMAND_CODE = common dso_local global i32 0, align 4
@TSS2_RESMGR_TPM_RC_LAYER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, %struct.tpm_space*, i32*, i64)* @tpm_dev_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_dev_transmit(%struct.tpm_chip* %0, %struct.tpm_space* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca %struct.tpm_space*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tpm_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store %struct.tpm_space* %1, %struct.tpm_space** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.tpm_header*
  store %struct.tpm_header* %14, %struct.tpm_header** %9, align 8
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %16 = load %struct.tpm_space*, %struct.tpm_space** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @tpm2_prepare_space(%struct.tpm_chip* %15, %struct.tpm_space* %16, i32* %17, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %4
  %25 = call i8* @cpu_to_be32(i32 24)
  %26 = load %struct.tpm_header*, %struct.tpm_header** %9, align 8
  %27 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @TPM2_ST_NO_SESSIONS, align 4
  %29 = call i32 @cpu_to_be16(i32 %28)
  %30 = load %struct.tpm_header*, %struct.tpm_header** %9, align 8
  %31 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @TPM2_RC_COMMAND_CODE, align 4
  %33 = load i32, i32* @TSS2_RESMGR_TPM_RC_LAYER, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.tpm_header*, %struct.tpm_header** %9, align 8
  %37 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  store i32 24, i32* %10, align 4
  br label %38

38:                                               ; preds = %24, %4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %60

42:                                               ; preds = %38
  %43 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @tpm_transmit(%struct.tpm_chip* %43, i32* %44, i64 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %56 = load %struct.tpm_space*, %struct.tpm_space** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @tpm2_commit_space(%struct.tpm_chip* %55, %struct.tpm_space* %56, i32* %57, i32* %11)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %51
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  ret i32 %68
}

declare dso_local i32 @tpm2_prepare_space(%struct.tpm_chip*, %struct.tpm_space*, i32*, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @tpm_transmit(%struct.tpm_chip*, i32*, i64) #1

declare dso_local i32 @tpm2_commit_space(%struct.tpm_chip*, %struct.tpm_space*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
