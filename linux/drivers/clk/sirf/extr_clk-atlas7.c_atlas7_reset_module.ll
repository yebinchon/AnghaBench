; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_atlas7_reset_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_atlas7_reset_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atlas7_reset_desc = type { i32, i32, i32, i64, i64 }
%struct.reset_controller_dev = type { i32 }

@atlas7_reset_unit = common dso_local global %struct.atlas7_reset_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @atlas7_reset_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_reset_module(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.atlas7_reset_desc*, align 8
  %6 = alloca i64, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** @atlas7_reset_unit, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %7, i64 %8
  store %struct.atlas7_reset_desc* %9, %struct.atlas7_reset_desc** %5, align 8
  %10 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %11 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %16 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 8
  %19 = call i32 @clkc_readl(i64 %18)
  %20 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %21 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 1, %22
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %2
  %27 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %28 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %32 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = call i32 @clkc_writel(i32 %30, i64 %34)
  %36 = call i32 @udelay(i32 2)
  %37 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %38 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  %41 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %42 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 4
  %45 = call i32 @clkc_writel(i32 %40, i64 %44)
  %46 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %47 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %51 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @clkc_writel(i32 %49, i64 %52)
  %54 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %55 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %59 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @clkc_writel(i32 %57, i64 %60)
  br label %98

62:                                               ; preds = %2
  %63 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %64 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %68 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 4
  %71 = call i32 @clkc_writel(i32 %66, i64 %70)
  %72 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %73 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 1, %74
  %76 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %77 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @clkc_writel(i32 %75, i64 %78)
  %80 = call i32 @udelay(i32 2)
  %81 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %82 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 1, %83
  %85 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %86 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 4
  %89 = call i32 @clkc_writel(i32 %84, i64 %88)
  %90 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %91 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 1, %92
  %94 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %95 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @clkc_writel(i32 %93, i64 %96)
  br label %98

98:                                               ; preds = %62, %26
  %99 = load %struct.atlas7_reset_desc*, %struct.atlas7_reset_desc** %5, align 8
  %100 = getelementptr inbounds %struct.atlas7_reset_desc, %struct.atlas7_reset_desc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32 %101, i64 %102)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @clkc_readl(i64) #1

declare dso_local i32 @clkc_writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
