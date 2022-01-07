; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_dove-divider.c_dove_get_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_dove-divider.c_dove_get_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dove_clk = type { i32, i32, i32*, i64 }

@DIV_CTRL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dove_clk*)* @dove_get_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dove_get_divider(%struct.dove_clk* %0) #0 {
  %2 = alloca %struct.dove_clk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dove_clk* %0, %struct.dove_clk** %2, align 8
  %5 = load %struct.dove_clk*, %struct.dove_clk** %2, align 8
  %6 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DIV_CTRL0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl_relaxed(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.dove_clk*, %struct.dove_clk** %2, align 8
  %12 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = lshr i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.dove_clk*, %struct.dove_clk** %2, align 8
  %18 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 -1, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %16, %21
  store i32 %22, i32* %3, align 4
  %23 = load %struct.dove_clk*, %struct.dove_clk** %2, align 8
  %24 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.dove_clk*, %struct.dove_clk** %2, align 8
  %29 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
