; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_clk_register_fixed_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_clk_register_fixed_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clock_topology = type { i32 }
%struct.zynqmp_pm_query_data = type { i32, i32, i32 }

@PAYLOAD_ARG_CNT = common dso_local global i32 0, align 4
@PM_QID_CLOCK_GET_FIXEDFACTOR_PARAMS = common dso_local global i32 0, align 4
@eemi_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @zynqmp_clk_register_fixed_factor(i8* %0, i32 %1, i8** %2, i32 %3, %struct.clock_topology* %4) #0 {
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clock_topology*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.clk_hw*, align 8
  %15 = alloca %struct.zynqmp_pm_query_data, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.clock_topology* %4, %struct.clock_topology** %11, align 8
  %21 = bitcast %struct.zynqmp_pm_query_data* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 12, i1 false)
  %22 = load i32, i32* @PAYLOAD_ARG_CNT, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = load i32, i32* @PM_QID_CLOCK_GET_FIXEDFACTOR_PARAMS, align 4
  %27 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %15, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %15, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eemi_ops, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i64, i32, i32*)*, i32 (i64, i32, i32*)** %31, align 8
  %33 = bitcast { i64, i32 }* %19 to i8*
  %34 = bitcast %struct.zynqmp_pm_query_data* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %32(i64 %36, i32 %38, i32* %25)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = load i32, i32* %18, align 4
  %44 = call %struct.clk_hw* @ERR_PTR(i32 %43)
  store %struct.clk_hw* %44, %struct.clk_hw** %6, align 8
  store i32 1, i32* %20, align 4
  br label %61

45:                                               ; preds = %5
  %46 = getelementptr inbounds i32, i32* %25, i64 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = getelementptr inbounds i32, i32* %25, i64 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %13, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i8**, i8*** %9, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.clock_topology*, %struct.clock_topology** %11, align 8
  %55 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call %struct.clk_hw* @clk_hw_register_fixed_factor(i32* null, i8* %50, i8* %53, i32 %56, i32 %57, i32 %58)
  store %struct.clk_hw* %59, %struct.clk_hw** %14, align 8
  %60 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  store %struct.clk_hw* %60, %struct.clk_hw** %6, align 8
  store i32 1, i32* %20, align 4
  br label %61

61:                                               ; preds = %45, %42
  %62 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  ret %struct.clk_hw* %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #3

declare dso_local %struct.clk_hw* @clk_hw_register_fixed_factor(i32*, i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
