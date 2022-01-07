; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa3xx.c_clk_pxa3xx_cpll_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa3xx.c_clk_pxa3xx_cpll_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@ACSR = common dso_local global i64 0, align 8
@ACCR_XN_MASK = common dso_local global i64 0, align 8
@ACCR_XL_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"RJK: parent_rate=%lu, xl=%u, xn=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pxa3xx_cpll_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pxa3xx_cpll_get_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* @ACSR, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @ACCR_XN_MASK, align 8
  %13 = and i64 %11, %12
  %14 = lshr i64 %13, 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ACCR_XL_MASK, align 8
  %18 = and i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = call i32 asm sideeffect "mrc\09p14, 0, $0, c6, c0, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 %30, %32
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %33, %35
  br label %42

37:                                               ; preds = %2
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %38, %40
  br label %42

42:                                               ; preds = %37, %29
  %43 = phi i64 [ %36, %29 ], [ %41, %37 ]
  ret i64 %43
}

declare dso_local i32 @pr_info(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 599}
