; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_gate.c__register_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_gate.c__register_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_omap_reg = type { i32 }
%struct.clk_ops = type { i32 }
%struct.clk_hw_omap_ops = type { i32 }
%struct.clk_init_data = type { i8*, i8**, i32, i64, %struct.clk_ops*, i32* }
%struct.clk_hw_omap = type { %struct.TYPE_2__, i8*, %struct.clk_hw_omap_ops*, i8*, i32 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i8*, i8*, i64, %struct.clk_omap_reg*, i8*, i8*, %struct.clk_ops*, %struct.clk_hw_omap_ops*)* @_register_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @_register_gate(%struct.device* %0, i8* %1, i8* %2, i64 %3, %struct.clk_omap_reg* %4, i8* %5, i8* %6, %struct.clk_ops* %7, %struct.clk_hw_omap_ops* %8) #0 {
  %10 = alloca %struct.clk*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.clk_omap_reg*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.clk_ops*, align 8
  %19 = alloca %struct.clk_hw_omap_ops*, align 8
  %20 = alloca %struct.clk_init_data, align 8
  %21 = alloca %struct.clk_hw_omap*, align 8
  %22 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store %struct.clk_omap_reg* %4, %struct.clk_omap_reg** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store %struct.clk_ops* %7, %struct.clk_ops** %18, align 8
  store %struct.clk_hw_omap_ops* %8, %struct.clk_hw_omap_ops** %19, align 8
  %23 = bitcast %struct.clk_init_data* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 48, i1 false)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.clk_hw_omap* @kzalloc(i32 40, i32 %24)
  store %struct.clk_hw_omap* %25, %struct.clk_hw_omap** %21, align 8
  %26 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %21, align 8
  %27 = icmp ne %struct.clk_hw_omap* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %9
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.clk* @ERR_PTR(i32 %30)
  store %struct.clk* %31, %struct.clk** %10, align 8
  br label %69

32:                                               ; preds = %9
  %33 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %21, align 8
  %34 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.clk_init_data* %20, %struct.clk_init_data** %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %20, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %20, i32 0, i32 4
  store %struct.clk_ops* %38, %struct.clk_ops** %39, align 8
  %40 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %21, align 8
  %41 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %40, i32 0, i32 4
  %42 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %15, align 8
  %43 = call i32 @memcpy(i32* %41, %struct.clk_omap_reg* %42, i32 4)
  %44 = load i8*, i8** %16, align 8
  %45 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %21, align 8
  %46 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.clk_hw_omap_ops*, %struct.clk_hw_omap_ops** %19, align 8
  %48 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %21, align 8
  %49 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %48, i32 0, i32 2
  store %struct.clk_hw_omap_ops* %47, %struct.clk_hw_omap_ops** %49, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %21, align 8
  %52 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %20, i32 0, i32 1
  store i8** %13, i8*** %53, align 8
  %54 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %20, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %20, i32 0, i32 3
  store i64 %55, i64* %56, align 8
  %57 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %21, align 8
  %58 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %57, i32 0, i32 0
  %59 = load i8*, i8** %12, align 8
  %60 = call %struct.clk* @ti_clk_register_omap_hw(i32* null, %struct.TYPE_2__* %58, i8* %59)
  store %struct.clk* %60, %struct.clk** %22, align 8
  %61 = load %struct.clk*, %struct.clk** %22, align 8
  %62 = call i64 @IS_ERR(%struct.clk* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %32
  %65 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %21, align 8
  %66 = call i32 @kfree(%struct.clk_hw_omap* %65)
  br label %67

67:                                               ; preds = %64, %32
  %68 = load %struct.clk*, %struct.clk** %22, align 8
  store %struct.clk* %68, %struct.clk** %10, align 8
  br label %69

69:                                               ; preds = %67, %28
  %70 = load %struct.clk*, %struct.clk** %10, align 8
  ret %struct.clk* %70
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
