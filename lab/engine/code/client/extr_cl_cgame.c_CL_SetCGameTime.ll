; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_SetCGameTime.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_SetCGameTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32, i32, i32, i32, i32*, i32, i64, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_14__, i64, i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 (i32, i8*)* }

@clc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@CA_PRIMED = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@cl = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@qfalse = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CL_SetCGameTime: !cl.snap.valid\00", align 1
@sv_paused = common dso_local global %struct.TYPE_16__* null, align 8
@com_sv_running = common dso_local global %struct.TYPE_18__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"cl.snap.serverTime < cl.oldFrameServerTime\00", align 1
@cl_freezeDemo = common dso_local global %struct.TYPE_12__* null, align 8
@cl_timeNudge = common dso_local global %struct.TYPE_22__* null, align 8
@cls = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@cl_timedemo = common dso_local global %struct.TYPE_21__* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@MAX_TIMEDEMO_DURATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_SetCGameTime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 0), align 8
  %5 = load i64, i64* @CA_ACTIVE, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %34

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 0), align 8
  %9 = load i64, i64* @CA_PRIMED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %188

12:                                               ; preds = %7
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 8), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 9), align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** @qtrue, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 9), align 8
  br label %188

20:                                               ; preds = %15
  %21 = call i32 (...) @CL_ReadDemoMessage()
  br label %22

22:                                               ; preds = %20, %12
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 5), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @qfalse, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 5), align 8
  %27 = call i32 (...) @CL_FirstSnapshot()
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 0), align 8
  %30 = load i64, i64* @CA_ACTIVE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %188

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %0
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 4, i32 1), align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @ERR_DROP, align 4
  %39 = call i32 @Com_Error(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sv_paused, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = call i64 (...) @CL_CheckPaused()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** @com_sv_running, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %188

54:                                               ; preds = %48, %45, %40
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 4, i32 0), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 0), align 8
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @ERR_DROP, align 4
  %60 = call i32 @Com_Error(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 4, i32 0), align 8
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 0), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 8), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_freezeDemo, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %105

71:                                               ; preds = %65, %61
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** @cl_timeNudge, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = icmp slt i32 %75, -30
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -30, i32* %1, align 4
  br label %83

78:                                               ; preds = %71
  %79 = load i32, i32* %1, align 4
  %80 = icmp sgt i32 %79, 30
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 30, i32* %1, align 4
  br label %82

82:                                               ; preds = %81, %78
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 0), align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 2), align 8
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %1, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 1), align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 1), align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 3), align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 3), align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 1), align 4
  br label %94

94:                                               ; preds = %92, %83
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 1), align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 3), align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cls, i32 0, i32 0), align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 2), align 8
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 4, i32 0), align 8
  %100 = sub nsw i32 %99, 5
  %101 = icmp sge i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i8*, i8** @qtrue, align 8
  store i8* %103, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 6), align 8
  br label %104

104:                                              ; preds = %102, %94
  br label %105

105:                                              ; preds = %104, %70
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 5), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (...) @CL_AdjustTimeDelta()
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 8), align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %188

114:                                              ; preds = %110
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_timedemo, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %167

119:                                              ; preds = %114
  %120 = call i32 (...) @Sys_Milliseconds()
  store i32 %120, i32* %2, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 1), align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %2, align 4
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 2), align 4
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 1), align 8
  %125 = load i32, i32* @INT_MAX, align 4
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 4), align 4
  br label %126

126:                                              ; preds = %123, %119
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 2), align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %2, align 4
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 2), align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 5), align 8
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %126
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 4), align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* %3, align 4
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 4), align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 3), align 8
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %3, align 4
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 3), align 8
  br label %145

145:                                              ; preds = %143, %139
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @UCHAR_MAX, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @UCHAR_MAX, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32, i32* %3, align 4
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 6), align 8
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 5), align 8
  %155 = sub nsw i32 %154, 1
  %156 = load i32, i32* @MAX_TIMEDEMO_DURATIONS, align 4
  %157 = srem i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %153, i64 %158
  store i32 %152, i32* %159, align 4
  br label %160

160:                                              ; preds = %151, %126
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 5), align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 5), align 8
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 7), align 8
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 5), align 8
  %165 = mul nsw i32 %164, 50
  %166 = add nsw i32 %163, %165
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 1), align 4
  br label %167

167:                                              ; preds = %160, %114
  br label %168

168:                                              ; preds = %187, %167
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 1), align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 4, i32 0), align 8
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %168
  %173 = call i32 (...) @CL_ReadDemoMessage()
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @clc, i32 0, i32 0), align 8
  %175 = load i64, i64* @CA_ACTIVE, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = call %struct.TYPE_17__* (...) @dmlab_context()
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32 (i32, i8*)*, i32 (i32, i8*)** %180, align 8
  %182 = call %struct.TYPE_17__* (...) @dmlab_context()
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i8*, i8** @qtrue, align 8
  %186 = call i32 %181(i32 %184, i8* %185)
  br label %188

187:                                              ; preds = %172
  br label %168

188:                                              ; preds = %11, %18, %32, %53, %113, %177, %168
  ret void
}

declare dso_local i32 @CL_ReadDemoMessage(...) #1

declare dso_local i32 @CL_FirstSnapshot(...) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i64 @CL_CheckPaused(...) #1

declare dso_local i32 @CL_AdjustTimeDelta(...) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local %struct.TYPE_17__* @dmlab_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
