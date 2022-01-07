; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_ppc970-pmu.c_p970_disable_pmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_ppc970-pmu.c_p970_disable_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMCR0_PMC1SEL_SH = common dso_local global i32 0, align 4
@MMCR1_PMC3SEL_SH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*)* @p970_disable_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p970_disable_pmc(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ule i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @MMCR0_PMC1SEL_SH, align 4
  %11 = load i32, i32* %3, align 4
  %12 = mul i32 7, %11
  %13 = sub i32 %10, %12
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @MMCR1_PMC3SEL_SH, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sub i32 %16, 2
  %18 = mul i32 5, %17
  %19 = sub i32 %15, %18
  store i32 %19, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %14, %9
  %21 = load i64*, i64** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 31, %27
  %29 = xor i64 %28, -1
  %30 = and i64 %25, %29
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 8, %32
  %34 = or i64 %30, %33
  %35 = load i64*, i64** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 %34, i64* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
