; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-cpumux.c_mtk_clk_register_cpumux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-cpumux.c_mtk_clk_register_cpumux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.mtk_composite = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap = type { i32 }
%struct.mtk_clk_cpumux = type { %struct.TYPE_2__, %struct.regmap*, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_cpumux_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.mtk_composite*, %struct.regmap*)* @mtk_clk_register_cpumux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @mtk_clk_register_cpumux(%struct.mtk_composite* %0, %struct.regmap* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.mtk_composite*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.mtk_clk_cpumux*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.clk_init_data, align 8
  store %struct.mtk_composite* %0, %struct.mtk_composite** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mtk_clk_cpumux* @kzalloc(i32 32, i32 %9)
  store %struct.mtk_clk_cpumux* %10, %struct.mtk_clk_cpumux** %6, align 8
  %11 = load %struct.mtk_clk_cpumux*, %struct.mtk_clk_cpumux** %6, align 8
  %12 = icmp ne %struct.mtk_clk_cpumux* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.clk* @ERR_PTR(i32 %15)
  store %struct.clk* %16, %struct.clk** %3, align 8
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.mtk_composite*, %struct.mtk_composite** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 3
  store i32* @clk_cpumux_ops, i32** %22, align 8
  %23 = load %struct.mtk_composite*, %struct.mtk_composite** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load %struct.mtk_composite*, %struct.mtk_composite** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.mtk_composite*, %struct.mtk_composite** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.mtk_composite*, %struct.mtk_composite** %4, align 8
  %36 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mtk_clk_cpumux*, %struct.mtk_clk_cpumux** %6, align 8
  %39 = getelementptr inbounds %struct.mtk_clk_cpumux, %struct.mtk_clk_cpumux* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mtk_composite*, %struct.mtk_composite** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mtk_clk_cpumux*, %struct.mtk_clk_cpumux** %6, align 8
  %44 = getelementptr inbounds %struct.mtk_clk_cpumux, %struct.mtk_clk_cpumux* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mtk_composite*, %struct.mtk_composite** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @BIT(i32 %47)
  %49 = sub nsw i64 %48, 1
  %50 = load %struct.mtk_clk_cpumux*, %struct.mtk_clk_cpumux** %6, align 8
  %51 = getelementptr inbounds %struct.mtk_clk_cpumux, %struct.mtk_clk_cpumux* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.regmap*, %struct.regmap** %5, align 8
  %53 = load %struct.mtk_clk_cpumux*, %struct.mtk_clk_cpumux** %6, align 8
  %54 = getelementptr inbounds %struct.mtk_clk_cpumux, %struct.mtk_clk_cpumux* %53, i32 0, i32 1
  store %struct.regmap* %52, %struct.regmap** %54, align 8
  %55 = load %struct.mtk_clk_cpumux*, %struct.mtk_clk_cpumux** %6, align 8
  %56 = getelementptr inbounds %struct.mtk_clk_cpumux, %struct.mtk_clk_cpumux* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.clk_init_data* %8, %struct.clk_init_data** %57, align 8
  %58 = load %struct.mtk_clk_cpumux*, %struct.mtk_clk_cpumux** %6, align 8
  %59 = getelementptr inbounds %struct.mtk_clk_cpumux, %struct.mtk_clk_cpumux* %58, i32 0, i32 0
  %60 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_2__* %59)
  store %struct.clk* %60, %struct.clk** %7, align 8
  %61 = load %struct.clk*, %struct.clk** %7, align 8
  %62 = call i64 @IS_ERR(%struct.clk* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %17
  %65 = load %struct.mtk_clk_cpumux*, %struct.mtk_clk_cpumux** %6, align 8
  %66 = call i32 @kfree(%struct.mtk_clk_cpumux* %65)
  br label %67

67:                                               ; preds = %64, %17
  %68 = load %struct.clk*, %struct.clk** %7, align 8
  store %struct.clk* %68, %struct.clk** %3, align 8
  br label %69

69:                                               ; preds = %67, %13
  %70 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %70
}

declare dso_local %struct.mtk_clk_cpumux* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.mtk_clk_cpumux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
