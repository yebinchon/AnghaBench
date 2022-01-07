; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Frame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i64, float, i64, i32, i32, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64, i64 }

@com_cl_running = common dso_local global %struct.TYPE_18__* null, align 8
@cls = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@qfalse = common dso_local global i64 0, align 8
@uivm = common dso_local global i64 0, align 8
@UI_SET_ACTIVE_MENU = common dso_local global i32 0, align 4
@UIMENU_NEED_CD = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@KEYCATCH_UI = common dso_local global i32 0, align 4
@com_sv_running = common dso_local global %struct.TYPE_17__* null, align 8
@UIMENU_MAIN = common dso_local global i32 0, align 4
@cl_aviFrameRate = common dso_local global %struct.TYPE_23__* null, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@cl_forceavidemo = common dso_local global %struct.TYPE_22__* null, align 8
@com_timescale = common dso_local global %struct.TYPE_16__* null, align 8
@cl_autoRecordDemo = common dso_local global %struct.TYPE_13__* null, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%04d%02d%02d%02d%02d%02d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@cl = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@EXEC_NOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"record %s-%s-%s\00", align 1
@cl_timegraph = common dso_local global %struct.TYPE_21__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Frame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** @com_cl_running, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %191

16:                                               ; preds = %1
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 4), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i64, i64* @qfalse, align 8
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 4), align 8
  %21 = load i64, i64* @uivm, align 8
  %22 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %23 = load i32, i32* @UIMENU_NEED_CD, align 4
  %24 = call i32 @VM_Call(i64 %21, i32 %22, i32 %23)
  br label %49

25:                                               ; preds = %16
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 0), align 8
  %27 = load i64, i64* @CA_DISCONNECTED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = call i32 (...) @Key_GetCatcher()
  %31 = load i32, i32* @KEYCATCH_UI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** @com_sv_running, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @uivm, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = call i32 (...) @S_StopAllSounds()
  %44 = load i64, i64* @uivm, align 8
  %45 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %46 = load i32, i32* @UIMENU_MAIN, align 4
  %47 = call i32 @VM_Call(i64 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %39, %34, %29, %25
  br label %49

49:                                               ; preds = %48, %19
  %50 = call i64 (...) @CL_VideoRecording()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %49
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** @cl_aviFrameRate, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %52
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 0), align 8
  %62 = load i64, i64* @CA_ACTIVE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** @cl_forceavidemo, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %64, %60
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** @cl_aviFrameRate, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** @com_timescale, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %72, %75
  %77 = call float @MIN(i32 %76, float 1.000000e+03)
  store float %77, float* %3, align 4
  %78 = load float, float* %3, align 4
  %79 = fdiv float 1.000000e+03, %78
  %80 = call float @MAX(float %79, float 1.000000e+00)
  %81 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 1), align 8
  %82 = fadd float %80, %81
  store float %82, float* %4, align 4
  %83 = call i32 (...) @CL_TakeVideoFrame()
  %84 = load float, float* %4, align 4
  %85 = fptosi float %84 to i32
  store i32 %85, i32* %2, align 4
  %86 = load float, float* %4, align 4
  %87 = load i32, i32* %2, align 4
  %88 = sitofp i32 %87 to float
  %89 = fsub float %86, %88
  store float %89, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 1), align 8
  br label %90

90:                                               ; preds = %69, %64
  br label %91

91:                                               ; preds = %90, %57, %52, %49
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_autoRecordDemo, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %164

96:                                               ; preds = %91
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 0), align 8
  %98 = load i64, i64* @CA_ACTIVE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %153

