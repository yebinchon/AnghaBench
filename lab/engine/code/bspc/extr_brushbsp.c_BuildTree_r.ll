; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_BuildTree_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_BuildTree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__**, i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1
@numrecurse = common dso_local global i32 0, align 4
@numthreads = common dso_local global i32 0, align 4
@c_nodememory = common dso_local global i32 0, align 4
@c_brushmemory = common dso_local global i32 0, align 4
@c_peak_totalbspmemory = common dso_local global i32 0, align 4
@c_nodes = common dso_local global i32 0, align 4
@drawflag = common dso_local global i64 0, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@c_solidleafnodes = common dso_local global i32 0, align 4
@create_aas = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @BuildTree_r(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32*], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @numrecurse, align 4
  %12 = call i32 @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @numrecurse, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @numrecurse, align 4
  %15 = load i32, i32* @numthreads, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = call i32 (...) @WindingMemory()
  %19 = load i32, i32* @c_nodememory, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @c_brushmemory, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @c_peak_totalbspmemory, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* @c_peak_totalbspmemory, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i32, i32* @c_nodes, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @c_nodes, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i64, i64* @drawflag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = call i32 @DrawBrushList(i32* %35, %struct.TYPE_12__* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call %struct.TYPE_11__* @SelectSplitSide(i32* %39, %struct.TYPE_12__* %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %7, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %85, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @LeafNode(%struct.TYPE_12__* %49, i32* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CONTENTS_SOLID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* @c_solidleafnodes, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @c_solidleafnodes, align 4
  br label %61

61:                                               ; preds = %58, %44
  %62 = load i64, i64* @create_aas, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @FreeBrushList(i32* %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 6
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @FreeBrush(i32* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %75, %64
  br label %83

83:                                               ; preds = %82, %61
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %84, %struct.TYPE_12__** %3, align 8
  br label %183

85:                                               ; preds = %38
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 5
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, -2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %98 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  %99 = call i32 @SplitBrushList(i32* %95, %struct.TYPE_12__* %96, i32** %97, i32** %98)
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @FreeBrushList(i32* %100)
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %117, %85
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = call %struct.TYPE_12__* (...) @AllocNode()
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %6, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 4
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %113, i64 %115
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %116, align 8
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %102

120:                                              ; preds = %102
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %129, i64 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %135, i64 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 3
  %139 = call i32 @SplitBrush(i32* %123, i32 %126, i32** %132, i32** %138)
  %140 = load i64, i64* @create_aas, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %120
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @FreeBrush(i32* %150)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  store i32* null, i32** %153, align 8
  br label %154

154:                                              ; preds = %147, %142
  br label %155

155:                                              ; preds = %154, %120
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %178, %155
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %159, label %181

159:                                              ; preds = %156
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %162, i64 %164
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = call %struct.TYPE_12__* @BuildTree_r(%struct.TYPE_12__* %166, i32* %170)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %174, i64 %176
  store %struct.TYPE_12__* %171, %struct.TYPE_12__** %177, align 8
  br label %178

178:                                              ; preds = %159
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %156

181:                                              ; preds = %156
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %182, %struct.TYPE_12__** %3, align 8
  br label %183

183:                                              ; preds = %181, %83
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %184
}

declare dso_local i32 @qprintf(i8*, i32) #1

declare dso_local i32 @WindingMemory(...) #1

declare dso_local i32 @DrawBrushList(i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @SelectSplitSide(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @LeafNode(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @FreeBrushList(i32*) #1

declare dso_local i32 @FreeBrush(i32*) #1

declare dso_local i32 @SplitBrushList(i32*, %struct.TYPE_12__*, i32**, i32**) #1

declare dso_local %struct.TYPE_12__* @AllocNode(...) #1

declare dso_local i32 @SplitBrush(i32*, i32, i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
