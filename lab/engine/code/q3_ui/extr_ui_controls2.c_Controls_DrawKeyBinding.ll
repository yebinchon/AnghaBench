; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_DrawKeyBinding.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_DrawKeyBinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i64, i64, i64, i64, i32 }

@g_bindings = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@listbar_color = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@UI_RIGHT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@text_color_highlight = common dso_local global i32 0, align 4
@UI_LEFT = common dso_local global i32 0, align 4
@UI_PULSE = common dso_local global i32 0, align 4
@s_controls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@UI_CENTER = common dso_local global i32 0, align 4
@UI_BLINK = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global double 0.000000e+00, align 8
@SCREEN_HEIGHT = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Waiting for new key ... ESCAPE to cancel\00", align 1
@colorBlack = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Press ENTER or CLICK to change\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Press BACKSPACE to clear\00", align 1
@QMF_GRAYED = common dso_local global i32 0, align 4
@text_color_disabled = common dso_local global i32 0, align 4
@controls_binding_color = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @Controls_DrawKeyBinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Controls_DrawKeyBinding(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_7__* @Menu_ItemAtCursor(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = icmp eq %struct.TYPE_7__* %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %41 = call i32 @strcpy(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %70

42:                                               ; preds = %1
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %45 = call i32 @trap_Key_KeynumToStringBuf(i32 %43, i8* %44, i32 32)
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %47 = call i32 @Q_strupr(i8* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %69

58:                                               ; preds = %42
  %59 = load i32, i32* %7, align 4
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %61 = call i32 @trap_Key_KeynumToStringBuf(i32 %59, i8* %60, i32 32)
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %63 = call i32 @Q_strupr(i8* %62)
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %65 = call i32 @strcat(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %68 = call i32 @strcat(i8* %66, i8* %67)
  br label %69

69:                                               ; preds = %58, %42
  br label %70

70:                                               ; preds = %69, %39
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %191

73:                                               ; preds = %70
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %85, %89
  %91 = add nsw i64 %90, 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %95, %99
  %101 = add nsw i64 %100, 1
  %102 = load i32, i32* @listbar_color, align 4
  %103 = call i32 @UI_FillRect(i64 %77, i64 %81, i64 %91, i64 %101, i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @UI_RIGHT, align 4
  %117 = load i32, i32* @UI_SMALLFONT, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @text_color_highlight, align 4
  %120 = call i32 @UI_DrawString(i32 %106, i32 %107, i8* %115, i32 %118, i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %5, align 4
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %126 = load i32, i32* @UI_LEFT, align 4
  %127 = load i32, i32* @UI_SMALLFONT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @UI_PULSE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @text_color_highlight, align 4
  %132 = call i32 @UI_DrawString(i32 %123, i32 %124, i8* %125, i32 %130, i32 %131)
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 0), align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %73
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @UI_CENTER, align 4
  %139 = load i32, i32* @UI_BLINK, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @UI_SMALLFONT, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @text_color_highlight, align 4
  %144 = call i32 @UI_DrawChar(i32 %136, i32 %137, i32 61, i32 %142, i32 %143)
  %145 = load double, double* @SCREEN_WIDTH, align 8
  %146 = fmul double %145, 5.000000e-01
  %147 = fptosi double %146 to i32
  %148 = load double, double* @SCREEN_HEIGHT, align 8
  %149 = fmul double %148, 8.000000e-01
  %150 = fptosi double %149 to i32
  %151 = load i32, i32* @UI_SMALLFONT, align 4
  %152 = load i32, i32* @UI_CENTER, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @UI_PULSE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @colorBlack, align 4
  %157 = call i32 @UI_DrawString(i32 %147, i32 %150, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %155, i32 %156)
  br label %190

158:                                              ; preds = %73
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @UI_CENTER, align 4
  %162 = load i32, i32* @UI_BLINK, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @UI_SMALLFONT, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @text_color_highlight, align 4
  %167 = call i32 @UI_DrawChar(i32 %159, i32 %160, i32 13, i32 %165, i32 %166)
  %168 = load double, double* @SCREEN_WIDTH, align 8
  %169 = fmul double %168, 5.000000e-01
  %170 = fptosi double %169 to i32
  %171 = load double, double* @SCREEN_HEIGHT, align 8
  %172 = fmul double %171, 7.800000e-01
  %173 = fptosi double %172 to i32
  %174 = load i32, i32* @UI_SMALLFONT, align 4
  %175 = load i32, i32* @UI_CENTER, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @colorBlack, align 4
  %178 = call i32 @UI_DrawString(i32 %170, i32 %173, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load double, double* @SCREEN_WIDTH, align 8
  %180 = fmul double %179, 5.000000e-01
  %181 = fptosi double %180 to i32
  %182 = load double, double* @SCREEN_HEIGHT, align 8
  %183 = fmul double %182, 8.200000e-01
  %184 = fptosi double %183 to i32
  %185 = load i32, i32* @UI_SMALLFONT, align 4
  %186 = load i32, i32* @UI_CENTER, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @colorBlack, align 4
  %189 = call i32 @UI_DrawString(i32 %181, i32 %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %158, %135
  br label %256

191:                                              ; preds = %70
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @QMF_GRAYED, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %227

199:                                              ; preds = %191
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %202 = sub nsw i32 %200, %201
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* @UI_RIGHT, align 4
  %213 = load i32, i32* @UI_SMALLFONT, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @text_color_disabled, align 4
  %216 = call i32 @UI_DrawString(i32 %202, i32 %203, i8* %211, i32 %214, i32 %215)
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %219 = add nsw i32 %217, %218
  %220 = load i32, i32* %5, align 4
  %221 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %222 = load i32, i32* @UI_LEFT, align 4
  %223 = load i32, i32* @UI_SMALLFONT, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @text_color_disabled, align 4
  %226 = call i32 @UI_DrawString(i32 %219, i32 %220, i8* %221, i32 %224, i32 %225)
  br label %255

227:                                              ; preds = %191
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load i32, i32* %5, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 2
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* @UI_RIGHT, align 4
  %241 = load i32, i32* @UI_SMALLFONT, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @controls_binding_color, align 4
  %244 = call i32 @UI_DrawString(i32 %230, i32 %231, i8* %239, i32 %242, i32 %243)
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %247 = add nsw i32 %245, %246
  %248 = load i32, i32* %5, align 4
  %249 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %250 = load i32, i32* @UI_LEFT, align 4
  %251 = load i32, i32* @UI_SMALLFONT, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @controls_binding_color, align 4
  %254 = call i32 @UI_DrawString(i32 %247, i32 %248, i8* %249, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %227, %199
  br label %256

256:                                              ; preds = %255, %190
  ret void
}

declare dso_local %struct.TYPE_7__* @Menu_ItemAtCursor(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @trap_Key_KeynumToStringBuf(i32, i8*, i32) #1

declare dso_local i32 @Q_strupr(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @UI_FillRect(i64, i64, i64, i64, i32) #1

declare dso_local i32 @UI_DrawString(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @UI_DrawChar(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
