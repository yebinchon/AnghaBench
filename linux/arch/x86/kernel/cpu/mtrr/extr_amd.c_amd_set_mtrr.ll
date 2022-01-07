; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_amd.c_amd_set_mtrr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_amd.c_amd_set_mtrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_K6_UWCCR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i32)* @amd_set_mtrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_set_mtrr(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i64], align 16
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @MSR_K6_UWCCR, align 4
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %12 = load i64, i64* %11, align 16
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @rdmsr(i32 %10, i64 %12, i64 %14)
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %20
  store i64 0, i64* %21, align 8
  br label %42

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 0, %23
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = sub nsw i32 15, %25
  %27 = zext i32 %26 to i64
  %28 = lshr i64 %24, %27
  %29 = and i64 %28, 131068
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 %30, %32
  %34 = or i64 %29, %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = or i64 %34, %37
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %40
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %22, %18
  %43 = call i32 (...) @wbinvd()
  %44 = load i32, i32* @MSR_K6_UWCCR, align 4
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %46 = load i64, i64* %45, align 16
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @wrmsr(i32 %44, i64 %46, i64 %48)
  ret void
}

declare dso_local i32 @rdmsr(i32, i64, i64) #1

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @wrmsr(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
