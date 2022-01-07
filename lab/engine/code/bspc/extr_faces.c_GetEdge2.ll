; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_GetEdge2.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_GetEdge2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }

@c_tryedges = common dso_local global i32 0, align 4
@noshare = common dso_local global i32 0, align 4
@firstmodeledge = common dso_local global i32 0, align 4
@numedges = common dso_local global i32 0, align 4
@dedges = common dso_local global %struct.TYPE_7__* null, align 8
@edgefaces = common dso_local global %struct.TYPE_6__*** null, align 8
@MAX_MAP_EDGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"numedges == MAX_MAP_EDGES\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetEdge2(i32 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %10 = load i32, i32* @c_tryedges, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @c_tryedges, align 4
  %12 = load i32, i32* @noshare, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %79, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @firstmodeledge, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %75, %14
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @numedges, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dedges, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %32
  %41 = load %struct.TYPE_6__***, %struct.TYPE_6__**** @edgefaces, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %41, i64 %43
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %40
  %55 = load %struct.TYPE_6__***, %struct.TYPE_6__**** @edgefaces, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %55, i64 %57
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = icmp ne %struct.TYPE_6__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %75

64:                                               ; preds = %54
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = load %struct.TYPE_6__***, %struct.TYPE_6__**** @edgefaces, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %66, i64 %68
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %70, i64 1
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %112

74:                                               ; preds = %40, %32, %20
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %16

78:                                               ; preds = %16
  br label %79

79:                                               ; preds = %78, %3
  %80 = load i32, i32* @numedges, align 4
  %81 = load i32, i32* @MAX_MAP_EDGES, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dedges, align 8
  %87 = load i32, i32* @numedges, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %8, align 8
  %90 = load i32, i32* @numedges, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @numedges, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %97, i32* %101, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = load %struct.TYPE_6__***, %struct.TYPE_6__**** @edgefaces, align 8
  %104 = load i32, i32* @numedges, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %103, i64 %106
  %108 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %108, i64 0
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %109, align 8
  %110 = load i32, i32* @numedges, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %85, %64
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
