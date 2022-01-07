; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_MakeFaces_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_MakeFaces_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_11__** }
%struct.TYPE_10__ = type { %struct.TYPE_12__**, %struct.TYPE_9__*, %struct.TYPE_11__**, %struct.TYPE_10__** }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@nomerge = common dso_local global i32 0, align 4
@nosubdiv = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@c_nodefaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeFaces_r(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PLANENUM_LEAF, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %13, i64 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  call void @MakeFaces_r(%struct.TYPE_11__* %15)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %18, i64 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  call void @MakeFaces_r(%struct.TYPE_11__* %20)
  %21 = load i32, i32* @nomerge, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %10
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = call i32 @MergeNodeFaces(%struct.TYPE_11__* %24)
  br label %26

26:                                               ; preds = %23, %10
  %27 = load i32, i32* @nosubdiv, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = call i32 @SubdivideNodeFaces(%struct.TYPE_11__* %30)
  br label %32

32:                                               ; preds = %29, %26
  br label %110

33:                                               ; preds = %1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CONTENTS_SOLID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %110

41:                                               ; preds = %33
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %3, align 8
  br label %45

45:                                               ; preds = %102, %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %110

48:                                               ; preds = %45
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %51, i64 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = icmp eq %struct.TYPE_11__* %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %4, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call %struct.TYPE_12__* @FaceFromPortal(%struct.TYPE_10__* %57, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %62, i64 %64
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %68, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = icmp ne %struct.TYPE_12__* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %48
  %75 = load i32, i32* @c_nodefaces, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @c_nodefaces, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %84, i64 %86
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %92, i64 %94
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %100, align 8
  br label %101

101:                                              ; preds = %74, %48
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %105, i64 %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %3, align 8
  br label %45

110:                                              ; preds = %32, %40, %45
  ret void
}

declare dso_local i32 @MergeNodeFaces(%struct.TYPE_11__*) #1

declare dso_local i32 @SubdivideNodeFaces(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @FaceFromPortal(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
