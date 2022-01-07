; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_clk_in_bound_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_clk_in_bound_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs2000_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FUNC_CFG1 = common dso_local global i32 0, align 4
@REFCLKDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs2000_priv*, i32)* @cs2000_clk_in_bound_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_clk_in_bound_rate(%struct.cs2000_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs2000_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cs2000_priv* %0, %struct.cs2000_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 32000000
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 56000000
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %32

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 16000000
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 28000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %31

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 8000000
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 14000000
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 2, i32* %6, align 4
  br label %30

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %31, %12
  %33 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %34 = load i32, i32* @FUNC_CFG1, align 4
  %35 = load i32, i32* @REFCLKDIV_MASK, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @REFCLKDIV(i32 %36)
  %38 = call i32 @cs2000_bset(%struct.cs2000_priv* %33, i32 %34, i32 %35, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @cs2000_bset(%struct.cs2000_priv*, i32, i32, i32) #1

declare dso_local i32 @REFCLKDIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
