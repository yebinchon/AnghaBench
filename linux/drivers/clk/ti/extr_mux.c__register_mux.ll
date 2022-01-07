; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c__register_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c__register_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_omap_reg = type { i32 }
%struct.clk_omap_mux = type { %struct.TYPE_2__, i32*, i8*, i32, i32, i8*, i32 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i8*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ti_clk_mux_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i8*, i8**, i8*, i64, %struct.clk_omap_reg*, i8*, i32, i32, i8*, i32*)* @_register_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @_register_mux(%struct.device* %0, i8* %1, i8** %2, i8* %3, i64 %4, %struct.clk_omap_reg* %5, i8* %6, i32 %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca %struct.clk*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.clk_omap_reg*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.clk_omap_mux*, align 8
  %25 = alloca %struct.clk*, align 8
  %26 = alloca %struct.clk_init_data, align 8
  store %struct.device* %0, %struct.device** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store %struct.clk_omap_reg* %5, %struct.clk_omap_reg** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.clk_omap_mux* @kzalloc(i32 48, i32 %27)
  store %struct.clk_omap_mux* %28, %struct.clk_omap_mux** %24, align 8
  %29 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %30 = icmp ne %struct.clk_omap_mux* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %11
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.clk* @ERR_PTR(i32 %33)
  store %struct.clk* %34, %struct.clk** %12, align 8
  br label %80

35:                                               ; preds = %11
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %26, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %26, i32 0, i32 4
  store i32* @ti_clk_mux_ops, i32** %38, align 8
  %39 = load i64, i64* %17, align 8
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %26, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load i8**, i8*** %15, align 8
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %26, i32 0, i32 2
  store i8** %41, i8*** %42, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %26, i32 0, i32 3
  store i8* %43, i8** %44, align 8
  %45 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %46 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %45, i32 0, i32 6
  %47 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %18, align 8
  %48 = call i32 @memcpy(i32* %46, %struct.clk_omap_reg* %47, i32 4)
  %49 = load i8*, i8** %19, align 8
  %50 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %51 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %20, align 4
  %53 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %54 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %21, align 4
  %56 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %57 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %22, align 8
  %59 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %60 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %23, align 8
  %62 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %63 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %65 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store %struct.clk_init_data* %26, %struct.clk_init_data** %66, align 8
  %67 = load %struct.device*, %struct.device** %13, align 8
  %68 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %69 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %68, i32 0, i32 0
  %70 = load i8*, i8** %14, align 8
  %71 = call %struct.clk* @ti_clk_register(%struct.device* %67, %struct.TYPE_2__* %69, i8* %70)
  store %struct.clk* %71, %struct.clk** %25, align 8
  %72 = load %struct.clk*, %struct.clk** %25, align 8
  %73 = call i64 @IS_ERR(%struct.clk* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %35
  %76 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %24, align 8
  %77 = call i32 @kfree(%struct.clk_omap_mux* %76)
  br label %78

78:                                               ; preds = %75, %35
  %79 = load %struct.clk*, %struct.clk** %25, align 8
  store %struct.clk* %79, %struct.clk** %12, align 8
  br label %80

80:                                               ; preds = %78, %31
  %81 = load %struct.clk*, %struct.clk** %12, align 8
  ret %struct.clk* %81
}

declare dso_local %struct.clk_omap_mux* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.clk_omap_reg*, i32) #1

declare dso_local %struct.clk* @ti_clk_register(%struct.device*, %struct.TYPE_2__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.clk_omap_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
