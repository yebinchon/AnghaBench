; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.cs2000_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @cs2000_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.cs2000_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.cs2000_priv* @hw_to_priv(%struct.clk_hw* %6)
  store %struct.cs2000_priv* %7, %struct.cs2000_priv** %4, align 8
  %8 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %9 = call i32 @cs2000_enable_dev_config(%struct.cs2000_priv* %8, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %16 = call i32 @cs2000_clk_out_enable(%struct.cs2000_priv* %15, i32 1)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %23 = call i32 @cs2000_wait_pll_lock(%struct.cs2000_priv* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %26, %19, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.cs2000_priv* @hw_to_priv(%struct.clk_hw*) #1

declare dso_local i32 @cs2000_enable_dev_config(%struct.cs2000_priv*, i32) #1

declare dso_local i32 @cs2000_clk_out_enable(%struct.cs2000_priv*, i32) #1

declare dso_local i32 @cs2000_wait_pll_lock(%struct.cs2000_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
