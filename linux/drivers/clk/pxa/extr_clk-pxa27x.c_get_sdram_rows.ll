; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_get_sdram_rows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_get_sdram_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_sdram_rows.sdram_rows = internal global i32 0, align 4
@MDCNFG = common dso_local global i32 0, align 4
@MDCNFG_DE2 = common dso_local global i32 0, align 4
@MDCNFG_DE3 = common dso_local global i32 0, align 4
@MDCNFG_DE0 = common dso_local global i32 0, align 4
@MDCNFG_DE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_sdram_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sdram_rows() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @get_sdram_rows.sdram_rows, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @get_sdram_rows.sdram_rows, align 4
  store i32 %8, i32* %1, align 4
  br label %38

9:                                                ; preds = %0
  %10 = load i32, i32* @MDCNFG, align 4
  %11 = call i32 @readl_relaxed(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MDCNFG_DE2, align 4
  %14 = load i32, i32* @MDCNFG_DE3, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @MDCNFG_DRAC2(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %9
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MDCNFG_DE0, align 4
  %24 = load i32, i32* @MDCNFG_DE1, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @MDCNFG_DRAC0(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @max(i32 %32, i32 %33)
  %35 = add nsw i32 11, %34
  %36 = shl i32 1, %35
  store i32 %36, i32* @get_sdram_rows.sdram_rows, align 4
  %37 = load i32, i32* @get_sdram_rows.sdram_rows, align 4
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %31, %7
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @MDCNFG_DRAC2(i32) #1

declare dso_local i32 @MDCNFG_DRAC0(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
