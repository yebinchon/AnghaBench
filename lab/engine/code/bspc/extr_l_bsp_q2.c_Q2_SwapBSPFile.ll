; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_Q2_SwapBSPFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_Q2_SwapBSPFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i8**, i8**, i8** }
%struct.TYPE_23__ = type { i8** }
%struct.TYPE_24__ = type { i32, i8*, i8** }
%struct.TYPE_21__ = type { i32, i32, i32, i8*** }
%struct.TYPE_27__ = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_25__ = type { i32, i32*, i8*, i8*, i8**, i8** }
%struct.TYPE_26__ = type { i32, i8*, i8*, i8*, i8*, i8**, i8**, i8*, i8* }
%struct.TYPE_15__ = type { i8** }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_22__ = type { i32, i32** }

@nummodels = common dso_local global i32 0, align 4
@dmodels = common dso_local global %struct.TYPE_20__* null, align 8
@numvertexes = common dso_local global i32 0, align 4
@dvertexes = common dso_local global %struct.TYPE_23__* null, align 8
@numplanes = common dso_local global i32 0, align 4
@dplanes = common dso_local global %struct.TYPE_24__* null, align 8
@numtexinfo = common dso_local global i32 0, align 4
@texinfo = common dso_local global %struct.TYPE_21__* null, align 8
@numfaces = common dso_local global i32 0, align 4
@dfaces = common dso_local global %struct.TYPE_27__* null, align 8
@numnodes = common dso_local global i32 0, align 4
@dnodes = common dso_local global %struct.TYPE_25__* null, align 8
@numleafs = common dso_local global i32 0, align 4
@dleafs = common dso_local global %struct.TYPE_26__* null, align 8
@numleaffaces = common dso_local global i32 0, align 4
@dleaffaces = common dso_local global i8** null, align 8
@numleafbrushes = common dso_local global i32 0, align 4
@dleafbrushes = common dso_local global i8** null, align 8
@numsurfedges = common dso_local global i32 0, align 4
@dsurfedges = common dso_local global i32* null, align 8
@numedges = common dso_local global i32 0, align 4
@dedges = common dso_local global %struct.TYPE_15__* null, align 8
@numbrushes = common dso_local global i32 0, align 4
@dbrushes = common dso_local global %struct.TYPE_17__* null, align 8
@numareas = common dso_local global i32 0, align 4
@dareas = common dso_local global %struct.TYPE_18__* null, align 8
@numareaportals = common dso_local global i32 0, align 4
@dareaportals = common dso_local global %struct.TYPE_19__* null, align 8
@numbrushsides = common dso_local global i32 0, align 4
@dbrushsides = common dso_local global %struct.TYPE_16__* null, align 8
@dvis = common dso_local global %struct.TYPE_22__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_SwapBSPFile(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %87, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @nummodels, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %90

11:                                               ; preds = %7
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** @dmodels, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i64 %14
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @LittleLong(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @LittleLong(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @LittleLong(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %83, %11
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %86

40:                                               ; preds = %37
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 5
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @LittleFloat(i8* %47)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 5
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 4
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @LittleFloat(i8* %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 4
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %62, i8** %68, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 3
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @LittleFloat(i8* %75)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 3
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  br label %83

83:                                               ; preds = %40
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %37

86:                                               ; preds = %37
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %7

90:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %124, %90
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @numvertexes, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %123

99:                                               ; preds = %96
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** @dvertexes, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @LittleFloat(i8* %109)
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** @dvertexes, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %110, i8** %119, align 8
  br label %120

120:                                              ; preds = %99
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %96

123:                                              ; preds = %96
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %91

127:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %186, %127
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @numplanes, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %189

132:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %157, %132
  %134 = load i32, i32* %4, align 4
  %135 = icmp slt i32 %134, 3
  br i1 %135, label %136, label %160

136:                                              ; preds = %133
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** @dplanes, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 2
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @LittleFloat(i8* %146)
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** @dplanes, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 2
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  store i8* %147, i8** %156, align 8
  br label %157

157:                                              ; preds = %136
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %133

160:                                              ; preds = %133
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** @dplanes, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i8* @LittleFloat(i8* %166)
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** @dplanes, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 1
  store i8* %167, i8** %172, align 8
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** @dplanes, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @LittleLong(i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** @dplanes, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  store i32 %180, i32* %185, align 8
  br label %186

186:                                              ; preds = %160
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %3, align 4
  br label %128

189:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %278, %189
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* @numtexinfo, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %281

194:                                              ; preds = %190
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %235, %194
  %196 = load i32, i32* %4, align 4
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %198, label %238

198:                                              ; preds = %195
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %231, %198
  %200 = load i32, i32* %5, align 4
  %201 = icmp slt i32 %200, 4
  br i1 %201, label %202, label %234

202:                                              ; preds = %199
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** @texinfo, align 8
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 3
  %208 = load i8***, i8**** %207, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8**, i8*** %208, i64 %210
  %212 = load i8**, i8*** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i8* @LittleFloat(i8* %216)
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** @texinfo, align 8
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 3
  %223 = load i8***, i8**** %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8**, i8*** %223, i64 %225
  %227 = load i8**, i8*** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  store i8* %217, i8** %230, align 8
  br label %231

231:                                              ; preds = %202
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %5, align 4
  br label %199

234:                                              ; preds = %199
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %4, align 4
  br label %195

238:                                              ; preds = %195
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** @texinfo, align 8
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i8* @LittleLong(i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** @texinfo, align 8
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  store i32 %246, i32* %251, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** @texinfo, align 8
  %253 = load i32, i32* %3, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @LittleLong(i32 %257)
  %259 = ptrtoint i8* %258 to i32
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** @texinfo, align 8
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 1
  store i32 %259, i32* %264, align 4
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** @texinfo, align 8
  %266 = load i32, i32* %3, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i8* @LittleLong(i32 %270)
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** @texinfo, align 8
  %274 = load i32, i32* %3, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 2
  store i32 %272, i32* %277, align 8
  br label %278

278:                                              ; preds = %238
  %279 = load i32, i32* %3, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %3, align 4
  br label %190

281:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %282

282:                                              ; preds = %361, %281
  %283 = load i32, i32* %3, align 4
  %284 = load i32, i32* @numfaces, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %364

286:                                              ; preds = %282
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %288 = load i32, i32* %3, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 5
  %292 = load i8*, i8** %291, align 8
  %293 = call i8* @LittleShort(i8* %292)
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %295 = load i32, i32* %3, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 5
  store i8* %293, i8** %298, align 8
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %300 = load i32, i32* %3, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 4
  %304 = load i8*, i8** %303, align 8
  %305 = call i8* @LittleShort(i8* %304)
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %307 = load i32, i32* %3, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 4
  store i8* %305, i8** %310, align 8
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %312 = load i32, i32* %3, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 3
  %316 = load i8*, i8** %315, align 8
  %317 = call i8* @LittleShort(i8* %316)
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %319 = load i32, i32* %3, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %321, i32 0, i32 3
  store i8* %317, i8** %322, align 8
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %324 = load i32, i32* %3, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = call i8* @LittleLong(i32 %328)
  %330 = ptrtoint i8* %329 to i32
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %332 = load i32, i32* %3, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 0
  store i32 %330, i32* %335, align 8
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %337 = load i32, i32* %3, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i8* @LittleLong(i32 %341)
  %343 = ptrtoint i8* %342 to i32
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %345 = load i32, i32* %3, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %347, i32 0, i32 1
  store i32 %343, i32* %348, align 4
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %350 = load i32, i32* %3, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = call i8* @LittleShort(i8* %354)
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dfaces, align 8
  %357 = load i32, i32* %3, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 0, i32 2
  store i8* %355, i8** %360, align 8
  br label %361

361:                                              ; preds = %286
  %362 = load i32, i32* %3, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %3, align 4
  br label %282

364:                                              ; preds = %282
  store i32 0, i32* %3, align 4
  br label %365

365:                                              ; preds = %489, %364
  %366 = load i32, i32* %3, align 4
  %367 = load i32, i32* @numnodes, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %492

369:                                              ; preds = %365
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %371 = load i32, i32* %3, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = call i8* @LittleLong(i32 %375)
  %377 = ptrtoint i8* %376 to i32
  %378 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %379 = load i32, i32* %3, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %381, i32 0, i32 0
  store i32 %377, i32* %382, align 8
  store i32 0, i32* %4, align 4
  br label %383

383:                                              ; preds = %427, %369
  %384 = load i32, i32* %4, align 4
  %385 = icmp slt i32 %384, 3
  br i1 %385, label %386, label %430

386:                                              ; preds = %383
  %387 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %388 = load i32, i32* %3, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 5
  %392 = load i8**, i8*** %391, align 8
  %393 = load i32, i32* %4, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8*, i8** %392, i64 %394
  %396 = load i8*, i8** %395, align 8
  %397 = call i8* @LittleShort(i8* %396)
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %399 = load i32, i32* %3, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 5
  %403 = load i8**, i8*** %402, align 8
  %404 = load i32, i32* %4, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8*, i8** %403, i64 %405
  store i8* %397, i8** %406, align 8
  %407 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %408 = load i32, i32* %3, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %410, i32 0, i32 4
  %412 = load i8**, i8*** %411, align 8
  %413 = load i32, i32* %4, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8*, i8** %412, i64 %414
  %416 = load i8*, i8** %415, align 8
  %417 = call i8* @LittleShort(i8* %416)
  %418 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %419 = load i32, i32* %3, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %421, i32 0, i32 4
  %423 = load i8**, i8*** %422, align 8
  %424 = load i32, i32* %4, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8*, i8** %423, i64 %425
  store i8* %417, i8** %426, align 8
  br label %427

427:                                              ; preds = %386
  %428 = load i32, i32* %4, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %4, align 4
  br label %383

430:                                              ; preds = %383
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %432 = load i32, i32* %3, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %434, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 0
  %438 = load i32, i32* %437, align 4
  %439 = call i8* @LittleLong(i32 %438)
  %440 = ptrtoint i8* %439 to i32
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %442 = load i32, i32* %3, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 0
  store i32 %440, i32* %447, align 4
  %448 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %449 = load i32, i32* %3, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %451, i32 0, i32 1
  %453 = load i32*, i32** %452, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 1
  %455 = load i32, i32* %454, align 4
  %456 = call i8* @LittleLong(i32 %455)
  %457 = ptrtoint i8* %456 to i32
  %458 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %459 = load i32, i32* %3, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %461, i32 0, i32 1
  %463 = load i32*, i32** %462, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 1
  store i32 %457, i32* %464, align 4
  %465 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %466 = load i32, i32* %3, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %468, i32 0, i32 3
  %470 = load i8*, i8** %469, align 8
  %471 = call i8* @LittleShort(i8* %470)
  %472 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %473 = load i32, i32* %3, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %472, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %475, i32 0, i32 3
  store i8* %471, i8** %476, align 8
  %477 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %478 = load i32, i32* %3, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %480, i32 0, i32 2
  %482 = load i8*, i8** %481, align 8
  %483 = call i8* @LittleShort(i8* %482)
  %484 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dnodes, align 8
  %485 = load i32, i32* %3, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %484, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %487, i32 0, i32 2
  store i8* %483, i8** %488, align 8
  br label %489

489:                                              ; preds = %430
  %490 = load i32, i32* %3, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %3, align 4
  br label %365

492:                                              ; preds = %365
  store i32 0, i32* %3, align 4
  br label %493

493:                                              ; preds = %631, %492
  %494 = load i32, i32* %3, align 4
  %495 = load i32, i32* @numleafs, align 4
  %496 = icmp slt i32 %494, %495
  br i1 %496, label %497, label %634

497:                                              ; preds = %493
  %498 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %499 = load i32, i32* %3, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %498, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = call i8* @LittleLong(i32 %503)
  %505 = ptrtoint i8* %504 to i32
  %506 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %507 = load i32, i32* %3, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %506, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %509, i32 0, i32 0
  store i32 %505, i32* %510, align 8
  %511 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %512 = load i32, i32* %3, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %511, i64 %513
  %515 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %514, i32 0, i32 8
  %516 = load i8*, i8** %515, align 8
  %517 = call i8* @LittleShort(i8* %516)
  %518 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %519 = load i32, i32* %3, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %521, i32 0, i32 8
  store i8* %517, i8** %522, align 8
  %523 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %524 = load i32, i32* %3, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %526, i32 0, i32 7
  %528 = load i8*, i8** %527, align 8
  %529 = call i8* @LittleShort(i8* %528)
  %530 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %531 = load i32, i32* %3, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %530, i64 %532
  %534 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %533, i32 0, i32 7
  store i8* %529, i8** %534, align 8
  store i32 0, i32* %4, align 4
  br label %535

535:                                              ; preds = %579, %497
  %536 = load i32, i32* %4, align 4
  %537 = icmp slt i32 %536, 3
  br i1 %537, label %538, label %582

538:                                              ; preds = %535
  %539 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %540 = load i32, i32* %3, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %539, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %542, i32 0, i32 6
  %544 = load i8**, i8*** %543, align 8
  %545 = load i32, i32* %4, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i8*, i8** %544, i64 %546
  %548 = load i8*, i8** %547, align 8
  %549 = call i8* @LittleShort(i8* %548)
  %550 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %551 = load i32, i32* %3, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %550, i64 %552
  %554 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %553, i32 0, i32 6
  %555 = load i8**, i8*** %554, align 8
  %556 = load i32, i32* %4, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i8*, i8** %555, i64 %557
  store i8* %549, i8** %558, align 8
  %559 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %560 = load i32, i32* %3, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %559, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %562, i32 0, i32 5
  %564 = load i8**, i8*** %563, align 8
  %565 = load i32, i32* %4, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i8*, i8** %564, i64 %566
  %568 = load i8*, i8** %567, align 8
  %569 = call i8* @LittleShort(i8* %568)
  %570 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %571 = load i32, i32* %3, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %573, i32 0, i32 5
  %575 = load i8**, i8*** %574, align 8
  %576 = load i32, i32* %4, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i8*, i8** %575, i64 %577
  store i8* %569, i8** %578, align 8
  br label %579

579:                                              ; preds = %538
  %580 = load i32, i32* %4, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %4, align 4
  br label %535

582:                                              ; preds = %535
  %583 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %584 = load i32, i32* %3, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %583, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %586, i32 0, i32 4
  %588 = load i8*, i8** %587, align 8
  %589 = call i8* @LittleShort(i8* %588)
  %590 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %591 = load i32, i32* %3, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %590, i64 %592
  %594 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %593, i32 0, i32 4
  store i8* %589, i8** %594, align 8
  %595 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %596 = load i32, i32* %3, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %595, i64 %597
  %599 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %598, i32 0, i32 3
  %600 = load i8*, i8** %599, align 8
  %601 = call i8* @LittleShort(i8* %600)
  %602 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %603 = load i32, i32* %3, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %602, i64 %604
  %606 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %605, i32 0, i32 3
  store i8* %601, i8** %606, align 8
  %607 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %608 = load i32, i32* %3, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %607, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %610, i32 0, i32 2
  %612 = load i8*, i8** %611, align 8
  %613 = call i8* @LittleShort(i8* %612)
  %614 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %615 = load i32, i32* %3, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %614, i64 %616
  %618 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %617, i32 0, i32 2
  store i8* %613, i8** %618, align 8
  %619 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %620 = load i32, i32* %3, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %619, i64 %621
  %623 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %622, i32 0, i32 1
  %624 = load i8*, i8** %623, align 8
  %625 = call i8* @LittleShort(i8* %624)
  %626 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dleafs, align 8
  %627 = load i32, i32* %3, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %626, i64 %628
  %630 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %629, i32 0, i32 1
  store i8* %625, i8** %630, align 8
  br label %631

631:                                              ; preds = %582
  %632 = load i32, i32* %3, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %3, align 4
  br label %493

634:                                              ; preds = %493
  store i32 0, i32* %3, align 4
  br label %635

635:                                              ; preds = %650, %634
  %636 = load i32, i32* %3, align 4
  %637 = load i32, i32* @numleaffaces, align 4
  %638 = icmp slt i32 %636, %637
  br i1 %638, label %639, label %653

639:                                              ; preds = %635
  %640 = load i8**, i8*** @dleaffaces, align 8
  %641 = load i32, i32* %3, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i8*, i8** %640, i64 %642
  %644 = load i8*, i8** %643, align 8
  %645 = call i8* @LittleShort(i8* %644)
  %646 = load i8**, i8*** @dleaffaces, align 8
  %647 = load i32, i32* %3, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8*, i8** %646, i64 %648
  store i8* %645, i8** %649, align 8
  br label %650

650:                                              ; preds = %639
  %651 = load i32, i32* %3, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %3, align 4
  br label %635

653:                                              ; preds = %635
  store i32 0, i32* %3, align 4
  br label %654

654:                                              ; preds = %669, %653
  %655 = load i32, i32* %3, align 4
  %656 = load i32, i32* @numleafbrushes, align 4
  %657 = icmp slt i32 %655, %656
  br i1 %657, label %658, label %672

658:                                              ; preds = %654
  %659 = load i8**, i8*** @dleafbrushes, align 8
  %660 = load i32, i32* %3, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8*, i8** %659, i64 %661
  %663 = load i8*, i8** %662, align 8
  %664 = call i8* @LittleShort(i8* %663)
  %665 = load i8**, i8*** @dleafbrushes, align 8
  %666 = load i32, i32* %3, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i8*, i8** %665, i64 %667
  store i8* %664, i8** %668, align 8
  br label %669

669:                                              ; preds = %658
  %670 = load i32, i32* %3, align 4
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %3, align 4
  br label %654

672:                                              ; preds = %654
  store i32 0, i32* %3, align 4
  br label %673

673:                                              ; preds = %689, %672
  %674 = load i32, i32* %3, align 4
  %675 = load i32, i32* @numsurfedges, align 4
  %676 = icmp slt i32 %674, %675
  br i1 %676, label %677, label %692

677:                                              ; preds = %673
  %678 = load i32*, i32** @dsurfedges, align 8
  %679 = load i32, i32* %3, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i32, i32* %678, i64 %680
  %682 = load i32, i32* %681, align 4
  %683 = call i8* @LittleLong(i32 %682)
  %684 = ptrtoint i8* %683 to i32
  %685 = load i32*, i32** @dsurfedges, align 8
  %686 = load i32, i32* %3, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, i32* %685, i64 %687
  store i32 %684, i32* %688, align 4
  br label %689

689:                                              ; preds = %677
  %690 = load i32, i32* %3, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %3, align 4
  br label %673

692:                                              ; preds = %673
  store i32 0, i32* %3, align 4
  br label %693

693:                                              ; preds = %730, %692
  %694 = load i32, i32* %3, align 4
  %695 = load i32, i32* @numedges, align 4
  %696 = icmp slt i32 %694, %695
  br i1 %696, label %697, label %733

697:                                              ; preds = %693
  %698 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dedges, align 8
  %699 = load i32, i32* %3, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %698, i64 %700
  %702 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %701, i32 0, i32 0
  %703 = load i8**, i8*** %702, align 8
  %704 = getelementptr inbounds i8*, i8** %703, i64 0
  %705 = load i8*, i8** %704, align 8
  %706 = call i8* @LittleShort(i8* %705)
  %707 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dedges, align 8
  %708 = load i32, i32* %3, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %707, i64 %709
  %711 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %710, i32 0, i32 0
  %712 = load i8**, i8*** %711, align 8
  %713 = getelementptr inbounds i8*, i8** %712, i64 0
  store i8* %706, i8** %713, align 8
  %714 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dedges, align 8
  %715 = load i32, i32* %3, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %714, i64 %716
  %718 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %717, i32 0, i32 0
  %719 = load i8**, i8*** %718, align 8
  %720 = getelementptr inbounds i8*, i8** %719, i64 1
  %721 = load i8*, i8** %720, align 8
  %722 = call i8* @LittleShort(i8* %721)
  %723 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dedges, align 8
  %724 = load i32, i32* %3, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %723, i64 %725
  %727 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %726, i32 0, i32 0
  %728 = load i8**, i8*** %727, align 8
  %729 = getelementptr inbounds i8*, i8** %728, i64 1
  store i8* %722, i8** %729, align 8
  br label %730

730:                                              ; preds = %697
  %731 = load i32, i32* %3, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %3, align 4
  br label %693

733:                                              ; preds = %693
  store i32 0, i32* %3, align 4
  br label %734

734:                                              ; preds = %778, %733
  %735 = load i32, i32* %3, align 4
  %736 = load i32, i32* @numbrushes, align 4
  %737 = icmp slt i32 %735, %736
  br i1 %737, label %738, label %781

738:                                              ; preds = %734
  %739 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dbrushes, align 8
  %740 = load i32, i32* %3, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %739, i64 %741
  %743 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 4
  %745 = call i8* @LittleLong(i32 %744)
  %746 = ptrtoint i8* %745 to i32
  %747 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dbrushes, align 8
  %748 = load i32, i32* %3, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %747, i64 %749
  %751 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %750, i32 0, i32 0
  store i32 %746, i32* %751, align 4
  %752 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dbrushes, align 8
  %753 = load i32, i32* %3, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %752, i64 %754
  %756 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %755, i32 0, i32 1
  %757 = load i32, i32* %756, align 4
  %758 = call i8* @LittleLong(i32 %757)
  %759 = ptrtoint i8* %758 to i32
  %760 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dbrushes, align 8
  %761 = load i32, i32* %3, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %760, i64 %762
  %764 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %763, i32 0, i32 1
  store i32 %759, i32* %764, align 4
  %765 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dbrushes, align 8
  %766 = load i32, i32* %3, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %765, i64 %767
  %769 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %768, i32 0, i32 2
  %770 = load i32, i32* %769, align 4
  %771 = call i8* @LittleLong(i32 %770)
  %772 = ptrtoint i8* %771 to i32
  %773 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dbrushes, align 8
  %774 = load i32, i32* %3, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %773, i64 %775
  %777 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %776, i32 0, i32 2
  store i32 %772, i32* %777, align 4
  br label %778

778:                                              ; preds = %738
  %779 = load i32, i32* %3, align 4
  %780 = add nsw i32 %779, 1
  store i32 %780, i32* %3, align 4
  br label %734

781:                                              ; preds = %734
  store i32 0, i32* %3, align 4
  br label %782

782:                                              ; preds = %813, %781
  %783 = load i32, i32* %3, align 4
  %784 = load i32, i32* @numareas, align 4
  %785 = icmp slt i32 %783, %784
  br i1 %785, label %786, label %816

786:                                              ; preds = %782
  %787 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dareas, align 8
  %788 = load i32, i32* %3, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %787, i64 %789
  %791 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %790, i32 0, i32 0
  %792 = load i32, i32* %791, align 4
  %793 = call i8* @LittleLong(i32 %792)
  %794 = ptrtoint i8* %793 to i32
  %795 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dareas, align 8
  %796 = load i32, i32* %3, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %795, i64 %797
  %799 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %798, i32 0, i32 0
  store i32 %794, i32* %799, align 4
  %800 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dareas, align 8
  %801 = load i32, i32* %3, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %800, i64 %802
  %804 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %803, i32 0, i32 1
  %805 = load i32, i32* %804, align 4
  %806 = call i8* @LittleLong(i32 %805)
  %807 = ptrtoint i8* %806 to i32
  %808 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dareas, align 8
  %809 = load i32, i32* %3, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %808, i64 %810
  %812 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %811, i32 0, i32 1
  store i32 %807, i32* %812, align 4
  br label %813

813:                                              ; preds = %786
  %814 = load i32, i32* %3, align 4
  %815 = add nsw i32 %814, 1
  store i32 %815, i32* %3, align 4
  br label %782

816:                                              ; preds = %782
  store i32 0, i32* %3, align 4
  br label %817

817:                                              ; preds = %848, %816
  %818 = load i32, i32* %3, align 4
  %819 = load i32, i32* @numareaportals, align 4
  %820 = icmp slt i32 %818, %819
  br i1 %820, label %821, label %851

821:                                              ; preds = %817
  %822 = load %struct.TYPE_19__*, %struct.TYPE_19__** @dareaportals, align 8
  %823 = load i32, i32* %3, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %822, i64 %824
  %826 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %825, i32 0, i32 0
  %827 = load i32, i32* %826, align 4
  %828 = call i8* @LittleLong(i32 %827)
  %829 = ptrtoint i8* %828 to i32
  %830 = load %struct.TYPE_19__*, %struct.TYPE_19__** @dareaportals, align 8
  %831 = load i32, i32* %3, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %830, i64 %832
  %834 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %833, i32 0, i32 0
  store i32 %829, i32* %834, align 4
  %835 = load %struct.TYPE_19__*, %struct.TYPE_19__** @dareaportals, align 8
  %836 = load i32, i32* %3, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %835, i64 %837
  %839 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %838, i32 0, i32 1
  %840 = load i32, i32* %839, align 4
  %841 = call i8* @LittleLong(i32 %840)
  %842 = ptrtoint i8* %841 to i32
  %843 = load %struct.TYPE_19__*, %struct.TYPE_19__** @dareaportals, align 8
  %844 = load i32, i32* %3, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %843, i64 %845
  %847 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %846, i32 0, i32 1
  store i32 %842, i32* %847, align 4
  br label %848

848:                                              ; preds = %821
  %849 = load i32, i32* %3, align 4
  %850 = add nsw i32 %849, 1
  store i32 %850, i32* %3, align 4
  br label %817

851:                                              ; preds = %817
  store i32 0, i32* %3, align 4
  br label %852

852:                                              ; preds = %881, %851
  %853 = load i32, i32* %3, align 4
  %854 = load i32, i32* @numbrushsides, align 4
  %855 = icmp slt i32 %853, %854
  br i1 %855, label %856, label %884

856:                                              ; preds = %852
  %857 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dbrushsides, align 8
  %858 = load i32, i32* %3, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %857, i64 %859
  %861 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %860, i32 0, i32 1
  %862 = load i8*, i8** %861, align 8
  %863 = call i8* @LittleShort(i8* %862)
  %864 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dbrushsides, align 8
  %865 = load i32, i32* %3, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %864, i64 %866
  %868 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %867, i32 0, i32 1
  store i8* %863, i8** %868, align 8
  %869 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dbrushsides, align 8
  %870 = load i32, i32* %3, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %869, i64 %871
  %873 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %872, i32 0, i32 0
  %874 = load i8*, i8** %873, align 8
  %875 = call i8* @LittleShort(i8* %874)
  %876 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dbrushsides, align 8
  %877 = load i32, i32* %3, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %876, i64 %878
  %880 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %879, i32 0, i32 0
  store i8* %875, i8** %880, align 8
  br label %881

881:                                              ; preds = %856
  %882 = load i32, i32* %3, align 4
  %883 = add nsw i32 %882, 1
  store i32 %883, i32* %3, align 4
  br label %852

884:                                              ; preds = %852
  %885 = load i64, i64* %2, align 8
  %886 = icmp ne i64 %885, 0
  br i1 %886, label %887, label %891

887:                                              ; preds = %884
  %888 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dvis, align 8
  %889 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %888, i32 0, i32 0
  %890 = load i32, i32* %889, align 8
  store i32 %890, i32* %4, align 4
  br label %897

891:                                              ; preds = %884
  %892 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dvis, align 8
  %893 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %892, i32 0, i32 0
  %894 = load i32, i32* %893, align 8
  %895 = call i8* @LittleLong(i32 %894)
  %896 = ptrtoint i8* %895 to i32
  store i32 %896, i32* %4, align 4
  br label %897

897:                                              ; preds = %891, %887
  %898 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dvis, align 8
  %899 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %898, i32 0, i32 0
  %900 = load i32, i32* %899, align 8
  %901 = call i8* @LittleLong(i32 %900)
  %902 = ptrtoint i8* %901 to i32
  %903 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dvis, align 8
  %904 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %903, i32 0, i32 0
  store i32 %902, i32* %904, align 8
  store i32 0, i32* %3, align 4
  br label %905

905:                                              ; preds = %948, %897
  %906 = load i32, i32* %3, align 4
  %907 = load i32, i32* %4, align 4
  %908 = icmp slt i32 %906, %907
  br i1 %908, label %909, label %951

909:                                              ; preds = %905
  %910 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dvis, align 8
  %911 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %910, i32 0, i32 1
  %912 = load i32**, i32*** %911, align 8
  %913 = load i32, i32* %3, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds i32*, i32** %912, i64 %914
  %916 = load i32*, i32** %915, align 8
  %917 = getelementptr inbounds i32, i32* %916, i64 0
  %918 = load i32, i32* %917, align 4
  %919 = call i8* @LittleLong(i32 %918)
  %920 = ptrtoint i8* %919 to i32
  %921 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dvis, align 8
  %922 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %921, i32 0, i32 1
  %923 = load i32**, i32*** %922, align 8
  %924 = load i32, i32* %3, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds i32*, i32** %923, i64 %925
  %927 = load i32*, i32** %926, align 8
  %928 = getelementptr inbounds i32, i32* %927, i64 0
  store i32 %920, i32* %928, align 4
  %929 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dvis, align 8
  %930 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %929, i32 0, i32 1
  %931 = load i32**, i32*** %930, align 8
  %932 = load i32, i32* %3, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i32*, i32** %931, i64 %933
  %935 = load i32*, i32** %934, align 8
  %936 = getelementptr inbounds i32, i32* %935, i64 1
  %937 = load i32, i32* %936, align 4
  %938 = call i8* @LittleLong(i32 %937)
  %939 = ptrtoint i8* %938 to i32
  %940 = load %struct.TYPE_22__*, %struct.TYPE_22__** @dvis, align 8
  %941 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %940, i32 0, i32 1
  %942 = load i32**, i32*** %941, align 8
  %943 = load i32, i32* %3, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i32*, i32** %942, i64 %944
  %946 = load i32*, i32** %945, align 8
  %947 = getelementptr inbounds i32, i32* %946, i64 1
  store i32 %939, i32* %947, align 4
  br label %948

948:                                              ; preds = %909
  %949 = load i32, i32* %3, align 4
  %950 = add nsw i32 %949, 1
  store i32 %950, i32* %3, align 4
  br label %905

951:                                              ; preds = %905
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
