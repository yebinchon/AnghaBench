; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_parse_proxy_line.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_parse_proxy_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.sockaddr*, i32*)* @parse_proxy_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proxy_line(i8* %0, i64 %1, %struct.sockaddr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i16, align 2
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %11, align 8
  br label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -2, i32* %5, align 4
  br label %309

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 80
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %309

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -2, i32* %5, align 4
  br label %309

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 82
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %309

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -2, i32* %5, align 4
  br label %309

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 79
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %309

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -2, i32* %5, align 4
  br label %309

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 88
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %309

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -2, i32* %5, align 4
  br label %309

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %10, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 89
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 -1, i32* %5, align 4
  br label %309

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = icmp eq i8* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 -2, i32* %5, align 4
  br label %309

96:                                               ; preds = %91
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  %99 = load i8, i8* %97, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 32
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %309

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = icmp eq i8* %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 -2, i32* %5, align 4
  br label %309

109:                                              ; preds = %104
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %10, align 8
  %112 = load i8, i8* %110, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 84
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32*, i32** %9, align 8
  store i32 0, i32* %116, align 4
  br label %277

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = icmp eq i8* %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 -2, i32* %5, align 4
  br label %309

123:                                              ; preds = %118
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %10, align 8
  %126 = load i8, i8* %124, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 67
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 -1, i32* %5, align 4
  br label %309

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** %10, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = icmp eq i8* %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 -2, i32* %5, align 4
  br label %309

137:                                              ; preds = %132
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %10, align 8
  %140 = load i8, i8* %138, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 80
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 -1, i32* %5, align 4
  br label %309

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144
  %146 = load i8*, i8** %10, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i32 -2, i32* %5, align 4
  br label %309

150:                                              ; preds = %145
  %151 = load i8*, i8** %10, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %10, align 8
  %153 = load i8, i8* %151, align 1
  %154 = sext i8 %153 to i32
  switch i32 %154, label %183 [
    i32 52, label %155
    i32 54, label %169
  ]

155:                                              ; preds = %150
  %156 = load i32*, i32** %9, align 8
  store i32 8, i32* %156, align 4
  %157 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %158 = call i32 @memset(%struct.sockaddr* %157, i32 0, i32 8)
  %159 = load i32, i32* @AF_INET, align 4
  %160 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %161 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %163 = bitcast %struct.sockaddr* %162 to %struct.sockaddr_in*
  %164 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %163, i32 0, i32 1
  %165 = bitcast i32* %164 to i8*
  store i8* %165, i8** %12, align 8
  %166 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %167 = bitcast %struct.sockaddr* %166 to %struct.sockaddr_in*
  %168 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %167, i32 0, i32 0
  store i32* %168, i32** %13, align 8
  br label %184

169:                                              ; preds = %150
  %170 = load i32*, i32** %9, align 8
  store i32 8, i32* %170, align 4
  %171 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %172 = call i32 @memset(%struct.sockaddr* %171, i32 0, i32 8)
  %173 = load i32, i32* @AF_INET6, align 4
  %174 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %175 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %177 = bitcast %struct.sockaddr* %176 to %struct.sockaddr_in6*
  %178 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %177, i32 0, i32 1
  %179 = bitcast i32* %178 to i8*
  store i8* %179, i8** %12, align 8
  %180 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %181 = bitcast %struct.sockaddr* %180 to %struct.sockaddr_in6*
  %182 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %181, i32 0, i32 0
  store i32* %182, i32** %13, align 8
  br label %184

183:                                              ; preds = %150
  store i32 -1, i32* %5, align 4
  br label %309

184:                                              ; preds = %169, %155
  br label %185

185:                                              ; preds = %184
  %186 = load i8*, i8** %10, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = icmp eq i8* %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store i32 -2, i32* %5, align 4
  br label %309

190:                                              ; preds = %185
  %191 = load i8*, i8** %10, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %10, align 8
  %193 = load i8, i8* %191, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 32
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  store i32 -1, i32* %5, align 4
  br label %309

197:                                              ; preds = %190
  br label %198

198:                                              ; preds = %197
  %199 = load i8*, i8** %10, align 8
  store i8* %199, i8** %14, align 8
  br label %200

200:                                              ; preds = %198
  br label %201

201:                                              ; preds = %207, %200
  %202 = load i8*, i8** %10, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = icmp eq i8* %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 -2, i32* %5, align 4
  br label %309

206:                                              ; preds = %201
  br label %207

207:                                              ; preds = %206
  %208 = load i8*, i8** %10, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %10, align 8
  %210 = load i8, i8* %208, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 32
  br i1 %212, label %201, label %213

213:                                              ; preds = %207
  %214 = load i8*, i8** %10, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 -1
  store i8* %215, i8** %10, align 8
  br label %216

216:                                              ; preds = %213
  %217 = load i8*, i8** %10, align 8
  store i8 0, i8* %217, align 1
  %218 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %219 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i8*, i8** %14, align 8
  %222 = load i8*, i8** %12, align 8
  %223 = call i32 @inet_pton(i32 %220, i8* %221, i8* %222)
  %224 = icmp ne i32 %223, 1
  br i1 %224, label %225, label %226

225:                                              ; preds = %216
  store i32 -1, i32* %5, align 4
  br label %309

226:                                              ; preds = %216
  %227 = load i8*, i8** %10, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %10, align 8
  store i8 32, i8* %227, align 1
  br label %229

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %236, %229
  %231 = load i8*, i8** %10, align 8
  %232 = load i8*, i8** %11, align 8
  %233 = icmp eq i8* %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 -2, i32* %5, align 4
  br label %309

235:                                              ; preds = %230
  br label %236

236:                                              ; preds = %235
  %237 = load i8*, i8** %10, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %10, align 8
  %239 = load i8, i8* %237, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp ne i32 %240, 32
  br i1 %241, label %230, label %242

242:                                              ; preds = %236
  %243 = load i8*, i8** %10, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 -1
  store i8* %244, i8** %10, align 8
  br label %245

245:                                              ; preds = %242
  %246 = load i8*, i8** %10, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %10, align 8
  %248 = load i8*, i8** %10, align 8
  store i8* %248, i8** %15, align 8
  br label %249

249:                                              ; preds = %245
  br label %250

250:                                              ; preds = %256, %249
  %251 = load i8*, i8** %10, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = icmp eq i8* %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  store i32 -2, i32* %5, align 4
  br label %309

255:                                              ; preds = %250
  br label %256

256:                                              ; preds = %255
  %257 = load i8*, i8** %10, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %10, align 8
  %259 = load i8, i8* %257, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp ne i32 %260, 32
  br i1 %261, label %250, label %262

262:                                              ; preds = %256
  %263 = load i8*, i8** %10, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 -1
  store i8* %264, i8** %10, align 8
  br label %265

265:                                              ; preds = %262
  %266 = load i8*, i8** %10, align 8
  store i8 0, i8* %266, align 1
  %267 = load i8*, i8** %15, align 8
  %268 = call i32 @sscanf(i8* %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16* %16)
  %269 = icmp ne i32 %268, 1
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  store i32 -1, i32* %5, align 4
  br label %309

271:                                              ; preds = %265
  %272 = load i16, i16* %16, align 2
  %273 = call i32 @htons(i16 zeroext %272)
  %274 = load i32*, i32** %13, align 8
  store i32 %273, i32* %274, align 4
  %275 = load i8*, i8** %10, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %10, align 8
  store i8 32, i8* %275, align 1
  br label %277

277:                                              ; preds = %271, %115
  br label %278

278:                                              ; preds = %284, %277
  %279 = load i8*, i8** %10, align 8
  %280 = load i8*, i8** %11, align 8
  %281 = icmp eq i8* %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  store i32 -2, i32* %5, align 4
  br label %309

283:                                              ; preds = %278
  br label %284

284:                                              ; preds = %283
  %285 = load i8*, i8** %10, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %10, align 8
  %287 = load i8, i8* %285, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp ne i32 %288, 13
  br i1 %289, label %278, label %290

290:                                              ; preds = %284
  %291 = load i8*, i8** %10, align 8
  %292 = load i8*, i8** %11, align 8
  %293 = icmp eq i8* %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  store i32 -2, i32* %5, align 4
  br label %309

295:                                              ; preds = %290
  %296 = load i8*, i8** %10, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %10, align 8
  %298 = load i8, i8* %296, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp ne i32 %299, 10
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  store i32 -2, i32* %5, align 4
  br label %309

302:                                              ; preds = %295
  %303 = load i8*, i8** %10, align 8
  %304 = load i8*, i8** %6, align 8
  %305 = ptrtoint i8* %303 to i64
  %306 = ptrtoint i8* %304 to i64
  %307 = sub i64 %305, %306
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %5, align 4
  br label %309

309:                                              ; preds = %302, %301, %294, %282, %270, %254, %234, %225, %205, %196, %189, %183, %149, %143, %136, %129, %122, %108, %102, %95, %88, %81, %74, %67, %60, %53, %46, %39, %32, %25
  %310 = load i32, i32* %5, align 4
  ret i32 %310
}

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i16*) #1

declare dso_local i32 @htons(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
