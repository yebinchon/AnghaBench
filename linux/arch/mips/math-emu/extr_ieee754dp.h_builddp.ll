; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754dp.h_builddp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754dp.h_builddp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754dp = type { i32 }

@DP_EMIN = common dso_local global i32 0, align 4
@DP_EBIAS = common dso_local global i32 0, align 4
@DP_EMAX = common dso_local global i32 0, align 4
@DP_FBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @builddp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builddp(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.ieee754dp, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 1
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i1 [ true, %3 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DP_EMIN, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* @DP_EBIAS, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DP_EMAX, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @DP_EBIAS, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp sle i32 %24, %28
  br label %30

30:                                               ; preds = %23, %13
  %31 = phi i1 [ false, %13 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DP_FBITS, align 4
  %36 = ashr i32 %34, %35
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = bitcast %union.ieee754dp* %4 to i32*
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = bitcast %union.ieee754dp* %4 to i32*
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = bitcast %union.ieee754dp* %4 to i32*
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
