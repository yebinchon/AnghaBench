; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_FaceFromSuperverts.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_FaceFromSuperverts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8**, %struct.TYPE_7__*, %struct.TYPE_7__** }

@numsuperverts = common dso_local global i32 0, align 4
@MAXEDGES = common dso_local global i32 0, align 4
@c_faceoverflows = common dso_local global i32 0, align 4
@superverts = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FaceFromSuperverts(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @numsuperverts, align 4
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %64, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MAXEDGES, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %95

15:                                               ; preds = %11
  %16 = load i32, i32* @c_faceoverflows, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @c_faceoverflows, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = call i8* @NewFaceFromFace(%struct.TYPE_7__* %18)
  %20 = bitcast i8* %19 to %struct.TYPE_7__*
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %23, i64 0
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %7, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %37, align 8
  %38 = load i32, i32* @MAXEDGES, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %61, %15
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MAXEDGES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i8**, i8*** @superverts, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* @numsuperverts, align 4
  %51 = srem i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %46, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %54, i8** %60, align 8
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = call i8* @NewFaceFromFace(%struct.TYPE_7__* %65)
  %67 = bitcast i8* %66 to %struct.TYPE_7__*
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 1
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %74, i64 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %5, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %84, align 8
  %85 = load i32, i32* @MAXEDGES, align 4
  %86 = sub nsw i32 %85, 2
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @MAXEDGES, align 4
  %91 = add nsw i32 %89, %90
  %92 = sub nsw i32 %91, 1
  %93 = load i32, i32* @numsuperverts, align 4
  %94 = srem i32 %92, %93
  store i32 %94, i32* %6, align 4
  br label %11

95:                                               ; preds = %11
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %119, %95
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %99
  %104 = load i8**, i8*** @superverts, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* @numsuperverts, align 4
  %109 = srem i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %104, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %112, i8** %118, align 8
  br label %119

119:                                              ; preds = %103
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %99

122:                                              ; preds = %99
  ret void
}

declare dso_local i8* @NewFaceFromFace(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
