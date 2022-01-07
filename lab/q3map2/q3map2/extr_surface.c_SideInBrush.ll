; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_SideInBrush.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_SideInBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }

@qtrue = common dso_local global i64 0, align 8
@C_TRANSLUCENT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@C_NODRAW = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_12__* null, align 8
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_CROSS = common dso_local global i32 0, align 4
@g_numHiddenFaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SideInBrush(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i64, i64* @qtrue, align 8
  store i64 %19, i64* %3, align 8
  br label %119

20:                                               ; preds = %13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @qtrue, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @C_TRANSLUCENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26, %20
  %34 = load i64, i64* @qfalse, align 8
  store i64 %34, i64* %3, align 8
  br label %119

35:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %87, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @C_NODRAW, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i64, i64* @qfalse, align 8
  store i64 %55, i64* %3, align 8
  br label %119

56:                                               ; preds = %42
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mapplanes, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %65
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @WindingOnPlaneSide(i32* %69, i32 %72, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @SIDE_FRONT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %56
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @SIDE_CROSS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %56
  %85 = load i64, i64* @qfalse, align 8
  store i64 %85, i64* %3, align 8
  br label %119

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %36

90:                                               ; preds = %36
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = icmp ne %struct.TYPE_10__* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102, %95
  %110 = load i64, i64* @qfalse, align 8
  store i64 %110, i64* %3, align 8
  br label %119

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %90
  %113 = load i64, i64* @qtrue, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @g_numHiddenFaces, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @g_numHiddenFaces, align 4
  %118 = load i64, i64* @qtrue, align 8
  store i64 %118, i64* %3, align 8
  br label %119

119:                                              ; preds = %112, %109, %84, %54, %33, %18
  %120 = load i64, i64* %3, align 8
  ret i64 %120
}

declare dso_local i32 @WindingOnPlaneSide(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
