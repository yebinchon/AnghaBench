; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_register_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_register_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pistachio_clk_provider = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.clk** }
%struct.clk = type { i32 }
%struct.pistachio_mux = type { i64, i32, i32, i64, i32, i32 }

@CLK_SET_RATE_NO_REPARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pistachio_clk_register_mux(%struct.pistachio_clk_provider* %0, %struct.pistachio_mux* %1, i32 %2) #0 {
  %4 = alloca %struct.pistachio_clk_provider*, align 8
  %5 = alloca %struct.pistachio_mux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.pistachio_clk_provider* %0, %struct.pistachio_clk_provider** %4, align 8
  store %struct.pistachio_mux* %1, %struct.pistachio_mux** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %69, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %72

13:                                               ; preds = %9
  %14 = load %struct.pistachio_mux*, %struct.pistachio_mux** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %14, i64 %16
  %18 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pistachio_mux*, %struct.pistachio_mux** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %20, i64 %22
  %24 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pistachio_mux*, %struct.pistachio_mux** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %26, i64 %28
  %30 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CLK_SET_RATE_NO_REPARENT, align 4
  %33 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %4, align 8
  %34 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pistachio_mux*, %struct.pistachio_mux** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %36, i64 %38
  %40 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %35, %41
  %43 = load %struct.pistachio_mux*, %struct.pistachio_mux** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %43, i64 %45
  %47 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pistachio_mux*, %struct.pistachio_mux** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %49, i64 %51
  %53 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @get_count_order(i32 %54)
  %56 = call %struct.clk* @clk_register_mux(i32* null, i32 %19, i32 %25, i32 %31, i32 %32, i64 %42, i32 %48, i32 %55, i32 0, i32* null)
  store %struct.clk* %56, %struct.clk** %7, align 8
  %57 = load %struct.clk*, %struct.clk** %7, align 8
  %58 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %4, align 8
  %59 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.clk**, %struct.clk*** %60, align 8
  %62 = load %struct.pistachio_mux*, %struct.pistachio_mux** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %62, i64 %64
  %66 = getelementptr inbounds %struct.pistachio_mux, %struct.pistachio_mux* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.clk*, %struct.clk** %61, i64 %67
  store %struct.clk* %57, %struct.clk** %68, align 8
  br label %69

69:                                               ; preds = %13
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %9

72:                                               ; preds = %9
  ret void
}

declare dso_local %struct.clk* @clk_register_mux(i32*, i32, i32, i32, i32, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @get_count_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
