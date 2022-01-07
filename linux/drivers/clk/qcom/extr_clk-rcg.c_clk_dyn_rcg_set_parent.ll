; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_dyn_rcg_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_dyn_rcg_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_dyn_rcg = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32*, %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.freq_tbl = type { i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_dyn_rcg_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_dyn_rcg_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_dyn_rcg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.freq_tbl, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.clk_dyn_rcg* @to_clk_dyn_rcg(%struct.clk_hw* %13)
  store %struct.clk_dyn_rcg* %14, %struct.clk_dyn_rcg** %5, align 8
  %15 = bitcast %struct.freq_tbl* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %17 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %27 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %37 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %41 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @regmap_read(i32 %39, i32 %42, i32* %8)
  %44 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @reg_to_bank(%struct.clk_dyn_rcg* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %48 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %52 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @regmap_read(i32 %50, i32 %57, i32* %6)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %2
  %62 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %63 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %67 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @regmap_read(i32 %65, i32 %72, i32* %7)
  %74 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %75 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @md_to_m(%struct.TYPE_9__* %79, i32 %80)
  %82 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %10, i32 0, i32 2
  store i32 %81, i32* %82, align 8
  %83 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %84 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = load i32, i32* %6, align 4
  %90 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %10, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ns_m_to_n(%struct.TYPE_9__* %88, i32 %89, i32 %91)
  %93 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %10, i32 0, i32 3
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %61, %2
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %99 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = load i32, i32* %6, align 4
  %105 = call i64 @ns_to_pre_div(%struct.TYPE_8__* %103, i32 %104)
  %106 = add nsw i64 %105, 1
  %107 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %10, i32 0, i32 1
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %97, %94
  %109 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %110 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %111 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @qcom_find_src_index(%struct.clk_hw* %109, i32 %117, i32 %118)
  %120 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %10, i32 0, i32 0
  store i32 %119, i32* %120, align 8
  %121 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %122 = call i32 @configure_bank(%struct.clk_dyn_rcg* %121, %struct.freq_tbl* %10)
  ret i32 %122
}

declare dso_local %struct.clk_dyn_rcg* @to_clk_dyn_rcg(%struct.clk_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @reg_to_bank(%struct.clk_dyn_rcg*, i32) #1

declare dso_local i32 @md_to_m(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ns_m_to_n(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @ns_to_pre_div(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @qcom_find_src_index(%struct.clk_hw*, i32, i32) #1

declare dso_local i32 @configure_bank(%struct.clk_dyn_rcg*, %struct.freq_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
