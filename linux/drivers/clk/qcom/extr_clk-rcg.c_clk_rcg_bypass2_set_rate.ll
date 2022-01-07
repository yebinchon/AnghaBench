; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_bypass2_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_bypass2_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rcg = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.freq_tbl = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_rcg_bypass2_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg_bypass2_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_rcg*, align 8
  %9 = alloca %struct.freq_tbl, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %16 = call %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw* %15)
  store %struct.clk_rcg* %16, %struct.clk_rcg** %8, align 8
  %17 = bitcast %struct.freq_tbl* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %21 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %25 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_read(i32 %23, i32 %26, i64* %10)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %4, align 4
  br label %79

32:                                               ; preds = %3
  %33 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %34 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %33, i32 0, i32 0
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @ns_to_src(%struct.TYPE_6__* %34, i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %38 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %37, i32 0, i32 1
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @ns_to_pre_div(i32* %38, i64 %39)
  %41 = add nsw i64 %40, 1
  %42 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %73, %32
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %50 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %48, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  %60 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %61 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %71 = call i32 @__clk_rcg_set_rate(%struct.clk_rcg* %70, %struct.freq_tbl* %9)
  store i32 %71, i32* %4, align 4
  br label %79

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %43

76:                                               ; preds = %43
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %59, %30
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i64 @ns_to_src(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @ns_to_pre_div(i32*, i64) #1

declare dso_local i32 @__clk_rcg_set_rate(%struct.clk_rcg*, %struct.freq_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
