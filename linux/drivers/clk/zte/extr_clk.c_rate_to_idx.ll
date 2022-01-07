; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_rate_to_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_rate_to_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_zx_pll = type { i32, %struct.zx_pll_config* }
%struct.zx_pll_config = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_zx_pll*, i64)* @rate_to_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_to_idx(%struct.clk_zx_pll* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_zx_pll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zx_pll_config*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_zx_pll* %0, %struct.clk_zx_pll** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %4, align 8
  %9 = getelementptr inbounds %struct.clk_zx_pll, %struct.clk_zx_pll* %8, i32 0, i32 1
  %10 = load %struct.zx_pll_config*, %struct.zx_pll_config** %9, align 8
  store %struct.zx_pll_config* %10, %struct.zx_pll_config** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %4, align 8
  %14 = getelementptr inbounds %struct.clk_zx_pll, %struct.clk_zx_pll* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = load %struct.zx_pll_config*, %struct.zx_pll_config** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.zx_pll_config, %struct.zx_pll_config* %18, i64 %20
  %22 = getelementptr inbounds %struct.zx_pll_config, %struct.zx_pll_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 1
  br label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %17
  %36 = load %struct.zx_pll_config*, %struct.zx_pll_config** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.zx_pll_config, %struct.zx_pll_config* %36, i64 %38
  %40 = getelementptr inbounds %struct.zx_pll_config, %struct.zx_pll_config* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %11

50:                                               ; preds = %11
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %44, %33
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
