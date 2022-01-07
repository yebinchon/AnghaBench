; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_RenderMissingCubemaps.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_RenderMissingCubemaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@IMGFLAG_NO_COMPRESSION = common dso_local global i32 0, align 4
@IMGFLAG_CLAMPTOEDGE = common dso_local global i32 0, align 4
@IMGFLAG_MIPMAP = common dso_local global i32 0, align 4
@IMGFLAG_NOLIGHTSCALE = common dso_local global i32 0, align 4
@IMGFLAG_CUBEMAP = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"*cubeMap%d\00", align 1
@r_cubemapSize = common dso_local global %struct.TYPE_6__* null, align 8
@IMGTYPE_COLORALPHA = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_RenderMissingCubemaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @IMGFLAG_NO_COMPRESSION, align 4
  %5 = load i32, i32* @IMGFLAG_CLAMPTOEDGE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @IMGFLAG_MIPMAP, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @IMGFLAG_NOLIGHTSCALE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @IMGFLAG_CUBEMAP, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %59, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @va(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_cubemapSize, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_cubemapSize, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @GL_RGBA8, align 4
  %37 = call i64 @R_CreateImage(i32 %27, i32* null, i32 %30, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 %37, i64* %42, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %54, %25
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 6
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = call i32 (...) @RE_ClearScene()
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @qfalse, align 4
  %51 = call i32 @R_RenderCubemapSide(i32 %48, i32 %49, i32 %50)
  %52 = call i32 (...) @R_IssuePendingRenderCommands()
  %53 = call i32 (...) @R_InitNextFrame()
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %43

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %17
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %13

62:                                               ; preds = %13
  ret void
}

declare dso_local i64 @R_CreateImage(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @RE_ClearScene(...) #1

declare dso_local i32 @R_RenderCubemapSide(i32, i32, i32) #1

declare dso_local i32 @R_IssuePendingRenderCommands(...) #1

declare dso_local i32 @R_InitNextFrame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
