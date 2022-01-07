; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_KeyDownEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_KeyDownEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@qtrue = common dso_local global i32 0, align 4
@keys = common dso_local global %struct.TYPE_3__* null, align 8
@anykeydown = common dso_local global i32 0, align 4
@K_ALT = common dso_local global i64 0, align 8
@K_ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@K_CONSOLE = common dso_local global i32 0, align 4
@K_SHIFT = common dso_local global i64 0, align 8
@K_ESCAPE = common dso_local global i32 0, align 4
@K_MOUSE1 = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"com_cameraMode\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"nextdemo\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KEYCATCH_MESSAGE = common dso_local global i32 0, align 4
@KEYCATCH_CGAME = common dso_local global i32 0, align 4
@cgvm = common dso_local global i64 0, align 8
@CG_EVENT_HANDLING = common dso_local global i32 0, align 4
@CGAME_EVENT_NONE = common dso_local global i32 0, align 4
@KEYCATCH_UI = common dso_local global i32 0, align 4
@CA_ACTIVE = common dso_local global i64 0, align 8
@uivm = common dso_local global i64 0, align 8
@UI_SET_ACTIVE_MENU = common dso_local global i32 0, align 4
@UIMENU_INGAME = common dso_local global i32 0, align 4
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@UIMENU_MAIN = common dso_local global i32 0, align 4
@UI_KEY_EVENT = common dso_local global i32 0, align 4
@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@CG_KEY_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_KeyDownEvent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @qtrue, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keys, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %5, i32* %10, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keys, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keys, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @anykeydown, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @anykeydown, align 4
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keys, align 8
  %30 = load i64, i64* @K_ALT, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @K_ENTER, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keys, align 8
  %41 = load i32, i32* @K_ENTER, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %220

48:                                               ; preds = %39
  %49 = call i32 @Cvar_VariableIntegerValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %220

54:                                               ; preds = %35, %28
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @K_CONSOLE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keys, align 8
  %60 = load i64, i64* @K_SHIFT, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @K_ESCAPE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %54
  %70 = call i32 (...) @Con_ToggleConsole_f()
  %71 = call i32 (...) @Key_ClearStates()
  br label %220

72:                                               ; preds = %65, %58
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 128
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @K_MOUSE1, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75, %72
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %84 = load i64, i64* @CA_CINEMATIC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82, %79
  %87 = call i32 (...) @Key_GetCatcher()
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = call i32 @Cvar_Set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @K_ESCAPE, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %86, %82, %75
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @K_ESCAPE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %159

100:                                              ; preds = %96
  %101 = call i32 (...) @Key_GetCatcher()
  %102 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @Message_Key(i32 %106)
  br label %220

108:                                              ; preds = %100
  %109 = call i32 (...) @Key_GetCatcher()
  %110 = load i32, i32* @KEYCATCH_CGAME, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = call i32 (...) @Key_GetCatcher()
  %115 = load i32, i32* @KEYCATCH_CGAME, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %114, %116
  %118 = call i32 @Key_SetCatcher(i32 %117)
  %119 = load i64, i64* @cgvm, align 8
  %120 = load i32, i32* @CG_EVENT_HANDLING, align 4
  %121 = load i32, i32* @CGAME_EVENT_NONE, align 4
  %122 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %119, i32 %120, i32 %121)
  br label %220

123:                                              ; preds = %108
  %124 = call i32 (...) @Key_GetCatcher()
  %125 = load i32, i32* @KEYCATCH_UI, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %153, label %128

128:                                              ; preds = %123
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %130 = load i64, i64* @CA_ACTIVE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = load i64, i64* @uivm, align 8
  %137 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %138 = load i32, i32* @UIMENU_INGAME, align 4
  %139 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %136, i32 %137, i32 %138)
  br label %152

140:                                              ; preds = %132, %128
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %142 = load i64, i64* @CA_DISCONNECTED, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = call i32 (...) @CL_Disconnect_f()
  %146 = call i32 (...) @S_StopAllSounds()
  %147 = load i64, i64* @uivm, align 8
  %148 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %149 = load i32, i32* @UIMENU_MAIN, align 4
  %150 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %144, %140
  br label %152

152:                                              ; preds = %151, %135
  br label %220

153:                                              ; preds = %123
  %154 = load i64, i64* @uivm, align 8
  %155 = load i32, i32* @UI_KEY_EVENT, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @qtrue, align 4
  %158 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %154, i32 %155, i32 %156, i32 %157)
  br label %220

159:                                              ; preds = %96
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @qtrue, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @CL_ParseBinding(i32 %160, i32 %161, i32 %162)
  %164 = call i32 (...) @Key_GetCatcher()
  %165 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @Console_Key(i32 %169)
  br label %220

171:                                              ; preds = %159
  %172 = call i32 (...) @Key_GetCatcher()
  %173 = load i32, i32* @KEYCATCH_UI, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load i64, i64* @uivm, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i64, i64* @uivm, align 8
  %181 = load i32, i32* @UI_KEY_EVENT, align 4
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @qtrue, align 4
  %184 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %180, i32 %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %179, %176
  br label %219

186:                                              ; preds = %171
  %187 = call i32 (...) @Key_GetCatcher()
  %188 = load i32, i32* @KEYCATCH_CGAME, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load i64, i64* @cgvm, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i64, i64* @cgvm, align 8
  %196 = load i32, i32* @CG_KEY_EVENT, align 4
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @qtrue, align 4
  %199 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %195, i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %194, %191
  br label %218

201:                                              ; preds = %186
  %202 = call i32 (...) @Key_GetCatcher()
  %203 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @Message_Key(i32 %207)
  br label %217

209:                                              ; preds = %201
  %210 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %211 = load i64, i64* @CA_DISCONNECTED, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @Console_Key(i32 %214)
  br label %216

216:                                              ; preds = %213, %209
  br label %217

217:                                              ; preds = %216, %206
  br label %218

218:                                              ; preds = %217, %200
  br label %219

219:                                              ; preds = %218, %185
  br label %220

220:                                              ; preds = %47, %48, %69, %105, %113, %152, %153, %219, %168
  ret void
}

declare dso_local i32 @Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @Con_ToggleConsole_f(...) #1

declare dso_local i32 @Key_ClearStates(...) #1

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i64 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @Message_Key(i32) #1

declare dso_local i32 @Key_SetCatcher(i32) #1

declare dso_local i32 @VM_Call(i64, i32, i32, ...) #1

declare dso_local i32 @CL_Disconnect_f(...) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i32 @CL_ParseBinding(i32, i32, i32) #1

declare dso_local i32 @Console_Key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
