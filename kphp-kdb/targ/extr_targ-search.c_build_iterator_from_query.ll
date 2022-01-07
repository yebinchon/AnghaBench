; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_iterator_from_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_iterator_from_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.intersection_condition_iterator = type { i8**, i8* }
%struct.union_iterator = type { i8** }

@q_and = common dso_local global i32 0, align 4
@q_or = common dso_local global i32 0, align 4
@q_false = common dso_local global i32 0, align 4
@q_inlist = common dso_local global i32 0, align 4
@aux_userlist = common dso_local global i32 0, align 4
@aux_userlist_size = common dso_local global i32 0, align 4
@q_id = common dso_local global i32 0, align 4
@q_name = common dso_local global i32 0, align 4
@q_name_interests = common dso_local global i32 0, align 4
@q_none = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_iterator_from_query(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.intersection_condition_iterator*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 @Q_IS_GRAYISH(%struct.TYPE_12__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 1
  %29 = call i8* @build_condition_from_query(%struct.TYPE_12__* %26, i32 %28)
  %30 = call i8* @build_condition_iterator(i8* %29)
  store i8* %30, i8** %3, align 8
  br label %690

31:                                               ; preds = %2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %674

35:                                               ; preds = %31
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @q_and, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @q_or, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %401

51:                                               ; preds = %47, %35
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %7, align 8
  store i32 2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %59, %51
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = icmp ne %struct.TYPE_12__* %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %53

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @q_or, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %146

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %99

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 7
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %81)
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %78, %72
  %85 = phi i1 [ false, %72 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %90, i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 7
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %95, i32 %96)
  %98 = call i8* @build_binary_union_iterator(i8* %92, i8* %97)
  store i8* %98, i8** %3, align 8
  br label %690

99:                                               ; preds = %69
  %100 = load i32, i32* %8, align 4
  %101 = call i8* @prebuild_multiple_union_iterator(i32 %100)
  store i8* %101, i8** %11, align 8
  store i64 1, i64* %12, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %7, align 8
  br label %103

103:                                              ; preds = %125, %99
  %104 = load i64, i64* %12, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %108, label %131

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %111)
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 6
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %116, i32 %117)
  %119 = load i8*, i8** %11, align 8
  %120 = bitcast i8* %119 to %struct.union_iterator*
  %121 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %120, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  store i8* %118, i8** %124, align 8
  br label %125

125:                                              ; preds = %108
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 7
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %7, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %12, align 8
  br label %103

131:                                              ; preds = %103
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %133 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %132)
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %135, i32 %136)
  %138 = load i8*, i8** %11, align 8
  %139 = bitcast i8* %138 to %struct.union_iterator*
  %140 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds i8*, i8** %141, i64 %142
  store i8* %137, i8** %143, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = call i8* @build_multiple_union_iterator(i8* %144)
  store i8* %145, i8** %3, align 8
  br label %690

146:                                              ; preds = %65
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @q_and, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %399

150:                                              ; preds = %146
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = call i32 @Q_IS_GRAYISH(%struct.TYPE_12__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %8, align 4
  br label %184

161:                                              ; preds = %150
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 7
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = call i64 @Q_IS_BIG(%struct.TYPE_12__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %161
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %8, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 6
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = call i32 @Q_IS_GRAYISH(%struct.TYPE_12__* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %167
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %177, %167
  br label %183

183:                                              ; preds = %182, %161
  br label %184

184:                                              ; preds = %183, %156
  %185 = load i32, i32* %8, align 4
  %186 = icmp sgt i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i32, i32* %8, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %238

191:                                              ; preds = %184
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %194)
  %196 = call i32 @assert(i32 %195)
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %220

199:                                              ; preds = %191
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 7
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = call i32 @negate_query(%struct.TYPE_12__* %202)
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 6
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %206, i32 %207)
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 7
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %211, i32 %212)
  %214 = call i8* @build_binary_subtraction_iterator(i8* %208, i8* %213)
  store i8* %214, i8** %13, align 8
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 7
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = call i32 @negate_query(%struct.TYPE_12__* %217)
  %219 = load i8*, i8** %13, align 8
  store i8* %219, i8** %3, align 8
  br label %690

