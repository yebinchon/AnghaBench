; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_credits.c_UI_CreditMenu_Draw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_credits.c_UI_CreditMenu_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"id Software is:\00", align 1
@UI_CENTER = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_black = common dso_local global i32 0, align 4
@PROP_HEIGHT = common dso_local global double 0.000000e+00, align 8
@PROP_SMALL_SIZE_SCALE = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Programming\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"John Carmack, Robert A. Duffy, Jim Dose'\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Art\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Adrian Carmack, Kevin Cloud,\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Kenneth Scott, Seneca Menard, Fred Nilsson\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Game Designer\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Graeme Devine\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Level Design\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Tim Willits, Christian Antkow, Paul Jaquays\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"CEO\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Todd Hollenshead\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Director of Business Development\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Marty Stratton\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Biz Assist and id Mom\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Donna Jackson\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Development Assistance\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Eric Webb\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"To order: 1-800-idgames     www.quake3arena.com     www.idsoftware.com\00", align 1
@color_blue = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [69 x i8] c"Quake III Arena(c) 1999-2000, Id Software, Inc.  All Rights Reserved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_CreditMenu_Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_CreditMenu_Draw() #0 {
  %1 = alloca i32, align 4
  store i32 12, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @UI_CENTER, align 4
  %4 = load i32, i32* @UI_SMALLFONT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @color_black, align 4
  %7 = call i32 @UI_DrawProportionalString(i32 320, i32 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6)
  %8 = load double, double* @PROP_HEIGHT, align 8
  %9 = fmul double 1.420000e+00, %8
  %10 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %11 = fmul double %9, %10
  %12 = load i32, i32* %1, align 4
  %13 = sitofp i32 %12 to double
  %14 = fadd double %13, %11
  %15 = fptosi double %14 to i32
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @UI_CENTER, align 4
  %18 = load i32, i32* @UI_SMALLFONT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @color_black, align 4
  %21 = call i32 @UI_DrawProportionalString(i32 320, i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load double, double* @PROP_HEIGHT, align 8
  %23 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %24 = fmul double %22, %23
  %25 = load i32, i32* %1, align 4
  %26 = sitofp i32 %25 to double
  %27 = fadd double %26, %24
  %28 = fptosi double %27 to i32
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @UI_CENTER, align 4
  %31 = load i32, i32* @UI_SMALLFONT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @color_black, align 4
  %34 = call i32 @UI_DrawProportionalString(i32 320, i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load double, double* @PROP_HEIGHT, align 8
  %36 = fmul double 1.420000e+00, %35
  %37 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %38 = fmul double %36, %37
  %39 = load i32, i32* %1, align 4
  %40 = sitofp i32 %39 to double
  %41 = fadd double %40, %38
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @UI_CENTER, align 4
  %45 = load i32, i32* @UI_SMALLFONT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @color_black, align 4
  %48 = call i32 @UI_DrawProportionalString(i32 320, i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load double, double* @PROP_HEIGHT, align 8
  %50 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %51 = fmul double %49, %50
  %52 = load i32, i32* %1, align 4
  %53 = sitofp i32 %52 to double
  %54 = fadd double %53, %51
  %55 = fptosi double %54 to i32
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @UI_CENTER, align 4
  %58 = load i32, i32* @UI_SMALLFONT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @color_black, align 4
  %61 = call i32 @UI_DrawProportionalString(i32 320, i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load double, double* @PROP_HEIGHT, align 8
  %63 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %64 = fmul double %62, %63
  %65 = load i32, i32* %1, align 4
  %66 = sitofp i32 %65 to double
  %67 = fadd double %66, %64
  %68 = fptosi double %67 to i32
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* @UI_CENTER, align 4
  %71 = load i32, i32* @UI_SMALLFONT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @color_black, align 4
  %74 = call i32 @UI_DrawProportionalString(i32 320, i32 %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load double, double* @PROP_HEIGHT, align 8
  %76 = fmul double 1.420000e+00, %75
  %77 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %78 = fmul double %76, %77
  %79 = load i32, i32* %1, align 4
  %80 = sitofp i32 %79 to double
  %81 = fadd double %80, %78
  %82 = fptosi double %81 to i32
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @UI_CENTER, align 4
  %85 = load i32, i32* @UI_SMALLFONT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @color_black, align 4
  %88 = call i32 @UI_DrawProportionalString(i32 320, i32 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load double, double* @PROP_HEIGHT, align 8
  %90 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %91 = fmul double %89, %90
  %92 = load i32, i32* %1, align 4
  %93 = sitofp i32 %92 to double
  %94 = fadd double %93, %91
  %95 = fptosi double %94 to i32
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @UI_CENTER, align 4
  %98 = load i32, i32* @UI_SMALLFONT, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @color_black, align 4
  %101 = call i32 @UI_DrawProportionalString(i32 320, i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load double, double* @PROP_HEIGHT, align 8
  %103 = fmul double 1.420000e+00, %102
  %104 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %105 = fmul double %103, %104
  %106 = load i32, i32* %1, align 4
  %107 = sitofp i32 %106 to double
  %108 = fadd double %107, %105
  %109 = fptosi double %108 to i32
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* @UI_CENTER, align 4
  %112 = load i32, i32* @UI_SMALLFONT, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @color_black, align 4
  %115 = call i32 @UI_DrawProportionalString(i32 320, i32 %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load double, double* @PROP_HEIGHT, align 8
  %117 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %118 = fmul double %116, %117
  %119 = load i32, i32* %1, align 4
  %120 = sitofp i32 %119 to double
  %121 = fadd double %120, %118
  %122 = fptosi double %121 to i32
  store i32 %122, i32* %1, align 4
  %123 = load i32, i32* %1, align 4
  %124 = load i32, i32* @UI_CENTER, align 4
  %125 = load i32, i32* @UI_SMALLFONT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @color_black, align 4
  %128 = call i32 @UI_DrawProportionalString(i32 320, i32 %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load double, double* @PROP_HEIGHT, align 8
  %130 = fmul double 1.420000e+00, %129
  %131 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %132 = fmul double %130, %131
  %133 = load i32, i32* %1, align 4
  %134 = sitofp i32 %133 to double
  %135 = fadd double %134, %132
  %136 = fptosi double %135 to i32
  store i32 %136, i32* %1, align 4
  %137 = load i32, i32* %1, align 4
  %138 = load i32, i32* @UI_CENTER, align 4
  %139 = load i32, i32* @UI_SMALLFONT, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @color_black, align 4
  %142 = call i32 @UI_DrawProportionalString(i32 320, i32 %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load double, double* @PROP_HEIGHT, align 8
  %144 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %145 = fmul double %143, %144
  %146 = load i32, i32* %1, align 4
  %147 = sitofp i32 %146 to double
  %148 = fadd double %147, %145
  %149 = fptosi double %148 to i32
  store i32 %149, i32* %1, align 4
  %150 = load i32, i32* %1, align 4
  %151 = load i32, i32* @UI_CENTER, align 4
  %152 = load i32, i32* @UI_SMALLFONT, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @color_black, align 4
  %155 = call i32 @UI_DrawProportionalString(i32 320, i32 %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %153, i32 %154)
  %156 = load double, double* @PROP_HEIGHT, align 8
  %157 = fmul double 1.420000e+00, %156
  %158 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %159 = fmul double %157, %158
  %160 = load i32, i32* %1, align 4
  %161 = sitofp i32 %160 to double
  %162 = fadd double %161, %159
  %163 = fptosi double %162 to i32
  store i32 %163, i32* %1, align 4
  %164 = load i32, i32* %1, align 4
  %165 = load i32, i32* @UI_CENTER, align 4
  %166 = load i32, i32* @UI_SMALLFONT, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @color_black, align 4
  %169 = call i32 @UI_DrawProportionalString(i32 320, i32 %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load double, double* @PROP_HEIGHT, align 8
  %171 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %172 = fmul double %170, %171
  %173 = load i32, i32* %1, align 4
  %174 = sitofp i32 %173 to double
  %175 = fadd double %174, %172
  %176 = fptosi double %175 to i32
  store i32 %176, i32* %1, align 4
  %177 = load i32, i32* %1, align 4
  %178 = load i32, i32* @UI_CENTER, align 4
  %179 = load i32, i32* @UI_SMALLFONT, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @color_black, align 4
  %182 = call i32 @UI_DrawProportionalString(i32 320, i32 %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %180, i32 %181)
  %183 = load double, double* @PROP_HEIGHT, align 8
  %184 = fmul double 1.420000e+00, %183
  %185 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %186 = fmul double %184, %185
  %187 = load i32, i32* %1, align 4
  %188 = sitofp i32 %187 to double
  %189 = fadd double %188, %186
  %190 = fptosi double %189 to i32
  store i32 %190, i32* %1, align 4
  %191 = load i32, i32* %1, align 4
  %192 = load i32, i32* @UI_CENTER, align 4
  %193 = load i32, i32* @UI_SMALLFONT, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @color_black, align 4
  %196 = call i32 @UI_DrawProportionalString(i32 320, i32 %191, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load double, double* @PROP_HEIGHT, align 8
  %198 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %199 = fmul double %197, %198
  %200 = load i32, i32* %1, align 4
  %201 = sitofp i32 %200 to double
  %202 = fadd double %201, %199
  %203 = fptosi double %202 to i32
  store i32 %203, i32* %1, align 4
  %204 = load i32, i32* %1, align 4
  %205 = load i32, i32* @UI_CENTER, align 4
  %206 = load i32, i32* @UI_SMALLFONT, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @color_black, align 4
  %209 = call i32 @UI_DrawProportionalString(i32 320, i32 %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %207, i32 %208)
  %210 = load double, double* @PROP_HEIGHT, align 8
  %211 = fmul double 1.420000e+00, %210
  %212 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %213 = fmul double %211, %212
  %214 = load i32, i32* %1, align 4
  %215 = sitofp i32 %214 to double
  %216 = fadd double %215, %213
  %217 = fptosi double %216 to i32
  store i32 %217, i32* %1, align 4
  %218 = load i32, i32* %1, align 4
  %219 = load i32, i32* @UI_CENTER, align 4
  %220 = load i32, i32* @UI_SMALLFONT, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @color_black, align 4
  %223 = call i32 @UI_DrawProportionalString(i32 320, i32 %218, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %221, i32 %222)
  %224 = load double, double* @PROP_HEIGHT, align 8
  %225 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %226 = fmul double %224, %225
  %227 = load i32, i32* %1, align 4
  %228 = sitofp i32 %227 to double
  %229 = fadd double %228, %226
  %230 = fptosi double %229 to i32
  store i32 %230, i32* %1, align 4
  %231 = load i32, i32* %1, align 4
  %232 = load i32, i32* @UI_CENTER, align 4
  %233 = load i32, i32* @UI_SMALLFONT, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @color_black, align 4
  %236 = call i32 @UI_DrawProportionalString(i32 320, i32 %231, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %234, i32 %235)
  %237 = load double, double* @PROP_HEIGHT, align 8
  %238 = fmul double 1.350000e+00, %237
  %239 = load double, double* @PROP_SMALL_SIZE_SCALE, align 8
  %240 = fmul double %238, %239
  %241 = load i32, i32* %1, align 4
  %242 = sitofp i32 %241 to double
  %243 = fadd double %242, %240
  %244 = fptosi double %243 to i32
  store i32 %244, i32* %1, align 4
  %245 = load i32, i32* %1, align 4
  %246 = load i32, i32* @UI_CENTER, align 4
  %247 = load i32, i32* @UI_SMALLFONT, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @color_blue, align 4
  %250 = call i32 @UI_DrawString(i32 320, i32 %245, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.18, i64 0, i64 0), i32 %248, i32 %249)
  %251 = load i64, i64* @SMALLCHAR_HEIGHT, align 8
  %252 = load i32, i32* %1, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %253, %251
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %1, align 4
  %256 = load i32, i32* %1, align 4
  %257 = load i32, i32* @UI_CENTER, align 4
  %258 = load i32, i32* @UI_SMALLFONT, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @color_blue, align 4
  %261 = call i32 @UI_DrawString(i32 320, i32 %256, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i64 0, i64 0), i32 %259, i32 %260)
  ret void
}

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @UI_DrawString(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
