; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_pcr_extend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_pcr_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tpm_digest = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"attempting extend a PCR value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_pcr_extend(%struct.tpm_chip* %0, i32 %1, %struct.tpm_digest* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_digest*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tpm_digest* %2, %struct.tpm_digest** %7, align 8
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %11 = call %struct.tpm_chip* @tpm_find_get_ops(%struct.tpm_chip* %10)
  store %struct.tpm_chip* %11, %struct.tpm_chip** %5, align 8
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %13 = icmp ne %struct.tpm_chip* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %70

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %21 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.tpm_digest*, %struct.tpm_digest** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.tpm_digest, %struct.tpm_digest* %25, i64 %27
  %29 = getelementptr inbounds %struct.tpm_digest, %struct.tpm_digest* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %32 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %30, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %8, align 4
  br label %66

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %48 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.tpm_digest*, %struct.tpm_digest** %7, align 8
  %57 = call i32 @tpm2_pcr_extend(%struct.tpm_chip* %54, i32 %55, %struct.tpm_digest* %56)
  store i32 %57, i32* %8, align 4
  br label %66

58:                                               ; preds = %46
  %59 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.tpm_digest*, %struct.tpm_digest** %7, align 8
  %62 = getelementptr inbounds %struct.tpm_digest, %struct.tpm_digest* %61, i64 0
  %63 = getelementptr inbounds %struct.tpm_digest, %struct.tpm_digest* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @tpm1_pcr_extend(%struct.tpm_chip* %59, i32 %60, i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %58, %53, %40
  %67 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %68 = call i32 @tpm_put_ops(%struct.tpm_chip* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %14
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.tpm_chip* @tpm_find_get_ops(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_pcr_extend(%struct.tpm_chip*, i32, %struct.tpm_digest*) #1

declare dso_local i32 @tpm1_pcr_extend(%struct.tpm_chip*, i32, i32, i8*) #1

declare dso_local i32 @tpm_put_ops(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