220:                                              ; preds = %191
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 7
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = call i32 @Q_IS_GRAYISH(%struct.TYPE_12__* %223)
  %225 = call i32 @assert(i32 %224)
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 6
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %228, i32 %229)
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 7
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = and i32 %234, 1
  %236 = call i8* @build_condition_from_query(%struct.TYPE_12__* %233, i32 %235)
  %237 = call i8* @build_condition_filter_iterator(i8* %230, i8* %236)
  store i8* %237, i8** %3, align 8
  br label %690

238:                                              ; preds = %184
  %239 = load i32, i32* %8, align 4
  %240 = icmp eq i32 %239, 2
  br i1 %240, label %241, label %274

241:                                              ; preds = %238
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %274, label %244

244:                                              ; preds = %241
  %245 = load i32, i32* %9, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %274, label %247

247:                                              ; preds = %244
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 6
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %247
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 7
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %256)
  %258 = icmp ne i32 %257, 0
  br label %259

259:                                              ; preds = %253, %247
  %260 = phi i1 [ false, %247 ], [ %258, %253 ]
  %261 = zext i1 %260 to i32
  %262 = call i32 @assert(i32 %261)
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 6
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %265, i32 %266)
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 7
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %270, i32 %271)
  %273 = call i8* @build_binary_intersection_iterator(i8* %267, i8* %272)
  store i8* %273, i8** %3, align 8
  br label %690

274:                                              ; preds = %244, %241, %238
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %275, %276
  %278 = call i64 @prebuild_multiple_intersection_iterator(i32 %277)
  %279 = inttoptr i64 %278 to i8*
  %280 = bitcast i8* %279 to %struct.intersection_condition_iterator*
  store %struct.intersection_condition_iterator* %280, %struct.intersection_condition_iterator** %14, align 8
  store i64 0, i64* %15, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %281, %struct.TYPE_12__** %7, align 8
  br label %282

282:                                              ; preds = %304, %274
  %283 = load i64, i64* %15, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sub nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = icmp slt i64 %283, %286
  br i1 %287, label %288, label %310

288:                                              ; preds = %282
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 6
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %290, align 8
  %292 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %291)
  %293 = call i32 @assert(i32 %292)
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 6
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %295, align 8
  %297 = load i32, i32* %5, align 4
  %298 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %296, i32 %297)
  %299 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %14, align 8
  %300 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %299, i32 0, i32 0
  %301 = load i8**, i8*** %300, align 8
  %302 = load i64, i64* %15, align 8
  %303 = getelementptr inbounds i8*, i8** %301, i64 %302
  store i8* %298, i8** %303, align 8
  br label %304

304:                                              ; preds = %288
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 7
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %306, align 8
  store %struct.TYPE_12__* %307, %struct.TYPE_12__** %7, align 8
  %308 = load i64, i64* %15, align 8
  %309 = add nsw i64 %308, 1
  store i64 %309, i64* %15, align 8
  br label %282

310:                                              ; preds = %282
  %311 = load i32, i32* %10, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %331, label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %9, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %331, label %316

316:                                              ; preds = %313
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %318 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %317)
  %319 = call i32 @assert(i32 %318)
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %321 = load i32, i32* %5, align 4
  %322 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %320, i32 %321)
  %323 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %14, align 8
  %324 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %323, i32 0, i32 0
  %325 = load i8**, i8*** %324, align 8
  %326 = load i64, i64* %15, align 8
  %327 = getelementptr inbounds i8*, i8** %325, i64 %326
  store i8* %322, i8** %327, align 8
  %328 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %14, align 8
  %329 = bitcast %struct.intersection_condition_iterator* %328 to i8*
  %330 = call i8* @build_multiple_intersection_iterator(i8* %329)
  store i8* %330, i8** %3, align 8
  br label %690

