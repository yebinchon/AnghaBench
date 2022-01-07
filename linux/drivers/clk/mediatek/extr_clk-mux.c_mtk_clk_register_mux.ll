; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_register_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_register_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.mtk_mux = type { i32, i32, i32, i32, i32 }
%struct.regmap = type { i32 }
%struct.mtk_clk_mux = type { %struct.TYPE_2__, i32*, %struct.mtk_mux*, %struct.regmap* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @mtk_clk_register_mux(%struct.mtk_mux* %0, %struct.regmap* %1, i32* %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.mtk_mux*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mtk_clk_mux*, align 8
  %9 = alloca %struct.clk_init_data, align 4
  %10 = alloca %struct.clk*, align 8
  store %struct.mtk_mux* %0, %struct.mtk_mux** %5, align 8
  store %struct.regmap* %1, %struct.regmap** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mtk_clk_mux* @kzalloc(i32 32, i32 %11)
  store %struct.mtk_clk_mux* %12, %struct.mtk_clk_mux** %8, align 8
  %13 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %8, align 8
  %14 = icmp ne %struct.mtk_clk_mux* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.clk* @ERR_PTR(i32 %17)
  store %struct.clk* %18, %struct.clk** %4, align 8
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.mtk_mux*, %struct.mtk_mux** %5, align 8
  %21 = getelementptr inbounds %struct.mtk_mux, %struct.mtk_mux* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load %struct.mtk_mux*, %struct.mtk_mux** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_mux, %struct.mtk_mux* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.mtk_mux*, %struct.mtk_mux** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_mux, %struct.mtk_mux* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load %struct.mtk_mux*, %struct.mtk_mux** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_mux, %struct.mtk_mux* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.mtk_mux*, %struct.mtk_mux** %5, align 8
  %39 = getelementptr inbounds %struct.mtk_mux, %struct.mtk_mux* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.regmap*, %struct.regmap** %6, align 8
  %43 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %8, align 8
  %44 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %43, i32 0, i32 3
  store %struct.regmap* %42, %struct.regmap** %44, align 8
  %45 = load %struct.mtk_mux*, %struct.mtk_mux** %5, align 8
  %46 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %8, align 8
  %47 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %46, i32 0, i32 2
  store %struct.mtk_mux* %45, %struct.mtk_mux** %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %8, align 8
  %50 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %8, align 8
  %52 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %53, align 8
  %54 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %8, align 8
  %55 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %54, i32 0, i32 0
  %56 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_2__* %55)
  store %struct.clk* %56, %struct.clk** %10, align 8
  %57 = load %struct.clk*, %struct.clk** %10, align 8
  %58 = call i64 @IS_ERR(%struct.clk* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %19
  %61 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %8, align 8
  %62 = call i32 @kfree(%struct.mtk_clk_mux* %61)
  %63 = load %struct.clk*, %struct.clk** %10, align 8
  store %struct.clk* %63, %struct.clk** %4, align 8
  br label %66

64:                                               ; preds = %19
  %65 = load %struct.clk*, %struct.clk** %10, align 8
  store %struct.clk* %65, %struct.clk** %4, align 8
  br label %66

66:                                               ; preds = %64, %60, %15
  %67 = load %struct.clk*, %struct.clk** %4, align 8
  ret %struct.clk* %67
}

declare dso_local %struct.mtk_clk_mux* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.mtk_clk_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
