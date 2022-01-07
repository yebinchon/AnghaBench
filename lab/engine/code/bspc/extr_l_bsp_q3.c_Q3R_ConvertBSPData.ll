; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3R_ConvertBSPData.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3R_ConvertBSPData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32**, i32**, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32**, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32**, i32*, i32, i32, i32**, i32*, i32, i32, i32, i32, i32, i32, i32 }

@q3r_numbrushsides = common dso_local global i32 0, align 4
@q3_numbrushsides = common dso_local global i32 0, align 4
@q3_dbrushsides = common dso_local global %struct.TYPE_12__* null, align 8
@q3r_dbrushsides = common dso_local global %struct.TYPE_9__* null, align 8
@q3r_numDrawVerts = common dso_local global i32 0, align 4
@q3_numDrawVerts = common dso_local global i32 0, align 4
@q3_drawVerts = common dso_local global %struct.TYPE_10__* null, align 8
@q3r_drawVerts = common dso_local global %struct.TYPE_7__* null, align 8
@q3r_numDrawSurfaces = common dso_local global i32 0, align 4
@q3_numDrawSurfaces = common dso_local global i32 0, align 4
@q3_drawSurfaces = common dso_local global %struct.TYPE_11__* null, align 8
@q3r_drawSurfaces = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Q3R_ConvertBSPData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Q3R_ConvertBSPData() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @q3r_numbrushsides, align 4
  store i32 %3, i32* @q3_numbrushsides, align 4
  %4 = load i32, i32* @q3_numbrushsides, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = trunc i64 %6 to i32
  %8 = call i8* @GetMemory(i32 %7)
  %9 = bitcast i8* %8 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** @q3_dbrushsides, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @q3_numbrushsides, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @q3r_dbrushsides, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q3_dbrushsides, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i32 %20, i32* %25, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @q3r_dbrushsides, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q3_dbrushsides, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %14
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load i32, i32* @q3r_numDrawVerts, align 4
  store i32 %41, i32* @q3_numDrawVerts, align 4
  %42 = load i32, i32* @q3_numDrawVerts, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i8* @GetMemory(i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** @q3_drawVerts, align 8
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %184, %40
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @q3_numDrawVerts, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %187

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %95, %52
  %54 = load i32, i32* %2, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %98

56:                                               ; preds = %53
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q3r_drawVerts, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @q3_drawVerts, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %66, i32* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q3r_drawVerts, align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @q3_drawVerts, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %85, i32* %94, align 4
  br label %95

95:                                               ; preds = %56
  %96 = load i32, i32* %2, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %2, align 4
  br label %53

98:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %122, %98
  %100 = load i32, i32* %2, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q3r_drawVerts, align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @q3_drawVerts, align 8
  %114 = load i32, i32* %1, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %112, i32* %121, align 4
  br label %122

122:                                              ; preds = %102
  %123 = load i32, i32* %2, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %2, align 4
  br label %99

125:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %151, %125
  %127 = load i32, i32* %2, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %154

129:                                              ; preds = %126
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q3r_drawVerts, align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32**, i32*** %134, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %2, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** @q3_drawVerts, align 8
  %143 = load i32, i32* %1, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %141, i32* %150, align 4
  br label %151

151:                                              ; preds = %129
  %152 = load i32, i32* %2, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %2, align 4
  br label %126

154:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %180, %154
  %156 = load i32, i32* %2, align 4
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %183

158:                                              ; preds = %155
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q3r_drawVerts, align 8
  %160 = load i32, i32* %1, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32**, i32*** %163, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %2, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @q3_drawVerts, align 8
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %2, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %170, i32* %179, align 4
  br label %180

180:                                              ; preds = %158
  %181 = load i32, i32* %2, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %2, align 4
  br label %155

183:                                              ; preds = %155
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %1, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %1, align 4
  br label %48

187:                                              ; preds = %48
  %188 = load i32, i32* @q3r_numDrawSurfaces, align 4
  store i32 %188, i32* @q3_numDrawSurfaces, align 4
  %189 = load i32, i32* @q3_numDrawSurfaces, align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 %190, 4
  %192 = trunc i64 %191 to i32
  %193 = call i8* @GetMemory(i32 %192)
  %194 = bitcast i8* %193 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %194, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  store i32 0, i32* %1, align 4
  br label %195

195:                                              ; preds = %460, %187
  %196 = load i32, i32* %1, align 4
  %197 = load i32, i32* @q3_numDrawSurfaces, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %463

199:                                              ; preds = %195
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %201 = load i32, i32* %1, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 14
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %207 = load i32, i32* %1, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 15
  store i32 %205, i32* %210, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %212 = load i32, i32* %1, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 13
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %218 = load i32, i32* %1, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 14
  store i32 %216, i32* %221, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %223 = load i32, i32* %1, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 12
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %229 = load i32, i32* %1, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 13
  store i32 %227, i32* %232, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 11
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %240 = load i32, i32* %1, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 12
  store i32 %238, i32* %243, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %245 = load i32, i32* %1, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 10
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %251 = load i32, i32* %1, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 11
  store i32 %249, i32* %254, align 4
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %256 = load i32, i32* %1, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 9
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %262 = load i32, i32* %1, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 10
  store i32 %260, i32* %265, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %267 = load i32, i32* %1, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %273 = load i32, i32* %1, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 9
  store i32 %271, i32* %276, align 4
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %278 = load i32, i32* %1, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 7
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %286 = load i32, i32* %1, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 8
  store i32 %284, i32* %289, align 8
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %291 = load i32, i32* %1, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 6
  %295 = load i32**, i32*** %294, align 8
  %296 = getelementptr inbounds i32*, i32** %295, i64 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %301 = load i32, i32* %1, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 7
  store i32 %299, i32* %304, align 4
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %306 = load i32, i32* %1, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 6
  %310 = load i32**, i32*** %309, align 8
  %311 = getelementptr inbounds i32*, i32** %310, i64 0
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %316 = load i32, i32* %1, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 6
  store i32 %314, i32* %319, align 8
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %321 = load i32, i32* %1, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %327 = load i32, i32* %1, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 5
  store i32 %325, i32* %330, align 4
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %332 = load i32, i32* %1, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %338 = load i32, i32* %1, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 4
  store i32 %336, i32* %341, align 8
  store i32 0, i32* %2, align 4
  br label %342

342:                                              ; preds = %434, %199
  %343 = load i32, i32* %2, align 4
  %344 = icmp slt i32 %343, 3
  br i1 %344, label %345, label %437

345:                                              ; preds = %342
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %347 = load i32, i32* %1, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 3
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %2, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %357 = load i32, i32* %1, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 3
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %2, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  store i32 %355, i32* %364, align 4
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %366 = load i32, i32* %1, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 2
  %370 = load i32**, i32*** %369, align 8
  %371 = getelementptr inbounds i32*, i32** %370, i64 0
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %2, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %378 = load i32, i32* %1, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 2
  %382 = load i32**, i32*** %381, align 8
  %383 = getelementptr inbounds i32*, i32** %382, i64 0
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %2, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32 %376, i32* %387, align 4
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %389 = load i32, i32* %1, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 2
  %393 = load i32**, i32*** %392, align 8
  %394 = getelementptr inbounds i32*, i32** %393, i64 1
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %2, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %401 = load i32, i32* %1, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 2
  %405 = load i32**, i32*** %404, align 8
  %406 = getelementptr inbounds i32*, i32** %405, i64 1
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %2, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  store i32 %399, i32* %410, align 4
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %412 = load i32, i32* %1, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 2
  %416 = load i32**, i32*** %415, align 8
  %417 = getelementptr inbounds i32*, i32** %416, i64 2
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %2, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %424 = load i32, i32* %1, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i32 0, i32 2
  %428 = load i32**, i32*** %427, align 8
  %429 = getelementptr inbounds i32*, i32** %428, i64 2
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %2, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  store i32 %422, i32* %433, align 4
  br label %434

434:                                              ; preds = %345
  %435 = load i32, i32* %2, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %2, align 4
  br label %342

437:                                              ; preds = %342
  %438 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %439 = load i32, i32* %1, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %445 = load i32, i32* %1, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 1
  store i32 %443, i32* %448, align 4
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3r_drawSurfaces, align 8
  %450 = load i32, i32* %1, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.TYPE_11__*, %struct.TYPE_11__** @q3_drawSurfaces, align 8
  %456 = load i32, i32* %1, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 0
  store i32 %454, i32* %459, align 8
  br label %460

460:                                              ; preds = %437
  %461 = load i32, i32* %1, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %1, align 4
  br label %195

463:                                              ; preds = %195
  ret void
}

declare dso_local i8* @GetMemory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
