; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawScreenField.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawScreenField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@re = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@uivm = common dso_local global i64 0, align 8
@UI_IS_FULLSCREEN = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@cls = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@g_color_table = common dso_local global i32** null, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SCR_DrawScreenField: bad clc.state\00", align 1
@UI_SET_ACTIVE_MENU = common dso_local global i32 0, align 4
@UIMENU_MAIN = common dso_local global i32 0, align 4
@UI_REFRESH = common dso_local global i32 0, align 4
@UI_DRAW_CONNECT_SCREEN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@KEYCATCH_UI = common dso_local global i32 0, align 4
@cl_debuggraph = common dso_local global %struct.TYPE_13__* null, align 8
@cl_timegraph = common dso_local global %struct.TYPE_12__* null, align 8
@cl_debugMove = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_DrawScreenField(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @re, i32 0, i32 2), align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 %11(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = load i64, i64* @uivm, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i64, i64* @uivm, align 8
  %20 = load i32, i32* @UI_IS_FULLSCREEN, align 4
  %21 = call i64 (i64, i32, ...) @VM_Call(i64 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 0), align 4
  %30 = icmp slt i32 %29, 129
  br i1 %30, label %31, label %51

31:                                               ; preds = %28, %23
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 2, i32 0), align 4
  %33 = mul nsw i32 %32, 480
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 2, i32 1), align 4
  %35 = mul nsw i32 %34, 640
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @re, i32 0, i32 0), align 8
  %39 = load i32**, i32*** @g_color_table, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 %38(i32* %41)
  %43 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @re, i32 0, i32 1), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 2, i32 0), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 2, i32 1), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 1), align 4
  %47 = call i32 %43(i32 0, i32 0, i32 %44, i32 %45, i32 0, i32 0, i32 0, i32 0, i32 %46)
  %48 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @re, i32 0, i32 0), align 8
  %49 = call i32 %48(i32* null)
  br label %50

50:                                               ; preds = %37, %31
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i64, i64* @uivm, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %117

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %117, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 0), align 4
  switch i32 %58, label %59 [
    i32 133, label %62
    i32 130, label %68
    i32 131, label %78
    i32 134, label %78
    i32 132, label %78
    i32 129, label %91
    i32 128, label %91
    i32 135, label %107
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* @ERR_FATAL, align 4
  %61 = call i32 @Com_Error(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %116

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 (...) @SCR_DrawCinematic()
  br label %67

67:                                               ; preds = %65, %62
  br label %116

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = call i32 (...) @S_StopAllSounds()
  %73 = load i64, i64* @uivm, align 8
  %74 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %75 = load i32, i32* @UIMENU_MAIN, align 4
  %76 = call i64 (i64, i32, ...) @VM_Call(i64 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %68
  br label %116

78:                                               ; preds = %57, %57, %57
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* @uivm, align 8
  %83 = load i32, i32* @UI_REFRESH, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 4
  %85 = call i64 (i64, i32, ...) @VM_Call(i64 %82, i32 %83, i32 %84)
  %86 = load i64, i64* @uivm, align 8
  %87 = load i32, i32* @UI_DRAW_CONNECT_SCREEN, align 4
  %88 = load i32, i32* @qfalse, align 4
  %89 = call i64 (i64, i32, ...) @VM_Call(i64 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %78
  br label %116

91:                                               ; preds = %57, %57
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @CL_CGameRendering(i32 %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %91
  %98 = load i64, i64* @uivm, align 8
  %99 = load i32, i32* @UI_REFRESH, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 4
  %101 = call i64 (i64, i32, ...) @VM_Call(i64 %98, i32 %99, i32 %100)
  %102 = load i64, i64* @uivm, align 8
  %103 = load i32, i32* @UI_DRAW_CONNECT_SCREEN, align 4
  %104 = load i32, i32* @qtrue, align 4
  %105 = call i64 (i64, i32, ...) @VM_Call(i64 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %97, %91
  br label %116

107:                                              ; preds = %57
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @CL_CGameRendering(i32 %108, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = call i32 (...) @SCR_DrawDemoRecording()
  br label %115

115:                                              ; preds = %113, %107
  br label %116

116:                                              ; preds = %115, %106, %90, %77, %67, %59
  br label %117

117:                                              ; preds = %116, %54, %51
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %152

121:                                              ; preds = %117
  %122 = call i32 (...) @Key_GetCatcher()
  %123 = load i32, i32* @KEYCATCH_UI, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i64, i64* @uivm, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i64, i64* @uivm, align 8
  %131 = load i32, i32* @UI_REFRESH, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 4
  %133 = call i64 (i64, i32, ...) @VM_Call(i64 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %126, %121
  %135 = call i32 (...) @Con_DrawConsole()
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_debuggraph, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_timegraph, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cl_debugMove, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145, %140, %134
  %151 = call i32 (...) @SCR_DrawDebugGraph()
  br label %152

152:                                              ; preds = %120, %150, %145
  ret void
}

declare dso_local i64 @VM_Call(i64, i32, ...) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @SCR_DrawCinematic(...) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i32 @CL_CGameRendering(i32, i32) #1

declare dso_local i32 @SCR_DrawDemoRecording(...) #1

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @Con_DrawConsole(...) #1

declare dso_local i32 @SCR_DrawDebugGraph(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
