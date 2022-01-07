; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_register_fixed_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_register_fixed_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pistachio_clk_provider = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.clk** }
%struct.clk = type { i32 }
%struct.pistachio_fixed_factor = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pistachio_clk_register_fixed_factor(%struct.pistachio_clk_provider* %0, %struct.pistachio_fixed_factor* %1, i32 %2) #0 {
  %4 = alloca %struct.pistachio_clk_provider*, align 8
  %5 = alloca %struct.pistachio_fixed_factor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.pistachio_clk_provider* %0, %struct.pistachio_clk_provider** %4, align 8
  store %struct.pistachio_fixed_factor* %1, %struct.pistachio_fixed_factor** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load %struct.pistachio_fixed_factor*, %struct.pistachio_fixed_factor** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pistachio_fixed_factor, %struct.pistachio_fixed_factor* %14, i64 %16
  %18 = getelementptr inbounds %struct.pistachio_fixed_factor, %struct.pistachio_fixed_factor* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pistachio_fixed_factor*, %struct.pistachio_fixed_factor** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pistachio_fixed_factor, %struct.pistachio_fixed_factor* %20, i64 %22
  %24 = getelementptr inbounds %struct.pistachio_fixed_factor, %struct.pistachio_fixed_factor* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pistachio_fixed_factor*, %struct.pistachio_fixed_factor** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pistachio_fixed_factor, %struct.pistachio_fixed_factor* %26, i64 %28
  %30 = getelementptr inbounds %struct.pistachio_fixed_factor, %struct.pistachio_fixed_factor* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.clk* @clk_register_fixed_factor(i32* null, i32 %19, i32 %25, i32 0, i32 1, i32 %31)
  store %struct.clk* %32, %struct.clk** %7, align 8
  %33 = load %struct.clk*, %struct.clk** %7, align 8
  %34 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %4, align 8
  %35 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.clk**, %struct.clk*** %36, align 8
  %38 = load %struct.pistachio_fixed_factor*, %struct.pistachio_fixed_factor** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pistachio_fixed_factor, %struct.pistachio_fixed_factor* %38, i64 %40
  %42 = getelementptr inbounds %struct.pistachio_fixed_factor, %struct.pistachio_fixed_factor* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.clk*, %struct.clk** %37, i64 %43
  store %struct.clk* %33, %struct.clk** %44, align 8
  br label %45

45:                                               ; preds = %13
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %9

48:                                               ; preds = %9
  ret void
}

declare dso_local %struct.clk* @clk_register_fixed_factor(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