331:                                              ; preds = %313, %310
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 6
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  %335 = call i32 @Q_IS_SMALL(%struct.TYPE_12__* %334)
  %336 = call i32 @assert(i32 %335)
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 6
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %338, align 8
  %340 = load i32, i32* %5, align 4
  %341 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %339, i32 %340)
  %342 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %14, align 8
  %343 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %342, i32 0, i32 0
  %344 = load i8**, i8*** %343, align 8
  %345 = load i64, i64* %15, align 8
  %346 = getelementptr inbounds i8*, i8** %344, i64 %345
  store i8* %341, i8** %346, align 8
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 7
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %348, align 8
  store %struct.TYPE_12__* %349, %struct.TYPE_12__** %7, align 8
  %350 = load i32, i32* %10, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %362, label %352

352:                                              ; preds = %331
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %354 = load i32, i32* %5, align 4
  %355 = and i32 %354, 1
  %356 = call i8* @build_condition_from_query(%struct.TYPE_12__* %353, i32 %355)
  %357 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %14, align 8
  %358 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %357, i32 0, i32 1
  store i8* %356, i8** %358, align 8
  %359 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %14, align 8
  %360 = bitcast %struct.intersection_condition_iterator* %359 to i8*
  %361 = call i8* @build_multiple_intersection_iterator(i8* %360)
  store i8* %361, i8** %3, align 8
  br label %690

362:                                              ; preds = %331
  %363 = load i32, i32* %9, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %382

365:                                              ; preds = %362
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 6
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %367, align 8
  %369 = call i32 @Q_IS_GRAYISH(%struct.TYPE_12__* %368)
  %370 = call i32 @assert(i32 %369)
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 6
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %372, align 8
  %374 = load i32, i32* %5, align 4
  %375 = and i32 %374, 1
  %376 = call i8* @build_condition_from_query(%struct.TYPE_12__* %373, i32 %375)
  %377 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %14, align 8
  %378 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %377, i32 0, i32 1
  store i8* %376, i8** %378, align 8
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 7
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** %380, align 8
  store %struct.TYPE_12__* %381, %struct.TYPE_12__** %7, align 8
  br label %382

382:                                              ; preds = %365, %362
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %384 = call i32 @negate_query(%struct.TYPE_12__* %383)
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %386 = load i32, i32* %5, align 4
  %387 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %385, i32 %386)
  %388 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %14, align 8
  %389 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %388, i32 0, i32 0
  %390 = load i8**, i8*** %389, align 8
  %391 = load i32, i32* %8, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8*, i8** %390, i64 %392
  store i8* %387, i8** %393, align 8
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %395 = call i32 @negate_query(%struct.TYPE_12__* %394)
  %396 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %14, align 8
  %397 = bitcast %struct.intersection_condition_iterator* %396 to i8*
  %398 = call i8* @build_multiple_intersection_iterator_with_subtraction(i8* %397)
  store i8* %398, i8** %3, align 8
  br label %690

399:                                              ; preds = %146
  %400 = call i32 @assert(i32 0)
  br label %401

401:                                              ; preds = %399, %47
  %402 = load i32, i32* %6, align 4
  %403 = load i32, i32* @q_false, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %401
  %406 = call i8* (...) @build_empty_iterator()
  store i8* %406, i8** %3, align 8
  br label %690

407:                                              ; preds = %401
  %408 = load i32, i32* %6, align 4
  %409 = load i32, i32* @q_inlist, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %415

411:                                              ; preds = %407
  %412 = load i32, i32* @aux_userlist, align 4
  %413 = load i32, i32* @aux_userlist_size, align 4
  %414 = call i8* @build_explicit_list_iterator(i32 %412, i32 %413)
  store i8* %414, i8** %3, align 8
  br label %690

415:                                              ; preds = %407
  %416 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = and i32 %418, 24
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %460

421:                                              ; preds = %415
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @q_id, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %435

427:                                              ; preds = %421
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 3
  %433 = load i64, i64* %432, align 8
  %434 = call i8* @build_id_range_iterator(i64 %430, i64 %433)
  store i8* %434, i8** %3, align 8
  br label %690

435:                                              ; preds = %421
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = and i32 %438, 16
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %451

