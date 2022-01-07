; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_DrawSolidConsole.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_DrawSolidConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { float, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i32, i16*, i64 }
%struct.TYPE_6__ = type { i32 (i32*)* }

@cls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@con = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SCREEN_HEIGHT = common dso_local global float 0.000000e+00, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@re = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@g_color_table = common dso_local global i32** null, align 8
@COLOR_RED = common dso_local global i32 0, align 4
@Q3_VERSION = common dso_local global i16* null, align 8
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_DrawSolidConsole(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store float %0, float* %2, align 4
  %12 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 0), align 8
  %13 = load float, float* %2, align 4
  %14 = fmul float %12, %13
  %15 = fptosi float %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %250

19:                                               ; preds = %1
  %20 = load i32, i32* %9, align 4
  %21 = sitofp i32 %20 to float
  %22 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 0), align 8
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 0), align 8
  %26 = fptosi float %25 to i32
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %19
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 7), align 8
  %28 = call i32 @SCR_AdjustFrom640(i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 7), i32* null, i32* null, i32* null)
  %29 = load float, float* %2, align 4
  %30 = load float, float* @SCREEN_HEIGHT, align 4
  %31 = fmul float %29, %30
  %32 = fptosi float %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @SCREEN_WIDTH, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 1), align 8
  %40 = call i32 @SCR_DrawPic(i32 0, i32 0, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %35
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 1, i32* %43, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 0, i32* %45, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SCREEN_WIDTH, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @SCR_FillRect(i32 0, i32 %50, i32 %51, i32 2, i32* %52)
  %54 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %55 = load i32**, i32*** @g_color_table, align 8
  %56 = load i32, i32* @COLOR_RED, align 4
  %57 = call i64 @ColorIndex(i32 %56)
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 %54(i32* %59)
  %61 = load i16*, i16** @Q3_VERSION, align 8
  %62 = call i32 @strlen(i16* %61)
  store i32 %62, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %86, %41
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 1), align 8
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %68, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i16*, i16** @Q3_VERSION, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16, i16* %80, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = call i32 @SCR_DrawSmallChar(i64 %76, i32 %79, i16 signext %84)
  br label %86

86:                                               ; preds = %67
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %63

89:                                               ; preds = %63
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 0), align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %98 = mul nsw i32 %97, 3
  %99 = sub nsw i32 %96, %98
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 1), align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 2), align 8
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %89
  %104 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %105 = load i32**, i32*** @g_color_table, align 8
  %106 = load i32, i32* @COLOR_RED, align 4
  %107 = call i64 @ColorIndex(i32 %106)
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 %104(i32* %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %125, %103
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 3), align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 7), align 8
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %116, %121
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @SCR_DrawSmallChar(i64 %122, i32 %123, i16 signext 94)
  br label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 4
  store i32 %127, i32* %4, align 4
  br label %111

128:                                              ; preds = %111
  %129 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %128, %89
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 1), align 4
  store i32 %135, i32* %8, align 4
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 4), align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %138, %134
  store i32 7, i32* %10, align 4
  %142 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %143 = load i32**, i32*** @g_color_table, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 %142(i32* %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %238, %141
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %246

153:                                              ; preds = %149
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %246

157:                                              ; preds = %153
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 2), align 8
  %159 = load i32, i32* %8, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 5), align 8
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %238

164:                                              ; preds = %157
  %165 = load i16*, i16** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 6), align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 5), align 8
  %168 = srem i32 %166, %167
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 3), align 4
  %170 = mul nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i16, i16* %165, i64 %171
  store i16* %172, i16** %7, align 8
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %234, %164
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 3), align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %237

177:                                              ; preds = %173
  %178 = load i16*, i16** %7, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i16, i16* %178, i64 %180
  %182 = load i16, i16* %181, align 2
  %183 = sext i16 %182 to i32
  %184 = and i32 %183, 255
  %185 = icmp eq i32 %184, 32
  br i1 %185, label %186, label %187

186:                                              ; preds = %177
  br label %234

187:                                              ; preds = %177
  %188 = load i16*, i16** %7, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i16, i16* %188, i64 %190
  %192 = load i16, i16* %191, align 2
  %193 = sext i16 %192 to i32
  %194 = ashr i32 %193, 8
  %195 = trunc i32 %194 to i16
  %196 = call i32 @ColorIndexForNumber(i16 signext %195)
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %187
  %200 = load i16*, i16** %7, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i16, i16* %200, i64 %202
  %204 = load i16, i16* %203, align 2
  %205 = sext i16 %204 to i32
  %206 = ashr i32 %205, 8
  %207 = trunc i32 %206 to i16
  %208 = call i32 @ColorIndexForNumber(i16 signext %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %210 = load i32**, i32*** @g_color_table, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 %209(i32* %214)
  br label %216

216:                                              ; preds = %199, %187
  %217 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 7), align 8
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, 1
  %220 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %217, %222
  %224 = load i32, i32* %5, align 4
  %225 = load i16*, i16** %7, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i16, i16* %225, i64 %227
  %229 = load i16, i16* %228, align 2
  %230 = sext i16 %229 to i32
  %231 = and i32 %230, 255
  %232 = trunc i32 %231 to i16
  %233 = call i32 @SCR_DrawSmallChar(i64 %223, i32 %224, i16 signext %232)
  br label %234

234:                                              ; preds = %216, %186
  %235 = load i32, i32* %4, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %4, align 4
  br label %173

237:                                              ; preds = %173
  br label %238

238:                                              ; preds = %237, %163
  %239 = load i32, i32* %3, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %3, align 4
  %241 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %242 = load i32, i32* %5, align 4
  %243 = sub nsw i32 %242, %241
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %8, align 4
  br label %149

246:                                              ; preds = %156, %149
  %247 = call i32 (...) @Con_DrawInput()
  %248 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %249 = call i32 %248(i32* null)
  br label %250

250:                                              ; preds = %246, %18
  ret void
}

declare dso_local i32 @SCR_AdjustFrom640(i64*, i32*, i32*, i32*) #1

declare dso_local i32 @SCR_DrawPic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCR_FillRect(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ColorIndex(i32) #1

declare dso_local i32 @strlen(i16*) #1

declare dso_local i32 @SCR_DrawSmallChar(i64, i32, i16 signext) #1

declare dso_local i32 @ColorIndexForNumber(i16 signext) #1

declare dso_local i32 @Con_DrawInput(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
