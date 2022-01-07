; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm1-cmd.c_tpm1_calc_ordinal_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm1-cmd.c_tpm1_calc_ordinal_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32* }

@TPM_UNDEFINED = common dso_local global i32 0, align 4
@TPM_MAX_ORDINAL = common dso_local global i64 0, align 8
@tpm1_ordinal_duration = common dso_local global i32* null, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tpm1_calc_ordinal_duration(%struct.tpm_chip* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @TPM_UNDEFINED, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @TPM_MAX_ORDINAL, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** @tpm1_ordinal_duration, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TPM_UNDEFINED, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %23 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %21, %17
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 120, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %3, align 8
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
