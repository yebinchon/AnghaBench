; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__lookup_sddiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__lookup_sddiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw_omap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw_omap*, i32*, i64, i32)* @_lookup_sddiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_lookup_sddiv(%struct.clk_hw_omap* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.clk_hw_omap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %5, align 8
  %14 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %13, i32 0, i32 0
  %15 = call i32 @clk_hw_get_parent(i32* %14)
  %16 = call i64 @clk_hw_get_rate(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = udiv i64 %17, 100000
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = mul i64 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 250, %22
  %24 = sext i32 %23 to i64
  %25 = urem i64 %21, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = mul i64 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 250, %30
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %29, %32
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = urem i64 %34, 10
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i64, i64* %10, align 8
  %38 = udiv i64 %37, 10
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %4
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* %10, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  ret void
}

declare dso_local i64 @clk_hw_get_rate(i32) #1

declare dso_local i32 @clk_hw_get_parent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
