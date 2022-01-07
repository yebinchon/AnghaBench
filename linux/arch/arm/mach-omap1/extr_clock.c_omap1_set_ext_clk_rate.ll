; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_set_ext_clk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_set_ext_clk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap1_set_ext_clk_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @calc_ext_dsor(i64 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = udiv i32 96000000, %9
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 8
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sub i32 %16, 8
  %18 = udiv i32 %17, 2
  %19 = add i32 %18, 6
  %20 = shl i32 %19, 2
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = sub i32 %22, 2
  %24 = shl i32 %23, 2
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.clk*, %struct.clk** %3, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__raw_readw(i32 %28)
  %30 = and i32 %29, -254
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.clk*, %struct.clk** %3, align 8
  %35 = getelementptr inbounds %struct.clk, %struct.clk* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__raw_writew(i32 %33, i32 %36)
  ret i32 0
}

declare dso_local i32 @calc_ext_dsor(i64) #1

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
