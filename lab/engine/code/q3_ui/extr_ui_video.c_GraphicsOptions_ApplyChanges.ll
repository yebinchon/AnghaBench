; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_ApplyChanges.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_ApplyChanges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@s_graphicsoptions = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"r_texturebits\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"r_picmip\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"r_allowExtensions\00", align 1
@resolutionsDetected = common dso_local global i64 0, align 8
@detectedResolutions = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"r_customwidth\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"r_customheight\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"r_mode\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"r_colorbits\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"r_depthbits\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"r_stencilbits\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"r_vertexLight\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"r_lodBias\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"r_subdivisions\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"r_textureMode\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"GL_LINEAR_MIPMAP_LINEAR\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"GL_LINEAR_MIPMAP_NEAREST\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"vid_restart\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @GraphicsOptions_ApplyChanges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_ApplyChanges(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca [16 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @QM_ACTIVATED, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %115

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 4
  switch i32 %13, label %20 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
  ]

14:                                               ; preds = %12
  %15 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %20

16:                                               ; preds = %12
  %17 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 16)
  br label %20

18:                                               ; preds = %12
  %19 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 32)
  br label %20

20:                                               ; preds = %12, %18, %16, %14
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 8
  %22 = sub nsw i32 3, %21
  %23 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 4
  %25 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* @resolutionsDetected, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %20
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %33 = load i8**, i8*** @detectedResolutions, align 8
  %34 = call i32 @ARRAY_LEN(i8** %33)
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %28
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %39 = call i32 @GraphicsOptions_FindBuiltinResolution(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %44 = load i8**, i8*** @detectedResolutions, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @Q_strncpyz(i8* %43, i8* %48, i32 16)
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %51 = call i8* @strchr(i8* %50, i8 signext 120)
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %53 = load i8**, i8*** @detectedResolutions, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 120)
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i32 @Q_strncpyz(i8* %52, i8* %59, i32 16)
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %62 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %64 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %42, %37
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  br label %71

68:                                               ; preds = %20
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %70 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 4
  %73 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 8
  switch i32 %74, label %87 [
    i32 0, label %75
    i32 1, label %79
    i32 2, label %83
  ]

75:                                               ; preds = %71
  %76 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %77 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %78 = call i32 @trap_Cvar_Reset(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %87

79:                                               ; preds = %71
  %80 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 16)
  %81 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 16)
  %82 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 0)
  br label %87

83:                                               ; preds = %71
  %84 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 32)
  %85 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 24)
  %86 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 8)
  br label %87

87:                                               ; preds = %71, %83, %79, %75
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 4
  %89 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 8
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %94 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 4)
  br label %105

95:                                               ; preds = %87
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 8
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %100 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 12)
  br label %104

101:                                              ; preds = %95
  %102 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %103 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 20)
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %92
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  br label %112

110:                                              ; preds = %105
  %111 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %108
  %113 = load i32, i32* @EXEC_APPEND, align 4
  %114 = call i32 @trap_Cmd_ExecuteText(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %11
  ret void
}

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @ARRAY_LEN(i8**) #1

declare dso_local i32 @GraphicsOptions_FindBuiltinResolution(i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @trap_Cvar_Reset(i8*) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