441:                                              ; preds = %435
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 3
  %447 = load i64, i64* %446, align 8
  %448 = icmp eq i64 %444, %447
  %449 = zext i1 %448 to i32
  %450 = call i32 @assert(i32 %449)
  br label %451

451:                                              ; preds = %441, %435
  %452 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %452, i32 0, i32 4
  %454 = load i32, i32* %453, align 8
  %455 = call i32 @assert(i32 %454)
  %456 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 8
  %459 = call i8* @build_word_iterator(i32 %458)
  store i8* %459, i8** %3, align 8
  br label %690

460:                                              ; preds = %415
  %461 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = and i32 %463, 32
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %522

466:                                              ; preds = %460
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @q_name, align 4
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %472, label %477

472:                                              ; preds = %466
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 8
  %476 = call i8* @build_word_iterator(i32 %475)
  store i8* %476, i8** %3, align 8
  br label %690

477:                                              ; preds = %466
  %478 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @q_name_interests, align 4
  %482 = icmp eq i32 %480, %481
  br i1 %482, label %483, label %516

483:                                              ; preds = %477
  %484 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 5
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @get_word_count_nomult(i32 %486)
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %494, label %489

489:                                              ; preds = %483
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 4
  %492 = load i32, i32* %491, align 8
  %493 = call i8* @build_word_iterator(i32 %492)
  store i8* %493, i8** %3, align 8
  br label %690

494:                                              ; preds = %483
  %495 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 8
  %498 = call i32 @get_word_count_nomult(i32 %497)
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %505, label %500

500:                                              ; preds = %494
  %501 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i32 0, i32 5
  %503 = load i32, i32* %502, align 4
  %504 = call i8* @build_word_iterator(i32 %503)
  store i8* %504, i8** %3, align 8
  br label %690

505:                                              ; preds = %494
  br label %506

506:                                              ; preds = %505
  %507 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %507, i32 0, i32 4
  %509 = load i32, i32* %508, align 8
  %510 = call i8* @build_word_iterator(i32 %509)
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 5
  %513 = load i32, i32* %512, align 4
  %514 = call i8* @build_word_iterator(i32 %513)
  %515 = call i8* @build_binary_union_iterator(i8* %510, i8* %514)
  store i8* %515, i8** %3, align 8
  br label %690

516:                                              ; preds = %477
  br label %517

517:                                              ; preds = %516
  %518 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 5
  %520 = load i32, i32* %519, align 4
  %521 = call i8* @build_word_iterator(i32 %520)
  store i8* %521, i8** %3, align 8
  br label %690

522:                                              ; preds = %460
  %523 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %524 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = and i32 %525, 2
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %672

528:                                              ; preds = %522
  %529 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i32 0, i32 6
  %531 = load %struct.TYPE_12__*, %struct.TYPE_12__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* @q_or, align 4
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %536, label %617

536:                                              ; preds = %528
  %537 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 6
  %539 = load %struct.TYPE_12__*, %struct.TYPE_12__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  %542 = and i32 %541, 1
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %617, label %544

544:                                              ; preds = %536
  %545 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %545, i32 0, i32 6
  %547 = load %struct.TYPE_12__*, %struct.TYPE_12__** %546, align 8
  store %struct.TYPE_12__* %547, %struct.TYPE_12__** %16, align 8
  br label %548

548:                                              ; preds = %563, %544
  %549 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %550 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = load i32, i32* @q_or, align 4
  %553 = icmp eq i32 %551, %552
  br i1 %553, label %554, label %561

554:                                              ; preds = %548
  %555 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %556 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = and i32 %557, 1
  %559 = icmp ne i32 %558, 0
  %560 = xor i1 %559, true
  br label %561

561:                                              ; preds = %554, %548
  %562 = phi i1 [ false, %548 ], [ %560, %554 ]
  br i1 %562, label %563, label %582

