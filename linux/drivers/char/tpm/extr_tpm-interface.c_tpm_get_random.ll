; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_get_random.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_get_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@TPM_MAX_RNG_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_get_random(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @TPM_MAX_RNG_DATA, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %11
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %20 = call %struct.tpm_chip* @tpm_find_get_ops(%struct.tpm_chip* %19)
  store %struct.tpm_chip* %20, %struct.tpm_chip** %5, align 8
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %22 = icmp ne %struct.tpm_chip* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %18
  %27 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %28 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @tpm2_get_random(%struct.tpm_chip* %34, i32* %35, i64 %36)
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %26
  %39 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @tpm1_get_random(%struct.tpm_chip* %39, i32* %40, i64 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %45 = call i32 @tpm_put_ops(%struct.tpm_chip* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %23, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.tpm_chip* @tpm_find_get_ops(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_get_random(%struct.tpm_chip*, i32*, i64) #1

declare dso_local i32 @tpm1_get_random(%struct.tpm_chip*, i32*, i64) #1

declare dso_local i32 @tpm_put_ops(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
