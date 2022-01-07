; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_SwapBuffers.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_SwapBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i8* (i32)*, i32 (i8*)* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@tess = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@r_showImages = common dso_local global %struct.TYPE_13__* null, align 8
@r_measureOverdraw = common dso_local global %struct.TYPE_14__* null, align 8
@ri = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@glConfig = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@GL_STENCIL_INDEX = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@r_finish = common dso_local global %struct.TYPE_15__* null, align 8
@glState = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str = private unnamed_addr constant [54 x i8] c"***************** RB_SwapBuffers *****************\0A\0A\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RB_SwapBuffers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @RB_EndSurface()
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_showImages, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
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
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_measureOverdraw, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %18
  store i64 0, i64* %5, align 8
  %26 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 0), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glConfig, i32 0, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glConfig, i32 0, i32 1), align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i8* %26(i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glConfig, i32 0, i32 0), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glConfig, i32 0, i32 1), align 4
  %33 = load i32, i32* @GL_STENCIL_INDEX, align 4
  %34 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @qglReadPixels(i32 0, i32 0, i32 %31, i32 %32, i32 %33, i32 %34, i8* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %52, %25
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glConfig, i32 0, i32 0), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glConfig, i32 0, i32 1), align 4
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
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 1, i32 0), align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 1, i32 0), align 8
  %59 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 1), align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 %59(i8* %60)
  br label %62

62:                                               ; preds = %55, %18
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_finish, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glState, i32 0, i32 0), align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 (...) @qglFinish()
  br label %72

72:                                               ; preds = %70, %67, %62
  %73 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %74 = call i32 (...) @GLimp_EndFrame()
  %75 = load i32, i32* @qfalse, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0), align 8
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = bitcast i32* %77 to i8*
  ret i8* %78
}

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @RB_ShowImages(...) #1

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @qglFinish(...) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i32 @GLimp_EndFrame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