563:                                              ; preds = %561
  %564 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %565 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %564, i32 0, i32 6
  %566 = load %struct.TYPE_12__*, %struct.TYPE_12__** %565, align 8
  %567 = call i32 @Q_IS_SMALLISH(%struct.TYPE_12__* %566)
  %568 = call i32 @assert(i32 %567)
  %569 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %573 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %572, i32 0, i32 6
  %574 = load %struct.TYPE_12__*, %struct.TYPE_12__** %573, align 8
  %575 = call i8* @apply_quantifier(i32 %571, %struct.TYPE_12__* %574)
  %576 = bitcast i8* %575 to %struct.TYPE_12__*
  %577 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %578 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %577, i32 0, i32 6
  store %struct.TYPE_12__* %576, %struct.TYPE_12__** %578, align 8
  %579 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %580 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %579, i32 0, i32 7
  %581 = load %struct.TYPE_12__*, %struct.TYPE_12__** %580, align 8
  store %struct.TYPE_12__* %581, %struct.TYPE_12__** %16, align 8
  br label %548

582:                                              ; preds = %561
  %583 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %584 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %585 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %584, i32 0, i32 6
  %586 = load %struct.TYPE_12__*, %struct.TYPE_12__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %586, i32 0, i32 8
  %588 = load %struct.TYPE_12__*, %struct.TYPE_12__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %588, i32 0, i32 7
  %590 = load %struct.TYPE_12__*, %struct.TYPE_12__** %589, align 8
  %591 = icmp eq %struct.TYPE_12__* %583, %590
  %592 = zext i1 %591 to i32
  %593 = call i32 @assert(i32 %592)
  %594 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %595 = call i32 @Q_IS_SMALLISH(%struct.TYPE_12__* %594)
  %596 = call i32 @assert(i32 %595)
  %597 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %598 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %601 = call i8* @apply_quantifier(i32 %599, %struct.TYPE_12__* %600)
  %602 = bitcast i8* %601 to %struct.TYPE_12__*
  %603 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %604 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %603, i32 0, i32 6
  %605 = load %struct.TYPE_12__*, %struct.TYPE_12__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %605, i32 0, i32 8
  %607 = load %struct.TYPE_12__*, %struct.TYPE_12__** %606, align 8
  %608 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %607, i32 0, i32 7
  store %struct.TYPE_12__* %602, %struct.TYPE_12__** %608, align 8
  %609 = load i32, i32* @q_none, align 4
  %610 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %611 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %610, i32 0, i32 0
  store i32 %609, i32* %611, align 8
  %612 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %613 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %612, i32 0, i32 6
  %614 = load %struct.TYPE_12__*, %struct.TYPE_12__** %613, align 8
  %615 = load i32, i32* %5, align 4
  %616 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %614, i32 %615)
  store i8* %616, i8** %3, align 8
  br label %690

617:                                              ; preds = %536, %528
  %618 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %619 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %618, i32 0, i32 6
  %620 = load %struct.TYPE_12__*, %struct.TYPE_12__** %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %620, i32 0, i32 1
  %622 = load i32, i32* %621, align 4
  %623 = and i32 %622, 56
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %631

625:                                              ; preds = %617
  %626 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %627 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %626, i32 0, i32 6
  %628 = load %struct.TYPE_12__*, %struct.TYPE_12__** %627, align 8
  %629 = load i32, i32* %5, align 4
  %630 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %628, i32 %629)
  store i8* %630, i8** %3, align 8
  br label %690

631:                                              ; preds = %617
  %632 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %633 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %632, i32 0, i32 6
  %634 = load %struct.TYPE_12__*, %struct.TYPE_12__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 8
  %637 = load i32, i32* @q_and, align 4
  %638 = icmp eq i32 %636, %637
  br i1 %638, label %639, label %648

639:                                              ; preds = %631
  %640 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %641 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %640, i32 0, i32 6
  %642 = load %struct.TYPE_12__*, %struct.TYPE_12__** %641, align 8
  %643 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %642, i32 0, i32 1
  %644 = load i32, i32* %643, align 4
  %645 = and i32 %644, 1
  %646 = icmp ne i32 %645, 0
  %647 = xor i1 %646, true
  br label %648

