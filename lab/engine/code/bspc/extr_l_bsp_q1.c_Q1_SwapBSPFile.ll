; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q1.c_Q1_SwapBSPFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q1.c_Q1_SwapBSPFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32, i32, i32, i8**, i8**, i8** }
%struct.TYPE_17__ = type { i8** }
%struct.TYPE_18__ = type { i32, i8*, i8** }
%struct.TYPE_16__ = type { i32, i32, i8*** }
%struct.TYPE_21__ = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32, i8*, i8*, i8**, i8**, i8** }
%struct.TYPE_20__ = type { i32, i32, i8*, i8*, i8**, i8** }
%struct.TYPE_13__ = type { i32, i8** }
%struct.TYPE_12__ = type { i8** }
%struct.TYPE_15__ = type { i32, i32* }

@q1_nummodels = common dso_local global i32 0, align 4
@q1_dmodels = common dso_local global %struct.TYPE_14__* null, align 8
@Q1_MAX_MAP_HULLS = common dso_local global i32 0, align 4
@q1_numvertexes = common dso_local global i32 0, align 4
@q1_dvertexes = common dso_local global %struct.TYPE_17__* null, align 8
@q1_numplanes = common dso_local global i32 0, align 4
@q1_dplanes = common dso_local global %struct.TYPE_18__* null, align 8
@q1_numtexinfo = common dso_local global i32 0, align 4
@q1_texinfo = common dso_local global %struct.TYPE_16__* null, align 8
@q1_numfaces = common dso_local global i32 0, align 4
@q1_dfaces = common dso_local global %struct.TYPE_21__* null, align 8
@q1_numnodes = common dso_local global i32 0, align 4
@q1_dnodes = common dso_local global %struct.TYPE_19__* null, align 8
@q1_numleafs = common dso_local global i32 0, align 4
@q1_dleafs = common dso_local global %struct.TYPE_20__* null, align 8
@q1_numclipnodes = common dso_local global i32 0, align 4
@q1_dclipnodes = common dso_local global %struct.TYPE_13__* null, align 8
@q1_texdatasize = common dso_local global i64 0, align 8
@q1_dtexdata = common dso_local global i64 0, align 8
@q1_nummarksurfaces = common dso_local global i32 0, align 4
@q1_dmarksurfaces = common dso_local global i8** null, align 8
@q1_numsurfedges = common dso_local global i32 0, align 4
@q1_dsurfedges = common dso_local global i32* null, align 8
@q1_numedges = common dso_local global i32 0, align 4
@q1_dedges = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q1_SwapBSPFile(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %113, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @q1_nummodels, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %116

13:                                               ; preds = %9
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @q1_dmodels, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i64 %16
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %38, %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @Q1_MAX_MAP_HULLS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @LittleLong(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @LittleLong(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @LittleLong(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @LittleLong(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %109, %41
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %112

66:                                               ; preds = %63
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 6
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @LittleFloat(i8* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 6
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %74, i8** %80, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 5
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @LittleFloat(i8* %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 5
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %88, i8** %94, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 4
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @LittleFloat(i8* %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 4
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  br label %109

109:                                              ; preds = %66
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %63

112:                                              ; preds = %63
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %9

116:                                              ; preds = %9
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %150, %116
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @q1_numvertexes, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %146, %121
  %123 = load i32, i32* %4, align 4
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %125, label %149

125:                                              ; preds = %122
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** @q1_dvertexes, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @LittleFloat(i8* %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** @q1_dvertexes, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  store i8* %136, i8** %145, align 8
  br label %146

146:                                              ; preds = %125
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %122

149:                                              ; preds = %122
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %117

153:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %212, %153
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @q1_numplanes, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %215

158:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %183, %158
  %160 = load i32, i32* %4, align 4
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %186

162:                                              ; preds = %159
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 2
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @LittleFloat(i8* %172)
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 2
  %179 = load i8**, i8*** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  store i8* %173, i8** %182, align 8
  br label %183

183:                                              ; preds = %162
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %159

186:                                              ; preds = %159
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = call i8* @LittleFloat(i8* %192)
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %195 = load i32, i32* %3, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  store i8* %193, i8** %198, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i8* @LittleLong(i32 %204)
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %208 = load i32, i32* %3, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  store i32 %206, i32* %211, align 8
  br label %212

212:                                              ; preds = %186
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %154

215:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %291, %215
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* @q1_numtexinfo, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %294

220:                                              ; preds = %216
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %261, %220
  %222 = load i32, i32* %4, align 4
  %223 = icmp slt i32 %222, 2
  br i1 %223, label %224, label %264

224:                                              ; preds = %221
  store i32 0, i32* %5, align 4
  br label %225

225:                                              ; preds = %257, %224
  %226 = load i32, i32* %5, align 4
  %227 = icmp slt i32 %226, 4
  br i1 %227, label %228, label %260

228:                                              ; preds = %225
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %230 = load i32, i32* %3, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 2
  %234 = load i8***, i8**** %233, align 8
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8**, i8*** %234, i64 %236
  %238 = load i8**, i8*** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = call i8* @LittleFloat(i8* %242)
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %245 = load i32, i32* %3, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 2
  %249 = load i8***, i8**** %248, align 8
  %250 = load i32, i32* %4, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8**, i8*** %249, i64 %251
  %253 = load i8**, i8*** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  store i8* %243, i8** %256, align 8
  br label %257

257:                                              ; preds = %228
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %225

260:                                              ; preds = %225
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %4, align 4
  br label %221

264:                                              ; preds = %221
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %266 = load i32, i32* %3, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i8* @LittleLong(i32 %270)
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %274 = load i32, i32* %3, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  store i32 %272, i32* %277, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %279 = load i32, i32* %3, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @LittleLong(i32 %283)
  %285 = ptrtoint i8* %284 to i32
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %287 = load i32, i32* %3, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 1
  store i32 %285, i32* %290, align 4
  br label %291

291:                                              ; preds = %264
  %292 = load i32, i32* %3, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %3, align 4
  br label %216

294:                                              ; preds = %216
  store i32 0, i32* %3, align 4
  br label %295

295:                                              ; preds = %374, %294
  %296 = load i32, i32* %3, align 4
  %297 = load i32, i32* @q1_numfaces, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %377

299:                                              ; preds = %295
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %301 = load i32, i32* %3, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 5
  %305 = load i8*, i8** %304, align 8
  %306 = call i8* @LittleShort(i8* %305)
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %308 = load i32, i32* %3, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 5
  store i8* %306, i8** %311, align 8
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %313 = load i32, i32* %3, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 4
  %317 = load i8*, i8** %316, align 8
  %318 = call i8* @LittleShort(i8* %317)
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %320 = load i32, i32* %3, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 4
  store i8* %318, i8** %323, align 8
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %325 = load i32, i32* %3, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 3
  %329 = load i8*, i8** %328, align 8
  %330 = call i8* @LittleShort(i8* %329)
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %332 = load i32, i32* %3, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 3
  store i8* %330, i8** %335, align 8
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %337 = load i32, i32* %3, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i8* @LittleLong(i32 %341)
  %343 = ptrtoint i8* %342 to i32
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %345 = load i32, i32* %3, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 0
  store i32 %343, i32* %348, align 8
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %350 = load i32, i32* %3, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i8* @LittleLong(i32 %354)
  %356 = ptrtoint i8* %355 to i32
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %358 = load i32, i32* %3, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i32 0, i32 1
  store i32 %356, i32* %361, align 4
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %363 = load i32, i32* %3, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 2
  %367 = load i8*, i8** %366, align 8
  %368 = call i8* @LittleShort(i8* %367)
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %370 = load i32, i32* %3, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 2
  store i8* %368, i8** %373, align 8
  br label %374

374:                                              ; preds = %299
  %375 = load i32, i32* %3, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %3, align 4
  br label %295

377:                                              ; preds = %295
  store i32 0, i32* %3, align 4
  br label %378

378:                                              ; preds = %500, %377
  %379 = load i32, i32* %3, align 4
  %380 = load i32, i32* @q1_numnodes, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %503

382:                                              ; preds = %378
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %384 = load i32, i32* %3, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = call i8* @LittleLong(i32 %388)
  %390 = ptrtoint i8* %389 to i32
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %392 = load i32, i32* %3, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 0
  store i32 %390, i32* %395, align 8
  store i32 0, i32* %4, align 4
  br label %396

396:                                              ; preds = %440, %382
  %397 = load i32, i32* %4, align 4
  %398 = icmp slt i32 %397, 3
  br i1 %398, label %399, label %443

399:                                              ; preds = %396
  %400 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %401 = load i32, i32* %3, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i32 0, i32 5
  %405 = load i8**, i8*** %404, align 8
  %406 = load i32, i32* %4, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8*, i8** %405, i64 %407
  %409 = load i8*, i8** %408, align 8
  %410 = call i8* @LittleShort(i8* %409)
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %412 = load i32, i32* %3, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %414, i32 0, i32 5
  %416 = load i8**, i8*** %415, align 8
  %417 = load i32, i32* %4, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8*, i8** %416, i64 %418
  store i8* %410, i8** %419, align 8
  %420 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %421 = load i32, i32* %3, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %423, i32 0, i32 4
  %425 = load i8**, i8*** %424, align 8
  %426 = load i32, i32* %4, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8*, i8** %425, i64 %427
  %429 = load i8*, i8** %428, align 8
  %430 = call i8* @LittleShort(i8* %429)
  %431 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %432 = load i32, i32* %3, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %434, i32 0, i32 4
  %436 = load i8**, i8*** %435, align 8
  %437 = load i32, i32* %4, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8*, i8** %436, i64 %438
  store i8* %430, i8** %439, align 8
  br label %440

440:                                              ; preds = %399
  %441 = load i32, i32* %4, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %4, align 4
  br label %396

443:                                              ; preds = %396
  %444 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %445 = load i32, i32* %3, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i32 0, i32 3
  %449 = load i8**, i8*** %448, align 8
  %450 = getelementptr inbounds i8*, i8** %449, i64 0
  %451 = load i8*, i8** %450, align 8
  %452 = call i8* @LittleShort(i8* %451)
  %453 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %454 = load i32, i32* %3, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %456, i32 0, i32 3
  %458 = load i8**, i8*** %457, align 8
  %459 = getelementptr inbounds i8*, i8** %458, i64 0
  store i8* %452, i8** %459, align 8
  %460 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %461 = load i32, i32* %3, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %460, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %463, i32 0, i32 3
  %465 = load i8**, i8*** %464, align 8
  %466 = getelementptr inbounds i8*, i8** %465, i64 1
  %467 = load i8*, i8** %466, align 8
  %468 = call i8* @LittleShort(i8* %467)
  %469 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %470 = load i32, i32* %3, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %469, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %472, i32 0, i32 3
  %474 = load i8**, i8*** %473, align 8
  %475 = getelementptr inbounds i8*, i8** %474, i64 1
  store i8* %468, i8** %475, align 8
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %477 = load i32, i32* %3, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %479, i32 0, i32 2
  %481 = load i8*, i8** %480, align 8
  %482 = call i8* @LittleShort(i8* %481)
  %483 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %484 = load i32, i32* %3, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %483, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %486, i32 0, i32 2
  store i8* %482, i8** %487, align 8
  %488 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %489 = load i32, i32* %3, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %488, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %491, i32 0, i32 1
  %493 = load i8*, i8** %492, align 8
  %494 = call i8* @LittleShort(i8* %493)
  %495 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %496 = load i32, i32* %3, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %498, i32 0, i32 1
  store i8* %494, i8** %499, align 8
  br label %500

500:                                              ; preds = %443
  %501 = load i32, i32* %3, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %3, align 4
  br label %378

503:                                              ; preds = %378
  store i32 0, i32* %3, align 4
  br label %504

504:                                              ; preds = %607, %503
  %505 = load i32, i32* %3, align 4
  %506 = load i32, i32* @q1_numleafs, align 4
  %507 = icmp slt i32 %505, %506
  br i1 %507, label %508, label %610

508:                                              ; preds = %504
  %509 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %510 = load i32, i32* %3, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %509, i64 %511
  %513 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = call i8* @LittleLong(i32 %514)
  %516 = ptrtoint i8* %515 to i32
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %518 = load i32, i32* %3, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %520, i32 0, i32 0
  store i32 %516, i32* %521, align 8
  store i32 0, i32* %4, align 4
  br label %522

522:                                              ; preds = %566, %508
  %523 = load i32, i32* %4, align 4
  %524 = icmp slt i32 %523, 3
  br i1 %524, label %525, label %569

525:                                              ; preds = %522
  %526 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %527 = load i32, i32* %3, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %529, i32 0, i32 5
  %531 = load i8**, i8*** %530, align 8
  %532 = load i32, i32* %4, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8*, i8** %531, i64 %533
  %535 = load i8*, i8** %534, align 8
  %536 = call i8* @LittleShort(i8* %535)
  %537 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %538 = load i32, i32* %3, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %537, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %540, i32 0, i32 5
  %542 = load i8**, i8*** %541, align 8
  %543 = load i32, i32* %4, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8*, i8** %542, i64 %544
  store i8* %536, i8** %545, align 8
  %546 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %547 = load i32, i32* %3, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %546, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %549, i32 0, i32 4
  %551 = load i8**, i8*** %550, align 8
  %552 = load i32, i32* %4, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8*, i8** %551, i64 %553
  %555 = load i8*, i8** %554, align 8
  %556 = call i8* @LittleShort(i8* %555)
  %557 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %558 = load i32, i32* %3, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %557, i64 %559
  %561 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %560, i32 0, i32 4
  %562 = load i8**, i8*** %561, align 8
  %563 = load i32, i32* %4, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8*, i8** %562, i64 %564
  store i8* %556, i8** %565, align 8
  br label %566

566:                                              ; preds = %525
  %567 = load i32, i32* %4, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %4, align 4
  br label %522

569:                                              ; preds = %522
  %570 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %571 = load i32, i32* %3, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %573, i32 0, i32 3
  %575 = load i8*, i8** %574, align 8
  %576 = call i8* @LittleShort(i8* %575)
  %577 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %578 = load i32, i32* %3, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %577, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %580, i32 0, i32 3
  store i8* %576, i8** %581, align 8
  %582 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %583 = load i32, i32* %3, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %582, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %585, i32 0, i32 2
  %587 = load i8*, i8** %586, align 8
  %588 = call i8* @LittleShort(i8* %587)
  %589 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %590 = load i32, i32* %3, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %589, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %592, i32 0, i32 2
  store i8* %588, i8** %593, align 8
  %594 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %595 = load i32, i32* %3, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %594, i64 %596
  %598 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %597, i32 0, i32 1
  %599 = load i32, i32* %598, align 4
  %600 = call i8* @LittleLong(i32 %599)
  %601 = ptrtoint i8* %600 to i32
  %602 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %603 = load i32, i32* %3, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %602, i64 %604
  %606 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %605, i32 0, i32 1
  store i32 %601, i32* %606, align 4
  br label %607

607:                                              ; preds = %569
  %608 = load i32, i32* %3, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %3, align 4
  br label %504

610:                                              ; preds = %504
  store i32 0, i32* %3, align 4
  br label %611

611:                                              ; preds = %661, %610
  %612 = load i32, i32* %3, align 4
  %613 = load i32, i32* @q1_numclipnodes, align 4
  %614 = icmp slt i32 %612, %613
  br i1 %614, label %615, label %664

615:                                              ; preds = %611
  %616 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %617 = load i32, i32* %3, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %616, i64 %618
  %620 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = call i8* @LittleLong(i32 %621)
  %623 = ptrtoint i8* %622 to i32
  %624 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %625 = load i32, i32* %3, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %624, i64 %626
  %628 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %627, i32 0, i32 0
  store i32 %623, i32* %628, align 8
  %629 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %630 = load i32, i32* %3, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %629, i64 %631
  %633 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %632, i32 0, i32 1
  %634 = load i8**, i8*** %633, align 8
  %635 = getelementptr inbounds i8*, i8** %634, i64 0
  %636 = load i8*, i8** %635, align 8
  %637 = call i8* @LittleShort(i8* %636)
  %638 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %639 = load i32, i32* %3, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %638, i64 %640
  %642 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %641, i32 0, i32 1
  %643 = load i8**, i8*** %642, align 8
  %644 = getelementptr inbounds i8*, i8** %643, i64 0
  store i8* %637, i8** %644, align 8
  %645 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %646 = load i32, i32* %3, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %645, i64 %647
  %649 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %648, i32 0, i32 1
  %650 = load i8**, i8*** %649, align 8
  %651 = getelementptr inbounds i8*, i8** %650, i64 1
  %652 = load i8*, i8** %651, align 8
  %653 = call i8* @LittleShort(i8* %652)
  %654 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %655 = load i32, i32* %3, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %654, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %657, i32 0, i32 1
  %659 = load i8**, i8*** %658, align 8
  %660 = getelementptr inbounds i8*, i8** %659, i64 1
  store i8* %653, i8** %660, align 8
  br label %661

661:                                              ; preds = %615
  %662 = load i32, i32* %3, align 4
  %663 = add nsw i32 %662, 1
  store i32 %663, i32* %3, align 4
  br label %611

664:                                              ; preds = %611
  %665 = load i64, i64* @q1_texdatasize, align 8
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %667, label %714

667:                                              ; preds = %664
  %668 = load i64, i64* @q1_dtexdata, align 8
  %669 = inttoptr i64 %668 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %669, %struct.TYPE_15__** %8, align 8
  %670 = load i64, i64* %2, align 8
  %671 = icmp ne i64 %670, 0
  br i1 %671, label %672, label %676

672:                                              ; preds = %667
  %673 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %674 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  store i32 %675, i32* %6, align 4
  br label %682

676:                                              ; preds = %667
  %677 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %678 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 8
  %680 = call i8* @LittleLong(i32 %679)
  %681 = ptrtoint i8* %680 to i32
  store i32 %681, i32* %6, align 4
  br label %682

682:                                              ; preds = %676, %672
  %683 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %684 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 8
  %686 = call i8* @LittleLong(i32 %685)
  %687 = ptrtoint i8* %686 to i32
  %688 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %689 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %688, i32 0, i32 0
  store i32 %687, i32* %689, align 8
  store i32 0, i32* %3, align 4
  br label %690

690:                                              ; preds = %710, %682
  %691 = load i32, i32* %3, align 4
  %692 = load i32, i32* %6, align 4
  %693 = icmp slt i32 %691, %692
  br i1 %693, label %694, label %713

694:                                              ; preds = %690
  %695 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %696 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %695, i32 0, i32 1
  %697 = load i32*, i32** %696, align 8
  %698 = load i32, i32* %3, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32, i32* %697, i64 %699
  %701 = load i32, i32* %700, align 4
  %702 = call i8* @LittleLong(i32 %701)
  %703 = ptrtoint i8* %702 to i32
  %704 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %705 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %704, i32 0, i32 1
  %706 = load i32*, i32** %705, align 8
  %707 = load i32, i32* %3, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i32, i32* %706, i64 %708
  store i32 %703, i32* %709, align 4
  br label %710

710:                                              ; preds = %694
  %711 = load i32, i32* %3, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %3, align 4
  br label %690

713:                                              ; preds = %690
  br label %714

714:                                              ; preds = %713, %664
  store i32 0, i32* %3, align 4
  br label %715

715:                                              ; preds = %730, %714
  %716 = load i32, i32* %3, align 4
  %717 = load i32, i32* @q1_nummarksurfaces, align 4
  %718 = icmp slt i32 %716, %717
  br i1 %718, label %719, label %733

719:                                              ; preds = %715
  %720 = load i8**, i8*** @q1_dmarksurfaces, align 8
  %721 = load i32, i32* %3, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i8*, i8** %720, i64 %722
  %724 = load i8*, i8** %723, align 8
  %725 = call i8* @LittleShort(i8* %724)
  %726 = load i8**, i8*** @q1_dmarksurfaces, align 8
  %727 = load i32, i32* %3, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i8*, i8** %726, i64 %728
  store i8* %725, i8** %729, align 8
  br label %730

730:                                              ; preds = %719
  %731 = load i32, i32* %3, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %3, align 4
  br label %715

733:                                              ; preds = %715
  store i32 0, i32* %3, align 4
  br label %734

734:                                              ; preds = %750, %733
  %735 = load i32, i32* %3, align 4
  %736 = load i32, i32* @q1_numsurfedges, align 4
  %737 = icmp slt i32 %735, %736
  br i1 %737, label %738, label %753

738:                                              ; preds = %734
  %739 = load i32*, i32** @q1_dsurfedges, align 8
  %740 = load i32, i32* %3, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds i32, i32* %739, i64 %741
  %743 = load i32, i32* %742, align 4
  %744 = call i8* @LittleLong(i32 %743)
  %745 = ptrtoint i8* %744 to i32
  %746 = load i32*, i32** @q1_dsurfedges, align 8
  %747 = load i32, i32* %3, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i32, i32* %746, i64 %748
  store i32 %745, i32* %749, align 4
  br label %750

750:                                              ; preds = %738
  %751 = load i32, i32* %3, align 4
  %752 = add nsw i32 %751, 1
  store i32 %752, i32* %3, align 4
  br label %734

753:                                              ; preds = %734
  store i32 0, i32* %3, align 4
  br label %754

754:                                              ; preds = %791, %753
  %755 = load i32, i32* %3, align 4
  %756 = load i32, i32* @q1_numedges, align 4
  %757 = icmp slt i32 %755, %756
  br i1 %757, label %758, label %794

758:                                              ; preds = %754
  %759 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q1_dedges, align 8
  %760 = load i32, i32* %3, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %759, i64 %761
  %763 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %762, i32 0, i32 0
  %764 = load i8**, i8*** %763, align 8
  %765 = getelementptr inbounds i8*, i8** %764, i64 0
  %766 = load i8*, i8** %765, align 8
  %767 = call i8* @LittleShort(i8* %766)
  %768 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q1_dedges, align 8
  %769 = load i32, i32* %3, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %768, i64 %770
  %772 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %771, i32 0, i32 0
  %773 = load i8**, i8*** %772, align 8
  %774 = getelementptr inbounds i8*, i8** %773, i64 0
  store i8* %767, i8** %774, align 8
  %775 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q1_dedges, align 8
  %776 = load i32, i32* %3, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %775, i64 %777
  %779 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %778, i32 0, i32 0
  %780 = load i8**, i8*** %779, align 8
  %781 = getelementptr inbounds i8*, i8** %780, i64 1
  %782 = load i8*, i8** %781, align 8
  %783 = call i8* @LittleShort(i8* %782)
  %784 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q1_dedges, align 8
  %785 = load i32, i32* %3, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %784, i64 %786
  %788 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %787, i32 0, i32 0
  %789 = load i8**, i8*** %788, align 8
  %790 = getelementptr inbounds i8*, i8** %789, i64 1
  store i8* %783, i8** %790, align 8
  br label %791

791:                                              ; preds = %758
  %792 = load i32, i32* %3, align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* %3, align 4
  br label %754

794:                                              ; preds = %754
  ret void
}

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i8* @LittleFloat(i8*) #1

declare dso_local i8* @LittleShort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
