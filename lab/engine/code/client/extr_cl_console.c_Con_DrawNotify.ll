; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_DrawNotify.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_DrawNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32*)* }
%struct.TYPE_13__ = type { i32, i32*, i16*, i32, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@re = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@g_color_table = common dso_local global i32** null, align 8
@con = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@NUM_CON_TIMES = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@con_notifytime = common dso_local global %struct.TYPE_12__* null, align 8
@cl = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@KEYCATCH_UI = common dso_local global i32 0, align 4
@KEYCATCH_CGAME = common dso_local global i32 0, align 4
@cl_conXOffset = common dso_local global %struct.TYPE_15__* null, align 8
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i64 0, align 8
@KEYCATCH_MESSAGE = common dso_local global i32 0, align 4
@chat_team = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"say_team:\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"say:\00", align 1
@chatField = common dso_local global i32 0, align 4
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_DrawNotify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 7, i32* %7, align 4
  %8 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @re, i32 0, i32 0), align 8
  %9 = load i32**, i32*** @g_color_table, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 %8(i32* %13)
  store i32 0, i32* %2, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 0), align 8
  %16 = load i32, i32* @NUM_CON_TIMES, align 4
  %17 = sub nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %144, %0
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 0), align 8
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %147

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %144

27:                                               ; preds = %23
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 1), align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @NUM_CON_TIMES, align 4
  %31 = srem i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %144

38:                                               ; preds = %27
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0), align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @con_notifytime, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 1000
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %144

49:                                               ; preds = %38
  %50 = load i16*, i16** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 2), align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 3), align 8
  %53 = srem i32 %51, %52
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 4), align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %50, i64 %56
  store i16* %57, i16** %3, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cl, i32 0, i32 0, i32 0, i32 0), align 8
  %59 = load i64, i64* @PM_INTERMISSION, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = call i32 (...) @Key_GetCatcher()
  %63 = load i32, i32* @KEYCATCH_UI, align 4
  %64 = load i32, i32* @KEYCATCH_CGAME, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %144

69:                                               ; preds = %61, %49
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %135, %69
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 4), align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %138

74:                                               ; preds = %70
  %75 = load i16*, i16** %3, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, i16* %75, i64 %77
  %79 = load i16, i16* %78, align 2
  %80 = sext i16 %79 to i32
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %135

84:                                               ; preds = %74
  %85 = load i16*, i16** %3, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %85, i64 %87
  %89 = load i16, i16* %88, align 2
  %90 = sext i16 %89 to i32
  %91 = ashr i32 %90, 8
  %92 = trunc i32 %91 to i16
  %93 = call i32 @ColorIndexForNumber(i16 signext %92)
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %84
  %97 = load i16*, i16** %3, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16, i16* %97, i64 %99
  %101 = load i16, i16* %100, align 2
  %102 = sext i16 %101 to i32
  %103 = ashr i32 %102, 8
  %104 = trunc i32 %103 to i16
  %105 = call i32 @ColorIndexForNumber(i16 signext %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @re, i32 0, i32 0), align 8
  %107 = load i32**, i32*** @g_color_table, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 %106(i32* %111)
  br label %113

113:                                              ; preds = %96, %84
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cl_conXOffset, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 5), align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32, i32* %1, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %118, %123
  %125 = load i32, i32* %2, align 4
  %126 = load i16*, i16** %3, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i16, i16* %126, i64 %128
  %130 = load i16, i16* %129, align 2
  %131 = sext i16 %130 to i32
  %132 = and i32 %131, 255
  %133 = trunc i32 %132 to i16
  %134 = call i32 @SCR_DrawSmallChar(i64 %124, i32 %125, i16 signext %133)
  br label %135

135:                                              ; preds = %113, %83
  %136 = load i32, i32* %1, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %1, align 4
  br label %70

138:                                              ; preds = %70
  %139 = load i64, i64* @SMALLCHAR_HEIGHT, align 8
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %138, %68, %48, %37, %26
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %19

147:                                              ; preds = %19
  %148 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @re, i32 0, i32 0), align 8
  %149 = call i32 %148(i32* null)
  %150 = call i32 (...) @Key_GetCatcher()
  %151 = load i32, i32* @KEYCATCH_UI, align 4
  %152 = load i32, i32* @KEYCATCH_CGAME, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %188

157:                                              ; preds = %147
  %158 = call i32 (...) @Key_GetCatcher()
  %159 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %157
  %163 = load i64, i64* @chat_team, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* %2, align 4
  %167 = load i32, i32* @qfalse, align 4
  %168 = call i32 @SCR_DrawBigString(i32 8, i32 %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), float 1.000000e+00, i32 %167)
  store i32 10, i32* %6, align 4
  br label %173

169:                                              ; preds = %162
  %170 = load i32, i32* %2, align 4
  %171 = load i32, i32* @qfalse, align 4
  %172 = call i32 @SCR_DrawBigString(i32 8, i32 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float 1.000000e+00, i32 %171)
  store i32 5, i32* %6, align 4
  br label %173

173:                                              ; preds = %169, %165
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* %2, align 4
  %178 = load i64, i64* @SCREEN_WIDTH, align 8
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  %181 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %178, %183
  %185 = load i32, i32* @qtrue, align 4
  %186 = load i32, i32* @qtrue, align 4
  %187 = call i32 @Field_BigDraw(i32* @chatField, i32 %176, i32 %177, i64 %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %156, %173, %157
  ret void
}

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @ColorIndexForNumber(i16 signext) #1

declare dso_local i32 @SCR_DrawSmallChar(i64, i32, i16 signext) #1

declare dso_local i32 @SCR_DrawBigString(i32, i32, i8*, float, i32) #1

declare dso_local i32 @Field_BigDraw(i32*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
