; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_flares.c_RB_AddDlightFlares.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_flares.c_RB_AddDlightFlares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64** }

@r_flares = common dso_local global %struct.TYPE_13__* null, align 8
@backEnd = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_AddDlightFlares() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_flares, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %118

11:                                               ; preds = %0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 1), align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %1, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  br label %19

19:                                               ; preds = %15, %11
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %113, %19
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 0), align 8
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %118

24:                                               ; preds = %20
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %101

27:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %90, %27
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %93

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %39
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %82, %34
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %85

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64**, i64*** %53, align 8
  %55 = getelementptr inbounds i64*, i64** %54, i64 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %51, %60
  br i1 %61, label %80, label %62

62:                                               ; preds = %44
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64**, i64*** %71, align 8
  %73 = getelementptr inbounds i64*, i64** %72, i64 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %69, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %62, %44
  br label %85

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %41

85:                                               ; preds = %80, %41
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %93

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %28

93:                                               ; preds = %88, %28
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %93
  br label %102

101:                                              ; preds = %24
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %100
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %104 = bitcast %struct.TYPE_11__* %103 to i8*
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @RB_AddFlare(i8* %104, i32 %105, i64* %108, i32 %111, i32* null)
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %2, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %2, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 1
  store %struct.TYPE_11__* %117, %struct.TYPE_11__** %1, align 8
  br label %20

118:                                              ; preds = %10, %20
  ret void
}

declare dso_local i32 @RB_AddFlare(i8*, i32, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
