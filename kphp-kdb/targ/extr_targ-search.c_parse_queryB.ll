; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_parse_queryB.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_parse_queryB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_keyword_descr = type { i32, i32, i32, i64, i32* }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, %struct.TYPE_6__* }

@Qs = common dso_local global i8* null, align 8
@QueryKW = common dso_local global %struct.query_keyword_descr* null, align 8
@q_and = common dso_local global i32 0, align 4
@q_true = common dso_local global i64 0, align 8
@q_false = common dso_local global i64 0, align 8
@MININT = common dso_local global i32 0, align 4
@MAXINT = common dso_local global i32 0, align 4
@q_birthday_soon = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @parse_queryB(i32 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.query_keyword_descr*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %11 = call signext i8 (...) @skip_spc()
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 40
  br i1 %13, label %14, label %49

14:                                               ; preds = %1
  %15 = load i8*, i8** @Qs, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** @Qs, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.TYPE_6__* @parse_query(i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %2, align 8
  br label %471

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i8*, i8** @Qs, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** @Qs, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 9
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ true, %24 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i8*, i8** @Qs, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @Qs, align 8
  br label %24

39:                                               ; preds = %34
  %40 = load i8*, i8** @Qs, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 41
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

45:                                               ; preds = %39
  %46 = load i8*, i8** @Qs, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** @Qs, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %2, align 8
  br label %471

49:                                               ; preds = %1
  %50 = load i8*, i8** @Qs, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 33
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i8*, i8** @Qs, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** @Qs, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call %struct.TYPE_6__* @parse_queryB(i32 %57)
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %4, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = xor i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %2, align 8
  br label %471

68:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  %69 = load i8*, i8** @Qs, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 97
  br i1 %72, label %73, label %119

73:                                               ; preds = %68
  %74 = load i8*, i8** @Qs, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sle i32 %76, 122
  br i1 %77, label %78, label %119

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %113, %78
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %80, 32
  br i1 %81, label %82, label %111

82:                                               ; preds = %79
  %83 = load i8*, i8** @Qs, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sge i32 %85, 97
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** @Qs, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sle i32 %90, 122
  br i1 %91, label %109, label %92

92:                                               ; preds = %87, %82
  %93 = load i8*, i8** @Qs, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 95
  br i1 %96, label %109, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** @Qs, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sge i32 %100, 48
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** @Qs, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sle i32 %105, 57
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i1 [ false, %97 ], [ %106, %102 ]
  br label %109

109:                                              ; preds = %107, %92, %87
  %110 = phi i1 [ true, %92 ], [ true, %87 ], [ %108, %107 ]
  br label %111

111:                                              ; preds = %109, %79
  %112 = phi i1 [ false, %79 ], [ %110, %109 ]
  br i1 %112, label %113, label %118

113:                                              ; preds = %111
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  %116 = load i8*, i8** @Qs, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** @Qs, align 8
  br label %79

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %73, %68
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = load i8*, i8** @Qs, align 8
  %126 = sext i32 %124 to i64
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8* %128, i8** @Qs, align 8
  %129 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** @QueryKW, align 8
  store %struct.query_keyword_descr* %129, %struct.query_keyword_descr** %9, align 8
  br label %130

130:                                              ; preds = %161, %123
  %131 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %132 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %130
  %136 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %137 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %135
  %143 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %144 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load i8*, i8** @Qs, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @strncmp(i32* %145, i8* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %142
  %151 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %152 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %150
  br label %164

160:                                              ; preds = %150, %142, %135
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %163 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %162, i32 1
  store %struct.query_keyword_descr* %163, %struct.query_keyword_descr** %9, align 8
  br label %130

164:                                              ; preds = %159, %130
  %165 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %166 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

170:                                              ; preds = %164
  %171 = load i32, i32* %6, align 4
  %172 = load i8*, i8** @Qs, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** @Qs, align 8
  %175 = call signext i8 (...) @skip_spc()
  store i32 0, i32* %8, align 4
  %176 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %177 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 7
  %180 = icmp eq i32 %179, 7
  br i1 %180, label %181, label %217

181:                                              ; preds = %170
  %182 = load i8*, i8** @Qs, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 46
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

188:                                              ; preds = %181
  %189 = load i8*, i8** @Qs, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** @Qs, align 8
  %191 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %192 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call %struct.TYPE_6__* @parse_queryB(i32 %193)
  store %struct.TYPE_6__* %194, %struct.TYPE_6__** %5, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %196 = icmp ne %struct.TYPE_6__* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %188
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

198:                                              ; preds = %188
  %199 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %200 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = call %struct.TYPE_6__* @new_qnode(i64 %201, i32 0)
  store %struct.TYPE_6__* %202, %struct.TYPE_6__** %4, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %204 = icmp ne %struct.TYPE_6__* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %198
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

206:                                              ; preds = %198
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 5
  store %struct.TYPE_6__* %207, %struct.TYPE_6__** %209, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %212, 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %216, %struct.TYPE_6__** %2, align 8
  br label %471

217:                                              ; preds = %170
  %218 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %219 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %220, 7
  %222 = icmp eq i32 %221, 6
  br i1 %222, label %223, label %242

223:                                              ; preds = %217
  %224 = load i8*, i8** @Qs, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 46
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

230:                                              ; preds = %223
  %231 = load i8*, i8** @Qs, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** @Qs, align 8
  %233 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %234 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call %struct.TYPE_6__* @parse_queryB(i32 %235)
  store %struct.TYPE_6__* %236, %struct.TYPE_6__** %4, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %238 = icmp ne %struct.TYPE_6__* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %230
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

240:                                              ; preds = %230
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %241, %struct.TYPE_6__** %2, align 8
  br label %471

242:                                              ; preds = %217
  %243 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %244 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, 7
  %247 = icmp eq i32 %246, 3
  br i1 %247, label %248, label %266

248:                                              ; preds = %242
  %249 = load i8*, i8** @Qs, align 8
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 61
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

254:                                              ; preds = %248
  %255 = load i8*, i8** @Qs, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** @Qs, align 8
  %257 = call signext i8 (...) @skip_spc()
  %258 = load i32, i32* @q_and, align 4
  %259 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %260 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %263 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call %struct.TYPE_6__* @parse_wordlist(i32 %258, i64 %261, i32 %264)
  store %struct.TYPE_6__* %265, %struct.TYPE_6__** %2, align 8
  br label %471

266:                                              ; preds = %242
  %267 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %268 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = and i32 %269, 7
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %272, label %293

272:                                              ; preds = %266
  %273 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %274 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = call %struct.TYPE_6__* @new_qnode(i64 %275, i32 0)
  store %struct.TYPE_6__* %276, %struct.TYPE_6__** %4, align 8
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @q_true, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %291

282:                                              ; preds = %272
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @q_false, align 8
  %287 = icmp ne i64 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %282
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 1
  store i32 4, i32* %290, align 4
  br label %291

291:                                              ; preds = %288, %282, %272
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %292, %struct.TYPE_6__** %2, align 8
  br label %471

293:                                              ; preds = %266
  %294 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %295 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = and i32 %296, 7
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %324

299:                                              ; preds = %293
  %300 = load i8*, i8** @Qs, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 0
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 62
  br i1 %304, label %311, label %305

305:                                              ; preds = %299
  %306 = load i8*, i8** @Qs, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 0
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 60
  br i1 %310, label %311, label %324

311:                                              ; preds = %305, %299
  %312 = load i8*, i8** @Qs, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 1
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 61
  br i1 %316, label %317, label %324

317:                                              ; preds = %311
  %318 = load i8*, i8** @Qs, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 0
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  store i32 %321, i32* %8, align 4
  %322 = load i8*, i8** @Qs, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** @Qs, align 8
  br label %324

324:                                              ; preds = %317, %311, %305, %293
  %325 = load i8*, i8** @Qs, align 8
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp ne i32 %327, 61
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

330:                                              ; preds = %324
  %331 = load i8*, i8** @Qs, align 8
  %332 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %332, i8** @Qs, align 8
  %333 = call signext i8 (...) @skip_spc()
  %334 = load i8*, i8** @Qs, align 8
  %335 = call i32 @strtol(i8* %334, i8** %10, i32 10)
  store i32 %335, i32* %7, align 4
  %336 = load i8*, i8** %10, align 8
  %337 = load i8*, i8** @Qs, align 8
  %338 = icmp eq i8* %336, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %330
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

340:                                              ; preds = %330
  %341 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %342 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, -1
  br i1 %344, label %345, label %351

345:                                              ; preds = %340
  %346 = load i32, i32* %7, align 4
  %347 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %348 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp slt i32 %346, %349
  br i1 %350, label %362, label %351

351:                                              ; preds = %345, %340
  %352 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %353 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, -1
  br i1 %355, label %356, label %363

356:                                              ; preds = %351
  %357 = load i32, i32* %7, align 4
  %358 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %359 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp sgt i32 %357, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %356, %345
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

363:                                              ; preds = %356, %351
  %364 = load i8*, i8** %10, align 8
  store i8* %364, i8** @Qs, align 8
  %365 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %366 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = load i32, i32* %7, align 4
  %369 = call %struct.TYPE_6__* @new_qnode(i64 %367, i32 %368)
  store %struct.TYPE_6__* %369, %struct.TYPE_6__** %4, align 8
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %371 = icmp ne %struct.TYPE_6__* %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %363
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %471

373:                                              ; preds = %363
  %374 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %375 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = and i32 %376, 7
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %455

379:                                              ; preds = %373
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = or i32 %382, 16
  store i32 %383, i32* %381, align 8
  %384 = load i32, i32* %7, align 4
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 3
  store i32 %384, i32* %386, align 8
  %387 = load i32, i32* %8, align 4
  %388 = icmp eq i32 %387, 60
  br i1 %388, label %389, label %413

389:                                              ; preds = %379
  %390 = load i32, i32* %7, align 4
  %391 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %392 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %390, %393
  br i1 %394, label %398, label %395

395:                                              ; preds = %389
  %396 = load i32, i32* %7, align 4
  %397 = icmp eq i32 %396, -1
  br i1 %397, label %398, label %413

398:                                              ; preds = %395, %389
  %399 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %400 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %403, label %407

403:                                              ; preds = %398
  %404 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %405 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  br label %409

407:                                              ; preds = %398
  %408 = load i32, i32* @MININT, align 4
  br label %409

409:                                              ; preds = %407, %403
  %410 = phi i32 [ %406, %403 ], [ %408, %407 ]
  %411 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 4
  store i32 %410, i32* %412, align 4
  br label %413

413:                                              ; preds = %409, %395, %379
  %414 = load i32, i32* %8, align 4
  %415 = icmp eq i32 %414, 62
  br i1 %415, label %416, label %429

416:                                              ; preds = %413
  %417 = load i32, i32* %7, align 4
  %418 = load %struct.query_keyword_descr*, %struct.query_keyword_descr** %9, align 8
  %419 = getelementptr inbounds %struct.query_keyword_descr, %struct.query_keyword_descr* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %417, %420
  br i1 %421, label %425, label %422

422:                                              ; preds = %416
  %423 = load i32, i32* %7, align 4
  %424 = icmp eq i32 %423, -1
  br i1 %424, label %425, label %429

425:                                              ; preds = %422, %416
  %426 = load i32, i32* @MAXINT, align 4
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 3
  store i32 %426, i32* %428, align 8
  br label %429

429:                                              ; preds = %425, %422, %413
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* @MININT, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %449, label %435

435:                                              ; preds = %429
  %436 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @MAXINT, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %449, label %441

441:                                              ; preds = %435
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 8
  %448 = icmp eq i32 %444, %447
  br label %449

449:                                              ; preds = %441, %435, %429
  %450 = phi i1 [ true, %435 ], [ true, %429 ], [ %448, %441 ]
  %451 = zext i1 %450 to i64
  %452 = select i1 %450, i32 1, i32 2
  %453 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 1
  store i32 %452, i32* %454, align 4
  br label %469

455:                                              ; preds = %373
  %456 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = or i32 %458, 8
  store i32 %459, i32* %457, align 8
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 2
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @q_birthday_soon, align 8
  %464 = icmp eq i64 %462, %463
  %465 = zext i1 %464 to i64
  %466 = select i1 %464, i32 4, i32 1
  %467 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 1
  store i32 %466, i32* %468, align 4
  br label %469

469:                                              ; preds = %455, %449
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %470, %struct.TYPE_6__** %2, align 8
  br label %471

471:                                              ; preds = %469, %372, %362, %339, %329, %291, %254, %253, %240, %239, %229, %206, %205, %197, %187, %169, %122, %62, %61, %45, %44, %21
  %472 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %472
}

declare dso_local signext i8 @skip_spc(...) #1

declare dso_local %struct.TYPE_6__* @parse_query(i32) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @new_qnode(i64, i32) #1

declare dso_local %struct.TYPE_6__* @parse_wordlist(i32, i64, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
