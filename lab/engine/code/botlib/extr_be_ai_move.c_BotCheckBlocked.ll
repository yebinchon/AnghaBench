; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotCheckBlocked.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotCheckBlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i8* }
%struct.TYPE_8__ = type { i64, i32 }

@sv_maxstep = common dso_local global %struct.TYPE_11__* null, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_BODY = common dso_local global i32 0, align 4
@ENTITYNUM_WORLD = common dso_local global i64 0, align 8
@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@MOVERESULT_ONTOPOFOBSTACLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCheckBlocked(%struct.TYPE_9__* %0, i32* %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  store i32* null, i32** %12, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @AAS_PresenceTypeBoundingBox(i32 %18, i32* %19, i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @DotProduct(i32* %22, i32* %23)
  %25 = call double @fabs(i32 %24)
  %26 = fcmp olt double %25, 0x3FE6666666666666
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sv_maxstep, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 10
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %27, %4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @VectorMA(i32 %44, i32 3, i32* %45, i32* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CONTENTS_SOLID, align 4
  %58 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CONTENTS_BODY, align 4
  %61 = or i32 %59, %60
  %62 = call { i64, i32 } @AAS_Trace(i32 %50, i32* %51, i32* %52, i32* %53, i32 %56, i32 %61)
  %63 = bitcast %struct.TYPE_8__* %14 to { i64, i32 }*
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %63, i32 0, i32 0
  %65 = extractvalue { i64, i32 } %62, 0
  store i64 %65, i64* %64, align 8
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %63, i32 0, i32 1
  %67 = extractvalue { i64, i32 } %62, 1
  store i32 %67, i32* %66, align 8
  %68 = bitcast %struct.TYPE_8__* %13 to i8*
  %69 = bitcast %struct.TYPE_8__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %41
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ENTITYNUM_NONE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i8*, i8** @qtrue, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %161

91:                                               ; preds = %78, %73, %41
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %160

94:                                               ; preds = %91
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @AAS_AreaReachability(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %160, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @AAS_PresenceTypeBoundingBox(i32 %103, i32* %104, i32* %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @VectorMA(i32 %109, i32 -3, i32* %110, i32* %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CONTENTS_SOLID, align 4
  %123 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %124 = or i32 %122, %123
  %125 = call { i64, i32 } @AAS_Trace(i32 %115, i32* %116, i32* %117, i32* %118, i32 %121, i32 %124)
  %126 = bitcast %struct.TYPE_8__* %15 to { i64, i32 }*
  %127 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %126, i32 0, i32 0
  %128 = extractvalue { i64, i32 } %125, 0
  store i64 %128, i64* %127, align 8
  %129 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %126, i32 0, i32 1
  %130 = extractvalue { i64, i32 } %125, 1
  store i32 %130, i32* %129, align 8
  %131 = bitcast %struct.TYPE_8__* %13 to i8*
  %132 = bitcast %struct.TYPE_8__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 16, i1 false)
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %159, label %136

136:                                              ; preds = %100
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %159

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ENTITYNUM_NONE, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load i8*, i8** @qtrue, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load i32, i32* @MOVERESULT_ONTOPOFOBSTACLE, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %146, %141, %136, %100
  br label %160

160:                                              ; preds = %159, %94, %91
  br label %161

161:                                              ; preds = %160, %83
  ret void
}

declare dso_local i32 @AAS_PresenceTypeBoundingBox(i32, i32*, i32*) #1

declare dso_local double @fabs(i32) #1

declare dso_local i32 @DotProduct(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32, i32, i32*, i32*) #1

declare dso_local { i64, i32 } @AAS_Trace(i32, i32*, i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AAS_AreaReachability(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
