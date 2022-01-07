; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_register_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_register_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pistachio_clk_provider = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.clk** }
%struct.clk = type { i32 }
%struct.pistachio_gate = type { i64, i32, i64, i32, i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pistachio_clk_register_gate(%struct.pistachio_clk_provider* %0, %struct.pistachio_gate* %1, i32 %2) #0 {
  %4 = alloca %struct.pistachio_clk_provider*, align 8
  %5 = alloca %struct.pistachio_gate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.pistachio_clk_provider* %0, %struct.pistachio_clk_provider** %4, align 8
  store %struct.pistachio_gate* %1, %struct.pistachio_gate** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %56, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = load %struct.pistachio_gate*, %struct.pistachio_gate** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %14, i64 %16
  %18 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pistachio_gate*, %struct.pistachio_gate** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %20, i64 %22
  %24 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %27 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %4, align 8
  %28 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pistachio_gate*, %struct.pistachio_gate** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %30, i64 %32
  %34 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %29, %35
  %37 = load %struct.pistachio_gate*, %struct.pistachio_gate** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %37, i64 %39
  %41 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.clk* @clk_register_gate(i32* null, i32 %19, i32 %25, i32 %26, i64 %36, i32 %42, i32 0, i32* null)
  store %struct.clk* %43, %struct.clk** %7, align 8
  %44 = load %struct.clk*, %struct.clk** %7, align 8
  %45 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %4, align 8
  %46 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.clk**, %struct.clk*** %47, align 8
  %49 = load %struct.pistachio_gate*, %struct.pistachio_gate** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %49, i64 %51
  %53 = getelementptr inbounds %struct.pistachio_gate, %struct.pistachio_gate* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.clk*, %struct.clk** %48, i64 %54
  store %struct.clk* %44, %struct.clk** %55, align 8
  br label %56

56:                                               ; preds = %13
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %9

59:                                               ; preds = %9
  ret void
}

declare dso_local %struct.clk* @clk_register_gate(i32*, i32, i32, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