648:                                              ; preds = %639, %631
  %649 = phi i1 [ false, %631 ], [ %647, %639 ]
  %650 = zext i1 %649 to i32
  %651 = call i32 @assert(i32 %650)
  %652 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %653 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 8
  %655 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %656 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %655, i32 0, i32 6
  %657 = load %struct.TYPE_12__*, %struct.TYPE_12__** %656, align 8
  %658 = call %struct.TYPE_12__* @lift_quantifier(i32 %654, %struct.TYPE_12__* %657)
  store %struct.TYPE_12__* %658, %struct.TYPE_12__** %17, align 8
  %659 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %660 = icmp ne %struct.TYPE_12__* %659, null
  br i1 %660, label %661, label %670

661:                                              ; preds = %648
  %662 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %663 = load i32, i32* %5, align 4
  %664 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %662, i32 %663)
  %665 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %666 = load i32, i32* %5, align 4
  %667 = and i32 %666, 1
  %668 = call i8* @build_condition_from_query(%struct.TYPE_12__* %665, i32 %667)
  %669 = call i8* @build_condition_filter_iterator(i8* %664, i8* %668)
  store i8* %669, i8** %3, align 8
  br label %690

670:                                              ; preds = %648
  %671 = call i32 @assert(i32 0)
  br label %672

672:                                              ; preds = %670, %522
  %673 = call i32 @assert(i32 0)
  br label %674

674:                                              ; preds = %672, %31
  %675 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %676 = call i64 @Q_IS_BIG(%struct.TYPE_12__* %675)
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %688

678:                                              ; preds = %674
  %679 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %680 = call i32 @negate_query(%struct.TYPE_12__* %679)
  %681 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %682 = load i32, i32* %5, align 4
  %683 = call i8* @build_iterator_from_query(%struct.TYPE_12__* %681, i32 %682)
  store i8* %683, i8** %18, align 8
  %684 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %685 = call i32 @negate_query(%struct.TYPE_12__* %684)
  %686 = load i8*, i8** %18, align 8
  %687 = call i8* @build_complement_iterator(i8* %686)
  store i8* %687, i8** %3, align 8
  br label %690

688:                                              ; preds = %674
  %689 = call i32 @assert(i32 0)
  br label %690

690:                                              ; preds = %688, %678, %661, %625, %582, %517, %506, %500, %489, %472, %451, %427, %411, %405, %382, %352, %316, %259, %220, %199, %131, %84, %25
  %691 = load i8*, i8** %3, align 8
  ret i8* %691
}

declare dso_local i32 @Q_IS_GRAYISH(%struct.TYPE_12__*) #1

declare dso_local i8* @build_condition_iterator(i8*) #1

declare dso_local i8* @build_condition_from_query(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Q_IS_SMALL(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @build_binary_union_iterator(i8*, i8*) #1

declare dso_local i8* @prebuild_multiple_union_iterator(i32) #1

declare dso_local i8* @build_multiple_union_iterator(i8*) #1

declare dso_local i64 @Q_IS_BIG(%struct.TYPE_12__*) #1

declare dso_local i32 @negate_query(%struct.TYPE_12__*) #1

declare dso_local i8* @build_binary_subtraction_iterator(i8*, i8*) #1

declare dso_local i8* @build_condition_filter_iterator(i8*, i8*) #1

declare dso_local i8* @build_binary_intersection_iterator(i8*, i8*) #1

declare dso_local i64 @prebuild_multiple_intersection_iterator(i32) #1

declare dso_local i8* @build_multiple_intersection_iterator(i8*) #1

declare dso_local i8* @build_multiple_intersection_iterator_with_subtraction(i8*) #1

declare dso_local i8* @build_empty_iterator(...) #1

declare dso_local i8* @build_explicit_list_iterator(i32, i32) #1

declare dso_local i8* @build_id_range_iterator(i64, i64) #1

declare dso_local i8* @build_word_iterator(i32) #1

declare dso_local i32 @get_word_count_nomult(i32) #1

declare dso_local i32 @Q_IS_SMALLISH(%struct.TYPE_12__*) #1

declare dso_local i8* @apply_quantifier(i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @lift_quantifier(i32, %struct.TYPE_12__*) #1

declare dso_local i8* @build_complement_iterator(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
