; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pistachio_clk_register_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pistachio_clk_register_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pistachio_clk_provider = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.clk** }
%struct.clk = type { i32 }
%struct.pistachio_pll = type { i64, i32, i32, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pistachio_clk_register_pll(%struct.pistachio_clk_provider* %0, %struct.pistachio_pll* %1, i32 %2) #0 {
  %4 = alloca %struct.pistachio_clk_provider*, align 8
  %5 = alloca %struct.pistachio_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.pistachio_clk_provider* %0, %struct.pistachio_clk_provider** %4, align 8
  store %struct.pistachio_pll* %1, %struct.pistachio_pll** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %67, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %70

13:                                               ; preds = %9
  %14 = load %struct.pistachio_pll*, %struct.pistachio_pll** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %14, i64 %16
  %18 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pistachio_pll*, %struct.pistachio_pll** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %20, i64 %22
  %24 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %4, align 8
  %27 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pistachio_pll*, %struct.pistachio_pll** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %29, i64 %31
  %33 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %28, %34
  %36 = load %struct.pistachio_pll*, %struct.pistachio_pll** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %36, i64 %38
  %40 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pistachio_pll*, %struct.pistachio_pll** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %42, i64 %44
  %46 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pistachio_pll*, %struct.pistachio_pll** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %48, i64 %50
  %52 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.clk* @pll_register(i32 %19, i32 %25, i32 0, i64 %35, i32 %41, i32 %47, i32 %53)
  store %struct.clk* %54, %struct.clk** %7, align 8
  %55 = load %struct.clk*, %struct.clk** %7, align 8
  %56 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %4, align 8
  %57 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.clk**, %struct.clk*** %58, align 8
  %60 = load %struct.pistachio_pll*, %struct.pistachio_pll** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %60, i64 %62
  %64 = getelementptr inbounds %struct.pistachio_pll, %struct.pistachio_pll* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.clk*, %struct.clk** %59, i64 %65
  store %struct.clk* %55, %struct.clk** %66, align 8
  br label %67

67:                                               ; preds = %13
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %9

70:                                               ; preds = %9
  ret void
}

declare dso_local %struct.clk* @pll_register(i32, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
