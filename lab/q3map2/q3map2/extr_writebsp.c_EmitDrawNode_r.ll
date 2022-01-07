; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitDrawNode_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitDrawNode_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__**, i32, i32 }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@numBSPLeafs = common dso_local global i32 0, align 4
@numBSPNodes = common dso_local global i64 0, align 8
@MAX_MAP_NODES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"MAX_MAP_NODES\00", align 1
@bspNodes = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"WriteDrawNodes_r: odd planenum\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EmitDrawNode_r(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PLANENUM_LEAF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = call i32 @EmitLeaf(%struct.TYPE_6__* %12)
  %14 = load i32, i32* @numBSPLeafs, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %118

16:                                               ; preds = %1
  %17 = load i64, i64* @numBSPNodes, align 8
  %18 = load i64, i64* @MAX_MAP_NODES, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspNodes, align 8
  %24 = load i64, i64* @numBSPNodes, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %24
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  %26 = load i64, i64* @numBSPNodes, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* @numBSPNodes, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @VectorCopy(i32 %30, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @VectorCopy(i32 %37, i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, 1
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %22
  %48 = call i32 @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %22
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %107, %49
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %110

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PLANENUM_LEAF, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %59
  %72 = load i32, i32* @numBSPLeafs, align 4
  %73 = add nsw i32 %72, 1
  %74 = sub nsw i32 0, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @EmitLeaf(%struct.TYPE_6__* %87)
  br label %106

89:                                               ; preds = %59
  %90 = load i64, i64* @numBSPNodes, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %100, i64 %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = call i32 @EmitDrawNode_r(%struct.TYPE_6__* %104)
  br label %106

106:                                              ; preds = %89, %71
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %56

110:                                              ; preds = %56
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspNodes, align 8
  %113 = ptrtoint %struct.TYPE_7__* %111 to i64
  %114 = ptrtoint %struct.TYPE_7__* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 24
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %110, %11
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @EmitLeaf(%struct.TYPE_6__*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
