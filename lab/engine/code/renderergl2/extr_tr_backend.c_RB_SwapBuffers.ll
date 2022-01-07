; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_SwapBuffers.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_SwapBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i8* (i32)*, i32 (i8*)* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8*, i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@tess = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@r_showImages = common dso_local global %struct.TYPE_20__* null, align 8
@r_measureOverdraw = common dso_local global %struct.TYPE_21__* null, align 8
@ri = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@glConfig = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@GL_STENCIL_INDEX = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@glRefConfig = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@r_hdr = common dso_local global %struct.TYPE_22__* null, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@r_finish = common dso_local global %struct.TYPE_23__* null, align 8
@glState = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@.str = private unnamed_addr constant [54 x i8] c"***************** RB_SwapBuffers *****************\0A\0A\0A\00", align 1
@qfalse = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RB_SwapBuffers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tess, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @RB_EndSurface()
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_showImages, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @RB_ShowImages()
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i8*, i8** %2, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %3, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** @r_measureOverdraw, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %18
  store i64 0, i64* %5, align 8
  %26 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ri, i32 0, i32 0), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 1), align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i8* %26(i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 1), align 4
  %33 = load i32, i32* @GL_STENCIL_INDEX, align 4
  %34 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @qglReadPixels(i32 0, i32 0, i32 %31, i32 %32, i32 %33, i32 %34, i8* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %52, %25
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 1), align 4
  %41 = mul nsw i32 %39, %40
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = load i64, i64* %5, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %37

55:                                               ; preds = %37
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 2, i32 0), align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 2, i32 0), align 8
  %59 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ri, i32 0, i32 1), align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 %59(i8* %60)
  br label %62

62:                                               ; preds = %55, %18
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glRefConfig, i32 0, i32 0), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %62
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1), align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %96, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1), align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** @r_hdr, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1), align 8
  %79 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %80 = load i32, i32* @GL_NEAREST, align 4
  %81 = call i32 @FBO_FastBlit(i32* %77, i32* null, i32* %78, i32* null, i32 %79, i32 %80)
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1), align 8
  %83 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %84 = load i32, i32* @GL_NEAREST, align 4
  %85 = call i32 @FBO_FastBlit(i32* %82, i32* null, i32* null, i32* null, i32 %83, i32 %84)
  br label %95

86:                                               ; preds = %71, %68
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %91 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %92 = load i32, i32* @GL_NEAREST, align 4
  %93 = call i32 @FBO_FastBlit(i32* %90, i32* null, i32* null, i32* null, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %94, %76
  br label %96

96:                                               ; preds = %95, %65
  br label %97

97:                                               ; preds = %96, %62
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** @r_finish, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @glState, i32 0, i32 0), align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = call i32 (...) @qglFinish()
  br label %107

107:                                              ; preds = %105, %102, %97
  %108 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %109 = call i32 (...) @GLimp_EndFrame()
  %110 = load i8*, i8** @qfalse, align 8
  store i8* %110, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1), align 8
  %111 = load i8*, i8** @qfalse, align 8
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 0), align 8
  %112 = load i32*, i32** %3, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = bitcast i32* %113 to i8*
  ret i8* %114
}

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @RB_ShowImages(...) #1

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @FBO_FastBlit(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @qglFinish(...) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i32 @GLimp_EndFrame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
