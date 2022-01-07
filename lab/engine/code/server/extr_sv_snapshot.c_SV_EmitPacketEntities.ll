; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_EmitPacketEntities.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_EmitPacketEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }

@svs = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@sv = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@MAX_GENTITIES = common dso_local global i64 0, align 8
@GENTITYNUM_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_12__*, i32*)* @SV_EmitPacketEntities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_EmitPacketEntities(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %17, %16
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %115, %108, %92, %78, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i1 [ true, %22 ], [ %31, %28 ]
  br i1 %33, label %34, label %116

34:                                               ; preds = %32
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 9999, i32* %12, align 4
  br label %55

41:                                               ; preds = %34
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @svs, i32 0, i32 1), align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @svs, i32 0, i32 0), align 8
  %49 = srem i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %50
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %8, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %41, %40
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 9999, i32* %11, align 4
  br label %74

60:                                               ; preds = %55
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @svs, i32 0, i32 1), align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @svs, i32 0, i32 0), align 8
  %68 = srem i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %69
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %7, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %60, %59
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = load i32, i32* @qfalse, align 4
  %83 = call i32 @MSG_WriteDeltaEntity(i32* %79, %struct.TYPE_11__* %80, %struct.TYPE_11__* %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %22

88:                                               ; preds = %74
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = load i32, i32* @qtrue, align 4
  %101 = call i32 @MSG_WriteDeltaEntity(i32* %93, %struct.TYPE_11__* %98, %struct.TYPE_11__* %99, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %22

104:                                              ; preds = %88
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = load i32, i32* @qtrue, align 4
  %112 = call i32 @MSG_WriteDeltaEntity(i32* %109, %struct.TYPE_11__* %110, %struct.TYPE_11__* null, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %22

115:                                              ; preds = %104
  br label %22

116:                                              ; preds = %32
  %117 = load i32*, i32** %6, align 8
  %118 = load i64, i64* @MAX_GENTITIES, align 8
  %119 = sub nsw i64 %118, 1
  %120 = load i32, i32* @GENTITYNUM_BITS, align 4
  %121 = call i32 @MSG_WriteBits(i32* %117, i64 %119, i32 %120)
  ret void
}

declare dso_local i32 @MSG_WriteDeltaEntity(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @MSG_WriteBits(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
