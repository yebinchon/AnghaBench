; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_interface.c__register_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_interface.c__register_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_omap_reg = type { i32 }
%struct.clk_hw_omap_ops = type { i32 }
%struct.clk_init_data = type { i8*, i32, i8**, i64, i32*, i32* }
%struct.clk_hw_omap = type { %struct.TYPE_2__, i32, i32, %struct.clk_hw_omap_ops* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ti_interface_clk_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i8*, i8*, %struct.clk_omap_reg*, i32, %struct.clk_hw_omap_ops*)* @_register_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @_register_interface(%struct.device* %0, i8* %1, i8* %2, %struct.clk_omap_reg* %3, i32 %4, %struct.clk_hw_omap_ops* %5) #0 {
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.clk_omap_reg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.clk_hw_omap_ops*, align 8
  %14 = alloca %struct.clk_init_data, align 8
  %15 = alloca %struct.clk_hw_omap*, align 8
  %16 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.clk_omap_reg* %3, %struct.clk_omap_reg** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.clk_hw_omap_ops* %5, %struct.clk_hw_omap_ops** %13, align 8
  %17 = bitcast %struct.clk_init_data* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 48, i1 false)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.clk_hw_omap* @kzalloc(i32 24, i32 %18)
  store %struct.clk_hw_omap* %19, %struct.clk_hw_omap** %15, align 8
  %20 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %15, align 8
  %21 = icmp ne %struct.clk_hw_omap* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.clk* @ERR_PTR(i32 %24)
  store %struct.clk* %25, %struct.clk** %7, align 8
  br label %58

26:                                               ; preds = %6
  %27 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %15, align 8
  %28 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.clk_init_data* %14, %struct.clk_init_data** %29, align 8
  %30 = load %struct.clk_hw_omap_ops*, %struct.clk_hw_omap_ops** %13, align 8
  %31 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %15, align 8
  %32 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %31, i32 0, i32 3
  store %struct.clk_hw_omap_ops* %30, %struct.clk_hw_omap_ops** %32, align 8
  %33 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %15, align 8
  %34 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %33, i32 0, i32 2
  %35 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %11, align 8
  %36 = call i32 @memcpy(i32* %34, %struct.clk_omap_reg* %35, i32 4)
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %15, align 8
  %39 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 4
  store i32* @ti_interface_clk_ops, i32** %42, align 8
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 1
  store i32 1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 2
  store i8** %10, i8*** %45, align 8
  %46 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %15, align 8
  %47 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %46, i32 0, i32 0
  %48 = load i8*, i8** %9, align 8
  %49 = call %struct.clk* @ti_clk_register_omap_hw(i32* null, %struct.TYPE_2__* %47, i8* %48)
  store %struct.clk* %49, %struct.clk** %16, align 8
  %50 = load %struct.clk*, %struct.clk** %16, align 8
  %51 = call i64 @IS_ERR(%struct.clk* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %26
  %54 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %15, align 8
  %55 = call i32 @kfree(%struct.clk_hw_omap* %54)
  br label %56

56:                                               ; preds = %53, %26
  %57 = load %struct.clk*, %struct.clk** %16, align 8
  store %struct.clk* %57, %struct.clk** %7, align 8
  br label %58

58:                                               ; preds = %56, %22
  %59 = load %struct.clk*, %struct.clk** %7, align 8
  ret %struct.clk* %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.clk_hw_omap* @kzalloc(i32, i32) #2

declare dso_local %struct.clk* @ERR_PTR(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.clk_omap_reg*, i32) #2

declare dso_local %struct.clk* @ti_clk_register_omap_hw(i32*, %struct.TYPE_2__*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i32 @kfree(%struct.clk_hw_omap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
