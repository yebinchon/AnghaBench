; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_GL_TextureMode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_GL_TextureMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32 (i32, i8*)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32 }

@modes = common dso_local global %struct.TYPE_9__* null, align 8
@glConfig = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GLHW_3DFX_2D3D = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Refusing to set trilinear on a voodoo.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bad filter name\0A\00", align 1
@gl_filter_min = common dso_local global i32 0, align 4
@gl_filter_max = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@IMGFLAG_MIPMAP = common dso_local global i32 0, align 4
@IMGFLAG_CUBEMAP = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_TextureMode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @modes, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @Q_stricmp(i32 %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %8
  br label %23

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %18, %5
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glConfig, i32 0, i32 0), align 8
  %28 = load i64, i64* @GLHW_3DFX_2D3D, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %32 = load i32, i32* @PRINT_ALL, align 4
  %33 = call i32 %31(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %26, %23
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %39 = load i32, i32* @PRINT_ALL, align 4
  %40 = call i32 %38(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %96

41:                                               ; preds = %34
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @modes, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* @gl_filter_min, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @modes, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* @gl_filter_max, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %93, %41
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 8
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 1), align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %4, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IMGFLAG_MIPMAP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %58
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IMGFLAG_CUBEMAP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GL_TEXTURE_2D, align 4
  %82 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %83 = load i32, i32* @gl_filter_min, align 4
  %84 = call i32 @qglTextureParameterfEXT(i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @GL_TEXTURE_2D, align 4
  %89 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %90 = load i32, i32* @gl_filter_max, align 4
  %91 = call i32 @qglTextureParameterfEXT(i32 %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %77, %70, %58
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %54

96:                                               ; preds = %37, %54
  ret void
}

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @qglTextureParameterfEXT(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
