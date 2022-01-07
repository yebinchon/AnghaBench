; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_ratio_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_ratio_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs2000_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEVICE_CFG1 = common dso_local global i32 0, align 4
@RSEL_MASK = common dso_local global i32 0, align 4
@DEVICE_CFG2 = common dso_local global i32 0, align 4
@AUTORMOD = common dso_local global i32 0, align 4
@LOCKCLK_MASK = common dso_local global i32 0, align 4
@FRACNSRC_MASK = common dso_local global i32 0, align 4
@FRACNSRC_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs2000_priv*, i32)* @cs2000_ratio_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_ratio_select(%struct.cs2000_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs2000_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cs2000_priv* %0, %struct.cs2000_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @CH_SIZE_ERR(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %15 = load i32, i32* @DEVICE_CFG1, align 4
  %16 = load i32, i32* @RSEL_MASK, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @RSEL(i32 %17)
  %19 = call i32 @cs2000_bset(%struct.cs2000_priv* %14, i32 %15, i32 %16, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %42

24:                                               ; preds = %13
  %25 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %26 = load i32, i32* @DEVICE_CFG2, align 4
  %27 = load i32, i32* @AUTORMOD, align 4
  %28 = load i32, i32* @LOCKCLK_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FRACNSRC_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @LOCKCLK(i32 %32)
  %34 = load i32, i32* @FRACNSRC_STATIC, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cs2000_bset(%struct.cs2000_priv* %25, i32 %26, i32 %31, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %22, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @CH_SIZE_ERR(i32) #1

declare dso_local i32 @cs2000_bset(%struct.cs2000_priv*, i32, i32, i32) #1

declare dso_local i32 @RSEL(i32) #1

declare dso_local i32 @LOCKCLK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
