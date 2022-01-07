; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_predict.c_CG_ClipMoveToEntities.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_predict.c_CG_ClipMoveToEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i64, i64 }

@cg_numSolidEntities = common dso_local global i32 0, align 4
@cg_solidEntities = common dso_local global %struct.TYPE_10__** null, align 8
@SOLID_BMODEL = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@vec3_origin = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_8__*)* @CG_ClipMoveToEntities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ClipMoveToEntities(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, %struct.TYPE_8__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %156, %7
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @cg_numSolidEntities, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %159

31:                                               ; preds = %27
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @cg_solidEntities, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %32, i64 %34
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %26, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %20, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %156

45:                                               ; preds = %31
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SOLID_BMODEL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @trap_CM_InlineModel(i32 %54)
  store i32 %55, i32* %21, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %25, align 8
  %60 = call i32 @VectorCopy(i32 %58, i32* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 4
  %65 = load i32*, i32** %24, align 8
  %66 = call i32 @BG_EvaluateTrajectory(i32* %63, i32 %64, i32* %65)
  br label %112

67:                                               ; preds = %45
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  store i32 %71, i32* %16, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  store i32 %76, i32* %17, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = sub nsw i32 %81, 32
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %16, align 4
  %84 = sub nsw i32 0, %83
  %85 = load i32*, i32** %22, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %22, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32*, i32** %23, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %89, i32* %91, align 4
  %92 = load i32*, i32** %23, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %17, align 4
  %95 = sub nsw i32 0, %94
  %96 = load i32*, i32** %22, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32*, i32** %23, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %22, align 8
  %102 = load i32*, i32** %23, align 8
  %103 = call i32 @trap_CM_TempBoxModel(i32* %101, i32* %102)
  store i32 %103, i32* %21, align 4
  %104 = load i32, i32* @vec3_origin, align 4
  %105 = load i32*, i32** %25, align 8
  %106 = call i32 @VectorCopy(i32 %104, i32* %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %24, align 8
  %111 = call i32 @VectorCopy(i32 %109, i32* %110)
  br label %112

112:                                              ; preds = %67, %51
  %113 = load i32*, i32** %8, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32*, i32** %24, align 8
  %120 = load i32*, i32** %25, align 8
  %121 = call i32 @trap_CM_TransformedBoxTrace(%struct.TYPE_8__* %19, i32* %113, i32* %114, i32* %115, i32* %116, i32 %117, i32 %118, i32* %119, i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %125, %112
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 %135, i32* %136, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %138 = bitcast %struct.TYPE_8__* %137 to i8*
  %139 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 32, i1 false)
  br label %149

140:                                              ; preds = %125
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i64, i64* @qtrue, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148, %132
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %159

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %44
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %27

159:                                              ; preds = %154, %27
  ret void
}

declare dso_local i32 @trap_CM_InlineModel(i32) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @BG_EvaluateTrajectory(i32*, i32, i32*) #1

declare dso_local i32 @trap_CM_TempBoxModel(i32*, i32*) #1

declare dso_local i32 @trap_CM_TransformedBoxTrace(%struct.TYPE_8__*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
