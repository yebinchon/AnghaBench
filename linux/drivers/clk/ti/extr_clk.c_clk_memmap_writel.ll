; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk.c_clk_memmap_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk.c_clk_memmap_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_iomap = type { i64, i64 }
%struct.clk_omap_reg = type { i64, i64, i64 }

@clk_memmaps = common dso_local global %struct.clk_iomap** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clk_omap_reg*)* @clk_memmap_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_memmap_writel(i32 %0, %struct.clk_omap_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_omap_reg*, align 8
  %5 = alloca %struct.clk_iomap*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clk_omap_reg* %1, %struct.clk_omap_reg** %4, align 8
  %6 = load %struct.clk_iomap**, %struct.clk_iomap*** @clk_memmaps, align 8
  %7 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %4, align 8
  %8 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.clk_iomap*, %struct.clk_iomap** %6, i64 %9
  %11 = load %struct.clk_iomap*, %struct.clk_iomap** %10, align 8
  store %struct.clk_iomap* %11, %struct.clk_iomap** %5, align 8
  %12 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %4, align 8
  %13 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %4, align 8
  %19 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @writel_relaxed(i32 %17, i64 %20)
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.clk_iomap*, %struct.clk_iomap** %5, align 8
  %24 = getelementptr inbounds %struct.clk_iomap, %struct.clk_iomap* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.clk_iomap*, %struct.clk_iomap** %5, align 8
  %29 = getelementptr inbounds %struct.clk_iomap, %struct.clk_iomap* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %4, align 8
  %32 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @regmap_write(i64 %30, i64 %33, i32 %34)
  br label %46

36:                                               ; preds = %22
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.clk_iomap*, %struct.clk_iomap** %5, align 8
  %39 = getelementptr inbounds %struct.clk_iomap, %struct.clk_iomap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %4, align 8
  %42 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @writel_relaxed(i32 %37, i64 %44)
  br label %46

46:                                               ; preds = %36, %27
  br label %47

47:                                               ; preds = %46, %16
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @regmap_write(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
