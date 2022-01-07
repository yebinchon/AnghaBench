; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_SetMenuItems.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_SetMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"r_mode\00", align 1
@s_graphicsoptions = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@resolutionsDetected = common dso_local global i64 0, align 8
@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"r_customwidth\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"r_customheight\00", align 1
@detectedResolutions = common dso_local global i8** null, align 8
@resToRatio = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"r_allowExtensions\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"r_picmip\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"r_vertexLight\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"r_texturebits\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"r_textureMode\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"GL_LINEAR_MIPMAP_NEAREST\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"r_lodBias\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"r_subdivisions\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"r_colorbits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GraphicsOptions_SetMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_SetMenuItems() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @GraphicsOptions_FindDetectedResolution(i32 %4)
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %0
  %9 = load i64, i64* @resolutionsDetected, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %61

11:                                               ; preds = %8
  %12 = load i32, i32* @MAX_STRING_CHARS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %16 = sub i64 %13, 2
  %17 = trunc i64 %16 to i32
  %18 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %17)
  %19 = call i32 @strlen(i8* %15)
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %15, i64 %21
  store i8 0, i8* %22, align 1
  %23 = call i32 @strlen(i8* %15)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %15, i64 %24
  store i8 120, i8* %25, align 1
  %26 = call i32 @strlen(i8* %15)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %15, i64 %27
  %29 = call i32 @strlen(i8* %15)
  %30 = sext i32 %29 to i64
  %31 = sub i64 %13, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %28, i32 %32)
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %52, %11
  %35 = load i8**, i8*** @detectedResolutions, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load i8**, i8*** @detectedResolutions, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @Q_stricmp(i8* %15, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %1, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  br label %55

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %34

55:                                               ; preds = %49, %34
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %60)
  br label %62

61:                                               ; preds = %8
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  br label %62

62:                                               ; preds = %61, %59
  br label %63

63:                                               ; preds = %62, %0
  %64 = load i32*, i32** @resToRatio, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 10, i32 0), align 4
  %69 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 4
  %70 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 4
  %71 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %72 = sub nsw i32 3, %71
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  br label %81

76:                                               ; preds = %63
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %78 = icmp sgt i32 %77, 3
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  br label %80

80:                                               ; preds = %79, %76
  br label %81

81:                                               ; preds = %80, %75
  %82 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 4
  %85 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  switch i32 %85, label %86 [
    i32 0, label %87
    i32 16, label %88
    i32 32, label %89
  ]

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %81, %86
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 4
  br label %90

88:                                               ; preds = %81
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 4
  br label %90

89:                                               ; preds = %81
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 4
  br label %90

90:                                               ; preds = %89, %88, %87
  %91 = call i8* @UI_Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %92 = call i32 @Q_stricmp(i8* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 4
  br label %96

95:                                               ; preds = %90
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %101 = icmp sge i32 %100, 20
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 4
  br label %104

103:                                              ; preds = %99
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 4
  br label %104

104:                                              ; preds = %103, %102
  br label %106

105:                                              ; preds = %96
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 4
  br label %106

106:                                              ; preds = %105, %104
  %107 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  switch i32 %107, label %108 [
    i32 0, label %109
    i32 16, label %110
    i32 32, label %111
  ]

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %106, %108
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %112

110:                                              ; preds = %106
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %112

111:                                              ; preds = %106
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %112

112:                                              ; preds = %111, %110, %109
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %120

120:                                              ; preds = %119, %116
  ret void
}

declare dso_local i32 @GraphicsOptions_FindDetectedResolution(i32) #1

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @UI_Cvar_VariableString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
