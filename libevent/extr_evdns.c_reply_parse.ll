; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_reply_parse.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_reply_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.reply = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.request = type { i32, i32, i32*, i32*, %struct.evdns_base* }

@_QR_MASK = common dso_local global i32 0, align 4
@_RCODE_MASK = common dso_local global i32 0, align 4
@_TC_MASK = common dso_local global i32 0, align 4
@DNS_ERR_NOTEXIST = common dso_local global i32 0, align 4
@TYPE_A = common dso_local global i32 0, align 4
@CLASS_INET = common dso_local global i32 0, align 4
@MAX_V4_ADDRS = common dso_local global i32 0, align 4
@TYPE_PTR = common dso_local global i32 0, align 4
@TYPE_CNAME = common dso_local global i32 0, align 4
@HOST_NAME_MAX = common dso_local global i32 0, align 4
@TYPE_AAAA = common dso_local global i32 0, align 4
@MAX_V6_ADDRS = common dso_local global i32 0, align 4
@TYPE_SOA = common dso_local global i32 0, align 4
@SKIP_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, i32*, i32)* @reply_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reply_parse(%struct.evdns_base* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evdns_base*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.reply, align 8
  %25 = alloca %struct.request*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %21, align 4
  store i32 -1, i32* %23, align 4
  store %struct.request* null, %struct.request** %25, align 8
  %43 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %44 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %43)
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @GET16(i32 %45)
  %47 = load i32, i32* %21, align 4
  %48 = call i32 @GET16(i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @GET16(i32 %49)
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @GET16(i32 %51)
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @GET16(i32 %53)
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @GET16(i32 %55)
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call %struct.request* @request_find_from_trans_id(%struct.evdns_base* %59, i32 %60)
  store %struct.request* %61, %struct.request** %25, align 8
  %62 = load %struct.request*, %struct.request** %25, align 8
  %63 = icmp ne %struct.request* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %529

65:                                               ; preds = %3
  %66 = load %struct.request*, %struct.request** %25, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 4
  %68 = load %struct.evdns_base*, %struct.evdns_base** %67, align 8
  %69 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %70 = icmp eq %struct.evdns_base* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @EVUTIL_ASSERT(i32 %71)
  %73 = call i32 @memset(%struct.reply* %24, i32 0, i32 48)
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* @_QR_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %529

79:                                               ; preds = %65
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* @_RCODE_MASK, align 4
  %82 = load i32, i32* @_TC_MASK, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* @_RCODE_MASK, align 4
  %89 = load i32, i32* @_TC_MASK, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = load i32, i32* @DNS_ERR_NOTEXIST, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %521

95:                                               ; preds = %86, %79
  %96 = load %struct.request*, %struct.request** %25, align 8
  %97 = getelementptr inbounds %struct.request, %struct.request* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  store i32 0, i32* %26, align 4
  br label %100

100:                                              ; preds = %152, %95
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %155

104:                                              ; preds = %100
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %105, align 16
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %106, align 16
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %9, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %111 = call i64 @name_parse(i32* %108, i32 %109, i32* %8, i8* %110, i32 256)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %521

114:                                              ; preds = %104
  %115 = load %struct.request*, %struct.request** %25, align 8
  %116 = getelementptr inbounds %struct.request, %struct.request* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.request*, %struct.request** %25, align 8
  %119 = getelementptr inbounds %struct.request, %struct.request* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %122 = call i64 @name_parse(i32* %117, i32 %120, i32* %9, i8* %121, i32 256)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %521

125:                                              ; preds = %114
  %126 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %127 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %133 = call i64 @strcmp(i8* %131, i8* %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 1, i32* %14, align 4
  br label %136

136:                                              ; preds = %135, %130
  br label %144

137:                                              ; preds = %125
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %140 = call i64 @evutil_ascii_strcasecmp(i8* %138, i8* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i32 1, i32* %14, align 4
  br label %143

143:                                              ; preds = %142, %137
  br label %144

144:                                              ; preds = %143, %136
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 4
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %521

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %26, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %26, align 4
  br label %100

155:                                              ; preds = %100
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  br label %521

159:                                              ; preds = %155
  store i32 0, i32* %26, align 4
  br label %160

160:                                              ; preds = %424, %159
  %161 = load i32, i32* %26, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %164, label %427

164:                                              ; preds = %160
  br label %165

165:                                              ; preds = %164
  %166 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %166, align 16
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %7, align 4
  %169 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %170 = call i64 @name_parse(i32* %167, i32 %168, i32* %8, i8* %169, i32 256)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %521

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %27, align 4
  %176 = call i32 @GET16(i32 %175)
  %177 = load i32, i32* %28, align 4
  %178 = call i32 @GET16(i32 %177)
  %179 = load i32, i32* %22, align 4
  %180 = call i32 @GET32(i32 %179)
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @GET16(i32 %181)
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* @TYPE_A, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %263

186:                                              ; preds = %174
  %187 = load i32, i32* %28, align 4
  %188 = load i32, i32* @CLASS_INET, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %263

190:                                              ; preds = %186
  %191 = load %struct.request*, %struct.request** %25, align 8
  %192 = getelementptr inbounds %struct.request, %struct.request* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @TYPE_A, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* %8, align 4
  %199 = add i32 %198, %197
  store i32 %199, i32* %8, align 4
  br label %424

200:                                              ; preds = %190
  %201 = load i32, i32* %20, align 4
  %202 = and i32 %201, 3
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  br label %521

205:                                              ; preds = %200
  %206 = load i32, i32* %20, align 4
  %207 = lshr i32 %206, 2
  store i32 %207, i32* %29, align 4
  %208 = load i32, i32* @MAX_V4_ADDRS, align 4
  %209 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sub nsw i32 %208, %212
  %214 = load i32, i32* %29, align 4
  %215 = call i32 @MIN(i32 %213, i32 %214)
  store i32 %215, i32* %30, align 4
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* %22, align 4
  %218 = call i32 @MIN(i32 %216, i32 %217)
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %30, align 4
  %221 = mul nsw i32 4, %220
  %222 = add nsw i32 %219, %221
  %223 = load i32, i32* %7, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %205
  br label %521

226:                                              ; preds = %205
  %227 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %230, i64 %235
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %30, align 4
  %242 = mul nsw i32 4, %241
  %243 = call i32 @memcpy(i32* %236, i32* %240, i32 %242)
  %244 = load i32, i32* %30, align 4
  %245 = mul nsw i32 4, %244
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %30, align 4
  %249 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, %248
  store i32 %253, i32* %251, align 8
  %254 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 1
  store i32 1, i32* %254, align 4
  %255 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @MAX_V4_ADDRS, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %226
  br label %427

262:                                              ; preds = %226
  br label %423

263:                                              ; preds = %186, %174
  %264 = load i32, i32* %27, align 4
  %265 = load i32, i32* @TYPE_PTR, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %296

267:                                              ; preds = %263
  %268 = load i32, i32* %28, align 4
  %269 = load i32, i32* @CLASS_INET, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %296

271:                                              ; preds = %267
  %272 = load %struct.request*, %struct.request** %25, align 8
  %273 = getelementptr inbounds %struct.request, %struct.request* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @TYPE_PTR, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %271
  %278 = load i32, i32* %20, align 4
  %279 = load i32, i32* %8, align 4
  %280 = add i32 %279, %278
  store i32 %280, i32* %8, align 4
  br label %424

281:                                              ; preds = %271
  %282 = load i32*, i32** %6, align 8
  %283 = load i32, i32* %7, align 4
  %284 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i64 @name_parse(i32* %282, i32 %283, i32* %8, i8* %287, i32 8)
  %289 = icmp slt i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %281
  br label %521

291:                                              ; preds = %281
  %292 = load i32, i32* %23, align 4
  %293 = load i32, i32* %22, align 4
  %294 = call i32 @MIN(i32 %292, i32 %293)
  store i32 %294, i32* %23, align 4
  %295 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 1
  store i32 1, i32* %295, align 4
  br label %427

296:                                              ; preds = %267, %263
  %297 = load i32, i32* %27, align 4
  %298 = load i32, i32* @TYPE_CNAME, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %335

300:                                              ; preds = %296
  %301 = load i32, i32* @HOST_NAME_MAX, align 4
  %302 = zext i32 %301 to i64
  %303 = call i8* @llvm.stacksave()
  store i8* %303, i8** %31, align 8
  %304 = alloca i8, i64 %302, align 16
  store i64 %302, i64* %32, align 8
  %305 = load %struct.request*, %struct.request** %25, align 8
  %306 = getelementptr inbounds %struct.request, %struct.request* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %309, label %315

309:                                              ; preds = %300
  %310 = load %struct.request*, %struct.request** %25, align 8
  %311 = getelementptr inbounds %struct.request, %struct.request* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %309, %300
  %316 = load i32, i32* %20, align 4
  %317 = load i32, i32* %8, align 4
  %318 = add i32 %317, %316
  store i32 %318, i32* %8, align 4
  store i32 8, i32* %33, align 4
  br label %331

319:                                              ; preds = %309
  %320 = load i32*, i32** %6, align 8
  %321 = load i32, i32* %7, align 4
  %322 = trunc i64 %302 to i32
  %323 = call i64 @name_parse(i32* %320, i32 %321, i32* %8, i8* %304, i32 %322)
  %324 = icmp slt i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %319
  store i32 2, i32* %33, align 4
  br label %331

326:                                              ; preds = %319
  %327 = call i32 @mm_strdup(i8* %304)
  %328 = load %struct.request*, %struct.request** %25, align 8
  %329 = getelementptr inbounds %struct.request, %struct.request* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  store i32 %327, i32* %330, align 4
  store i32 0, i32* %33, align 4
  br label %331

331:                                              ; preds = %325, %326, %315
  %332 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %33, align 4
  switch i32 %333, label %531 [
    i32 0, label %334
    i32 8, label %424
    i32 2, label %521
  ]

334:                                              ; preds = %331
  br label %421

335:                                              ; preds = %296
  %336 = load i32, i32* %27, align 4
  %337 = load i32, i32* @TYPE_AAAA, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %416

339:                                              ; preds = %335
  %340 = load i32, i32* %28, align 4
  %341 = load i32, i32* @CLASS_INET, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %416

343:                                              ; preds = %339
  %344 = load %struct.request*, %struct.request** %25, align 8
  %345 = getelementptr inbounds %struct.request, %struct.request* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @TYPE_AAAA, align 4
  %348 = icmp ne i32 %346, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %343
  %350 = load i32, i32* %20, align 4
  %351 = load i32, i32* %8, align 4
  %352 = add i32 %351, %350
  store i32 %352, i32* %8, align 4
  br label %424

353:                                              ; preds = %343
  %354 = load i32, i32* %20, align 4
  %355 = and i32 %354, 15
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %353
  br label %521

358:                                              ; preds = %353
  %359 = load i32, i32* %20, align 4
  %360 = lshr i32 %359, 4
  store i32 %360, i32* %34, align 4
  %361 = load i32, i32* @MAX_V6_ADDRS, align 4
  %362 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = sub nsw i32 %361, %365
  %367 = load i32, i32* %34, align 4
  %368 = call i32 @MIN(i32 %366, i32 %367)
  store i32 %368, i32* %35, align 4
  %369 = load i32, i32* %23, align 4
  %370 = load i32, i32* %22, align 4
  %371 = call i32 @MIN(i32 %369, i32 %370)
  store i32 %371, i32* %23, align 4
  %372 = load i32, i32* %8, align 4
  %373 = load i32, i32* %35, align 4
  %374 = mul nsw i32 16, %373
  %375 = add nsw i32 %372, %374
  %376 = load i32, i32* %7, align 4
  %377 = icmp sgt i32 %375, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %358
  br label %521

379:                                              ; preds = %358
  %380 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %383, i64 %388
  %390 = load i32*, i32** %6, align 8
  %391 = load i32, i32* %8, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %35, align 4
  %395 = mul nsw i32 16, %394
  %396 = call i32 @memcpy(i32* %389, i32* %393, i32 %395)
  %397 = load i32, i32* %35, align 4
  %398 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = add nsw i32 %401, %397
  store i32 %402, i32* %400, align 8
  %403 = load i32, i32* %35, align 4
  %404 = mul nsw i32 16, %403
  %405 = load i32, i32* %8, align 4
  %406 = add nsw i32 %405, %404
  store i32 %406, i32* %8, align 4
  %407 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 1
  store i32 1, i32* %407, align 4
  %408 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @MAX_V6_ADDRS, align 4
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %379
  br label %427

415:                                              ; preds = %379
  br label %420

416:                                              ; preds = %339, %335
  %417 = load i32, i32* %20, align 4
  %418 = load i32, i32* %8, align 4
  %419 = add i32 %418, %417
  store i32 %419, i32* %8, align 4
  br label %420

420:                                              ; preds = %416, %415
  br label %421

421:                                              ; preds = %420, %334
  br label %422

422:                                              ; preds = %421
  br label %423

423:                                              ; preds = %422, %262
  br label %424

424:                                              ; preds = %423, %349, %331, %277, %196
  %425 = load i32, i32* %26, align 4
  %426 = add i32 %425, 1
  store i32 %426, i32* %26, align 4
  br label %160

427:                                              ; preds = %414, %291, %261, %160
  %428 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %512, label %431

431:                                              ; preds = %427
  store i32 0, i32* %26, align 4
  br label %432

432:                                              ; preds = %508, %431
  %433 = load i32, i32* %26, align 4
  %434 = load i32, i32* %18, align 4
  %435 = icmp ult i32 %433, %434
  br i1 %435, label %436, label %511

436:                                              ; preds = %432
  br label %437

437:                                              ; preds = %436
  %438 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %438, align 16
  %439 = load i32*, i32** %6, align 8
  %440 = load i32, i32* %7, align 4
  %441 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %442 = call i64 @name_parse(i32* %439, i32 %440, i32* %8, i8* %441, i32 256)
  %443 = icmp slt i64 %442, 0
  br i1 %443, label %444, label %445

444:                                              ; preds = %437
  br label %521

445:                                              ; preds = %437
  br label %446

446:                                              ; preds = %445
  %447 = load i32, i32* %36, align 4
  %448 = call i32 @GET16(i32 %447)
  %449 = load i32, i32* %37, align 4
  %450 = call i32 @GET16(i32 %449)
  %451 = load i32, i32* %22, align 4
  %452 = call i32 @GET32(i32 %451)
  %453 = load i32, i32* %20, align 4
  %454 = call i32 @GET16(i32 %453)
  %455 = load i32, i32* %36, align 4
  %456 = load i32, i32* @TYPE_SOA, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %503

458:                                              ; preds = %446
  %459 = load i32, i32* %37, align 4
  %460 = load i32, i32* @CLASS_INET, align 4
  %461 = icmp eq i32 %459, %460
  br i1 %461, label %462, label %503

462:                                              ; preds = %458
  br label %463

463:                                              ; preds = %462
  %464 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %464, align 16
  %465 = load i32*, i32** %6, align 8
  %466 = load i32, i32* %7, align 4
  %467 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %468 = call i64 @name_parse(i32* %465, i32 %466, i32* %8, i8* %467, i32 256)
  %469 = icmp slt i64 %468, 0
  br i1 %469, label %470, label %471

470:                                              ; preds = %463
  br label %521

471:                                              ; preds = %463
  br label %472

472:                                              ; preds = %471
  br label %473

473:                                              ; preds = %472
  %474 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %474, align 16
  %475 = load i32*, i32** %6, align 8
  %476 = load i32, i32* %7, align 4
  %477 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %478 = call i64 @name_parse(i32* %475, i32 %476, i32* %8, i8* %477, i32 256)
  %479 = icmp slt i64 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %473
  br label %521

481:                                              ; preds = %473
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %38, align 4
  %484 = call i32 @GET32(i32 %483)
  %485 = load i32, i32* %39, align 4
  %486 = call i32 @GET32(i32 %485)
  %487 = load i32, i32* %40, align 4
  %488 = call i32 @GET32(i32 %487)
  %489 = load i32, i32* %41, align 4
  %490 = call i32 @GET32(i32 %489)
  %491 = load i32, i32* %42, align 4
  %492 = call i32 @GET32(i32 %491)
  %493 = load i32, i32* %41, align 4
  %494 = load i32, i32* %40, align 4
  %495 = load i32, i32* %39, align 4
  %496 = load i32, i32* %38, align 4
  %497 = load i32, i32* %23, align 4
  %498 = load i32, i32* %22, align 4
  %499 = call i32 @MIN(i32 %497, i32 %498)
  store i32 %499, i32* %23, align 4
  %500 = load i32, i32* %23, align 4
  %501 = load i32, i32* %42, align 4
  %502 = call i32 @MIN(i32 %500, i32 %501)
  store i32 %502, i32* %23, align 4
  br label %507

503:                                              ; preds = %458, %446
  %504 = load i32, i32* %20, align 4
  %505 = load i32, i32* %8, align 4
  %506 = add i32 %505, %504
  store i32 %506, i32* %8, align 4
  br label %507

507:                                              ; preds = %503, %482
  br label %508

508:                                              ; preds = %507
  %509 = load i32, i32* %26, align 4
  %510 = add i32 %509, 1
  store i32 %510, i32* %26, align 4
  br label %432

511:                                              ; preds = %432
  br label %512

512:                                              ; preds = %511, %427
  %513 = load i32, i32* %23, align 4
  %514 = icmp eq i32 %513, -1
  br i1 %514, label %515, label %516

515:                                              ; preds = %512
  store i32 0, i32* %23, align 4
  br label %516

516:                                              ; preds = %515, %512
  %517 = load %struct.request*, %struct.request** %25, align 8
  %518 = load i32, i32* %21, align 4
  %519 = load i32, i32* %23, align 4
  %520 = call i32 @reply_handle(%struct.request* %517, i32 %518, i32 %519, %struct.reply* %24)
  store i32 0, i32* %4, align 4
  br label %529

521:                                              ; preds = %480, %470, %444, %378, %357, %331, %290, %225, %204, %172, %158, %150, %124, %113, %94
  %522 = load %struct.request*, %struct.request** %25, align 8
  %523 = icmp ne %struct.request* %522, null
  br i1 %523, label %524, label %528

524:                                              ; preds = %521
  %525 = load %struct.request*, %struct.request** %25, align 8
  %526 = load i32, i32* %21, align 4
  %527 = call i32 @reply_handle(%struct.request* %525, i32 %526, i32 0, %struct.reply* null)
  br label %528

528:                                              ; preds = %524, %521
  store i32 -1, i32* %4, align 4
  br label %529

529:                                              ; preds = %528, %516, %78, %64
  %530 = load i32, i32* %4, align 4
  ret i32 %530

531:                                              ; preds = %331
  unreachable
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @GET16(i32) #1

declare dso_local %struct.request* @request_find_from_trans_id(%struct.evdns_base*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @memset(%struct.reply*, i32, i32) #1

declare dso_local i64 @name_parse(i32*, i32, i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @evutil_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @GET32(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mm_strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @reply_handle(%struct.request*, i32, i32, %struct.reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