100:                                              ; preds = %96
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 2), align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %153, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 4), align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %153, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @MAX_QPATH, align 4
  %108 = zext i32 %107 to i64
  %109 = call i8* @llvm.stacksave()
  store i8* %109, i8** %8, align 8
  %110 = alloca i8, i64 %108, align 16
  store i64 %108, i64* %9, align 8
  %111 = load i32, i32* @MAX_OSPATH, align 4
  %112 = zext i32 %111 to i64
  %113 = alloca i8, i64 %112, align 16
  store i64 %112, i64* %10, align 8
  %114 = call i32 @Com_RealTime(%struct.TYPE_15__* %5)
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 1900, %116
  %118 = inttoptr i64 %117 to i8*
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 1, %120
  %122 = inttoptr i64 %121 to i8*
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i8* (i8*, i8*, i8*, i8*, ...) @va(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %118, i8* %122, i8* %126, i32 %128, i32 %130, i32 %132)
  store i8* %133, i8** %6, align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 3), align 8
  %135 = load i32, i32* @MAX_OSPATH, align 4
  %136 = call i32 @Q_strncpyz(i8* %113, i32 %134, i32 %135)
  %137 = call i8* @strstr(i8* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %137, i8** %7, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %106
  %141 = load i8*, i8** %7, align 8
  store i8 46, i8* %141, align 1
  br label %142

142:                                              ; preds = %140, %106
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 4
  %144 = call i32 @COM_SkipPath(i32 %143)
  %145 = call i32 @Q_strncpyz(i8* %110, i32 %144, i32 4)
  %146 = trunc i64 %108 to i32
  %147 = call i32 @COM_StripExtension(i8* %110, i8* %110, i32 %146)
  %148 = load i32, i32* @EXEC_NOW, align 4
  %149 = load i8*, i8** %6, align 8
  %150 = call i8* (i8*, i8*, i8*, i8*, ...) @va(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %149, i8* %113, i8* %110)
  %151 = call i32 @Cbuf_ExecuteText(i32 %148, i8* %150)
  %152 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %152)
  br label %163

153:                                              ; preds = %103, %100, %96
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 0), align 8
  %155 = load i64, i64* @CA_ACTIVE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 2), align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 (...) @CL_StopRecord_f()
  br label %162

162:                                              ; preds = %160, %157, %153
  br label %163

163:                                              ; preds = %162, %142
  br label %164

164:                                              ; preds = %163, %91
  %165 = load i32, i32* %2, align 4
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 0), align 8
  %166 = load i32, i32* %2, align 4
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 1), align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 1), align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 2), align 8
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 2), align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_timegraph, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 0), align 8
  %176 = sitofp i32 %175 to double
  %177 = fmul double %176, 2.500000e-01
  %178 = call i32 @SCR_DebugGraph(double %177)
  br label %179

179:                                              ; preds = %174, %164
  %180 = call i32 (...) @CL_CheckUserinfo()
  %181 = call i32 (...) @CL_CheckTimeout()
  %182 = call i32 (...) @CL_SendCmd()
  %183 = call i32 (...) @CL_CheckForResend()
  %184 = call i32 (...) @CL_SetCGameTime()
  %185 = call i32 (...) @SCR_UpdateScreen()
  %186 = call i32 (...) @S_Update()
  %187 = call i32 (...) @SCR_RunCinematic()
  %188 = call i32 (...) @Con_RunConsole()
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 3), align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 3), align 4
  br label %191

191:                                              ; preds = %179, %15
  ret void
}

declare dso_local i32 @VM_Call(i64, i32, i32) #1

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i64 @CL_VideoRecording(...) #1

declare dso_local float @MIN(i32, float) #1

declare dso_local float @MAX(float, float) #1

declare dso_local i32 @CL_TakeVideoFrame(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Com_RealTime(%struct.TYPE_15__*) #1

declare dso_local i8* @va(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @COM_SkipPath(i32) #1

declare dso_local i32 @COM_StripExtension(i8*, i8*, i32) #1

declare dso_local i32 @Cbuf_ExecuteText(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CL_StopRecord_f(...) #1

declare dso_local i32 @SCR_DebugGraph(double) #1

declare dso_local i32 @CL_CheckUserinfo(...) #1

declare dso_local i32 @CL_CheckTimeout(...) #1

declare dso_local i32 @CL_SendCmd(...) #1

declare dso_local i32 @CL_CheckForResend(...) #1

declare dso_local i32 @CL_SetCGameTime(...) #1

declare dso_local i32 @SCR_UpdateScreen(...) #1

declare dso_local i32 @S_Update(...) #1

declare dso_local i32 @SCR_RunCinematic(...) #1

declare dso_local i32 @Con_RunConsole(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
