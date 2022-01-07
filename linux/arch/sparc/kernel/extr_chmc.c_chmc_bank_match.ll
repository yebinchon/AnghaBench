; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_chmc_bank_match.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_chmc_bank_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmc_bank_info = type { i64, i64, i64, i64, i64 }

@PA_UPPER_BITS = common dso_local global i64 0, align 8
@PA_UPPER_BITS_SHIFT = common dso_local global i64 0, align 8
@PA_LOWER_BITS = common dso_local global i64 0, align 8
@PA_LOWER_BITS_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chmc_bank_info*, i64)* @chmc_bank_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chmc_bank_match(%struct.chmc_bank_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chmc_bank_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.chmc_bank_info* %0, %struct.chmc_bank_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @PA_UPPER_BITS, align 8
  %10 = and i64 %8, %9
  %11 = load i64, i64* @PA_UPPER_BITS_SHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PA_LOWER_BITS, align 8
  %15 = and i64 %13, %14
  %16 = load i64, i64* @PA_LOWER_BITS_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.chmc_bank_info*, %struct.chmc_bank_info** %4, align 8
  %19 = getelementptr inbounds %struct.chmc_bank_info, %struct.chmc_bank_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

23:                                               ; preds = %2
  %24 = load %struct.chmc_bank_info*, %struct.chmc_bank_info** %4, align 8
  %25 = getelementptr inbounds %struct.chmc_bank_info, %struct.chmc_bank_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = xor i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = xor i64 %29, -1
  store i64 %30, i64* %6, align 8
  %31 = load %struct.chmc_bank_info*, %struct.chmc_bank_info** %4, align 8
  %32 = getelementptr inbounds %struct.chmc_bank_info, %struct.chmc_bank_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = xor i64 %36, -1
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %60

41:                                               ; preds = %23
  %42 = load %struct.chmc_bank_info*, %struct.chmc_bank_info** %4, align 8
  %43 = getelementptr inbounds %struct.chmc_bank_info, %struct.chmc_bank_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = xor i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = xor i64 %47, -1
  store i64 %48, i64* %7, align 8
  %49 = load %struct.chmc_bank_info*, %struct.chmc_bank_info** %4, align 8
  %50 = getelementptr inbounds %struct.chmc_bank_info, %struct.chmc_bank_info* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = xor i64 %54, -1
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %60

59:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %40, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
