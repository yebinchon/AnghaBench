; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_CapShadowMap.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_CapShadowMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__**, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }

@tess = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GL_TEXTURE_CUBE_MAP_POSITIVE_X = common dso_local global i64 0, align 8
@backEnd = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@glConfig = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@PSHADOW_MAP_SIZE = common dso_local global i64 0, align 8
@GL_TEXTURE_2D = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RB_CapShadowMap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @RB_EndSurface()
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %86

15:                                               ; preds = %10
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %55

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 1), align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %21, i64 %25
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 1), align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %30, i64 %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @GL_TEXTURE_CUBE_MAP_POSITIVE_X, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @backEnd, i32 0, i32 0, i32 1), align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 0), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @backEnd, i32 0, i32 0, i32 0), align 8
  %48 = load i64, i64* @PSHADOW_MAP_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = sub nsw i64 %46, %49
  %51 = load i64, i64* @PSHADOW_MAP_SIZE, align 8
  %52 = load i64, i64* @PSHADOW_MAP_SIZE, align 8
  %53 = call i32 @qglCopyTextureSubImage2DEXT(i32 %38, i64 %44, i32 0, i32 0, i32 0, i32 %45, i64 %50, i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %29, %20
  br label %85

55:                                               ; preds = %15
  %56 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %56, i64 %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = icmp ne %struct.TYPE_10__* %62, null
  br i1 %63, label %64, label %84

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 0), align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %65, i64 %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* @GL_TEXTURE_2D, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @backEnd, i32 0, i32 0, i32 1), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 0), align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @backEnd, i32 0, i32 0, i32 0), align 8
  %78 = load i64, i64* @PSHADOW_MAP_SIZE, align 8
  %79 = add nsw i64 %77, %78
  %80 = sub nsw i64 %76, %79
  %81 = load i64, i64* @PSHADOW_MAP_SIZE, align 8
  %82 = load i64, i64* @PSHADOW_MAP_SIZE, align 8
  %83 = call i32 @qglCopyTextureSubImage2DEXT(i32 %73, i64 %74, i32 0, i32 0, i32 0, i32 %75, i64 %80, i64 %81, i64 %82)
  br label %84

84:                                               ; preds = %64, %55
  br label %85

85:                                               ; preds = %84, %54
  br label %86

86:                                               ; preds = %85, %10
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 1
  %89 = bitcast %struct.TYPE_12__* %88 to i8*
  ret i8* %89
}

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @qglCopyTextureSubImage2DEXT(i32, i64, i32, i32, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
