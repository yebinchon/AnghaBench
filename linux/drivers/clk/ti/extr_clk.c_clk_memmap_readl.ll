; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk.c_clk_memmap_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk.c_clk_memmap_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_iomap = type { i64, i64 }
%struct.clk_omap_reg = type { i64, i64, i64 }

@clk_memmaps = common dso_local global %struct.clk_iomap** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_omap_reg*)* @clk_memmap_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_memmap_readl(%struct.clk_omap_reg* %0) #0 {
  %2 = alloca %struct.clk_omap_reg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_iomap*, align 8
  store %struct.clk_omap_reg* %0, %struct.clk_omap_reg** %2, align 8
  %5 = load %struct.clk_iomap**, %struct.clk_iomap*** @clk_memmaps, align 8
  %6 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %2, align 8
  %7 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.clk_iomap*, %struct.clk_iomap** %5, i64 %8
  %10 = load %struct.clk_iomap*, %struct.clk_iomap** %9, align 8
  store %struct.clk_iomap* %10, %struct.clk_iomap** %4, align 8
  %11 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %2, align 8
  %12 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %2, align 8
  %17 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.clk_iomap*, %struct.clk_iomap** %4, align 8
  %22 = getelementptr inbounds %struct.clk_iomap, %struct.clk_iomap* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.clk_iomap*, %struct.clk_iomap** %4, align 8
  %27 = getelementptr inbounds %struct.clk_iomap, %struct.clk_iomap* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %2, align 8
  %30 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @regmap_read(i64 %28, i64 %31, i32* %3)
  br label %42

33:                                               ; preds = %20
  %34 = load %struct.clk_iomap*, %struct.clk_iomap** %4, align 8
  %35 = getelementptr inbounds %struct.clk_iomap, %struct.clk_iomap* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %2, align 8
  %38 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i32 @readl_relaxed(i64 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %25
  br label %43

43:                                               ; preds = %42, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @regmap_read(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
