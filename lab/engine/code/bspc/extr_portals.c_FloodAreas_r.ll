; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_FloodAreas_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_FloodAreas_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__*, i64, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__**, %struct.TYPE_10__** }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@CONTENTS_AREAPORTAL = common dso_local global i64 0, align 8
@entities = common dso_local global %struct.TYPE_12__* null, align 8
@c_areas = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"WARNING: areaportal entity %i touches > 2 areas\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FloodAreas_r(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CONTENTS_AREAPORTAL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %73

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @entities, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %21
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @c_areas, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %12
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @c_areas, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %12
  br label %122

39:                                               ; preds = %30
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @Log_Print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %51)
  br label %122

53:                                               ; preds = %39
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i64, i64* @c_areas, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64 %61, i64* %65, align 8
  br label %72

66:                                               ; preds = %53
  %67 = load i64, i64* @c_areas, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 %67, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %60
  br label %122

73:                                               ; preds = %1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %122

79:                                               ; preds = %73
  %80 = load i64, i64* @c_areas, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %3, align 8
  br label %86

86:                                               ; preds = %114, %79
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = icmp ne %struct.TYPE_10__* %87, null
  br i1 %88, label %89, label %122

89:                                               ; preds = %86
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %92, i64 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %96 = icmp eq %struct.TYPE_11__* %94, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %4, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @Portal_EntityFlood(%struct.TYPE_10__* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %89
  br label %114

103:                                              ; preds = %89
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %106, i64 %111
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  call void @FloodAreas_r(%struct.TYPE_11__* %113)
  br label %114

114:                                              ; preds = %103, %102
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %117, i64 %119
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %3, align 8
  br label %86

122:                                              ; preds = %38, %46, %72, %78, %86
  ret void
}

declare dso_local i32 @Log_Print(i8*, i64) #1

declare dso_local i32 @Portal_EntityFlood(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
