; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-gate.c_mtk_clk_register_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-gate.c_mtk_clk_register_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.regmap = type { i32 }
%struct.clk_ops = type { i32 }
%struct.device = type { i32 }
%struct.mtk_clk_gate = type { i32, i32, i32, %struct.TYPE_2__, i32, %struct.regmap* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, %struct.clk_ops* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @mtk_clk_register_gate(i8* %0, i8* %1, %struct.regmap* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.clk_ops* %7, i64 %8, %struct.device* %9) #0 {
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.regmap*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.clk_ops*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.device*, align 8
  %22 = alloca %struct.mtk_clk_gate*, align 8
  %23 = alloca %struct.clk*, align 8
  %24 = alloca %struct.clk_init_data, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store %struct.regmap* %2, %struct.regmap** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store %struct.clk_ops* %7, %struct.clk_ops** %19, align 8
  store i64 %8, i64* %20, align 8
  store %struct.device* %9, %struct.device** %21, align 8
  %25 = bitcast %struct.clk_init_data* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 40, i1 false)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mtk_clk_gate* @kzalloc(i32 40, i32 %26)
  store %struct.mtk_clk_gate* %27, %struct.mtk_clk_gate** %22, align 8
  %28 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %22, align 8
  %29 = icmp ne %struct.mtk_clk_gate* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %10
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.clk* @ERR_PTR(i32 %32)
  store %struct.clk* %33, %struct.clk** %11, align 8
  br label %85

34:                                               ; preds = %10
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %20, align 8
  %38 = load i64, i64* @CLK_SET_RATE_PARENT, align 8
  %39 = or i64 %37, %38
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %43
  %46 = phi i8** [ %13, %43 ], [ null, %44 ]
  %47 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 2
  store i8** %46, i8*** %47, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load %struct.clk_ops*, %struct.clk_ops** %19, align 8
  %54 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 4
  store %struct.clk_ops* %53, %struct.clk_ops** %54, align 8
  %55 = load %struct.regmap*, %struct.regmap** %14, align 8
  %56 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %22, align 8
  %57 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %56, i32 0, i32 5
  store %struct.regmap* %55, %struct.regmap** %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %22, align 8
  %60 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %22, align 8
  %63 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %22, align 8
  %66 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %22, align 8
  %69 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %22, align 8
  %71 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.clk_init_data* %24, %struct.clk_init_data** %72, align 8
  %73 = load %struct.device*, %struct.device** %21, align 8
  %74 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %22, align 8
  %75 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %74, i32 0, i32 3
  %76 = call %struct.clk* @clk_register(%struct.device* %73, %struct.TYPE_2__* %75)
  store %struct.clk* %76, %struct.clk** %23, align 8
  %77 = load %struct.clk*, %struct.clk** %23, align 8
  %78 = call i64 @IS_ERR(%struct.clk* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %45
  %81 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %22, align 8
  %82 = call i32 @kfree(%struct.mtk_clk_gate* %81)
  br label %83

83:                                               ; preds = %80, %45
  %84 = load %struct.clk*, %struct.clk** %23, align 8
  store %struct.clk* %84, %struct.clk** %11, align 8
  br label %85

85:                                               ; preds = %83, %30
  %86 = load %struct.clk*, %struct.clk** %11, align 8
  ret %struct.clk* %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mtk_clk_gate* @kzalloc(i32, i32) #2

declare dso_local %struct.clk* @ERR_PTR(i32) #2

declare dso_local %struct.clk* @clk_register(%struct.device*, %struct.TYPE_2__*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i32 @kfree(%struct.mtk_clk_gate*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
