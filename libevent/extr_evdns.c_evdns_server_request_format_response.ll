; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_server_request_format_response.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_server_request_format_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_request = type { i32, i32, i32, i32, i32, i8*, %struct.server_reply_item*, %struct.server_reply_item*, %struct.server_reply_item*, %struct.TYPE_4__ }
%struct.server_reply_item = type { i8*, i32, i32, i8*, i32, %struct.server_reply_item*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8*, i32, i32 }
%struct.dnslabel_table = type { i32 }

@_QR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.server_request*, i32)* @evdns_server_request_format_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_server_request_format_response(%struct.server_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.server_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1500 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dnslabel_table, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.server_reply_item*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.server_request* %0, %struct.server_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 1500, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 15
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  store i32 -1, i32* %3, align 4
  br label %282

25:                                               ; preds = %21
  %26 = load %struct.server_request*, %struct.server_request** %4, align 8
  %27 = getelementptr inbounds %struct.server_request, %struct.server_request* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @_QR_MASK, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = call i32 @dnslabel_table_init(%struct.dnslabel_table* %14)
  %36 = load %struct.server_request*, %struct.server_request** %4, align 8
  %37 = getelementptr inbounds %struct.server_request, %struct.server_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @APPEND16(i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @APPEND16(i32 %40)
  %42 = load %struct.server_request*, %struct.server_request** %4, align 8
  %43 = getelementptr inbounds %struct.server_request, %struct.server_request* %42, i32 0, i32 9
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @APPEND16(i32 %45)
  %47 = load %struct.server_request*, %struct.server_request** %4, align 8
  %48 = getelementptr inbounds %struct.server_request, %struct.server_request* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @APPEND16(i32 %49)
  %51 = load %struct.server_request*, %struct.server_request** %4, align 8
  %52 = getelementptr inbounds %struct.server_request, %struct.server_request* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @APPEND16(i32 %53)
  %55 = load %struct.server_request*, %struct.server_request** %4, align 8
  %56 = getelementptr inbounds %struct.server_request, %struct.server_request* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @APPEND16(i32 %57)
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %112, %25
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.server_request*, %struct.server_request** %4, align 8
  %62 = getelementptr inbounds %struct.server_request, %struct.server_request* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %59
  %67 = load %struct.server_request*, %struct.server_request** %4, align 8
  %68 = getelementptr inbounds %struct.server_request, %struct.server_request* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %70, i64 %72
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %15, align 8
  %77 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i8*, i8** %15, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = call i32 @dnsname_to_labels(i8* %77, i64 %78, i32 %79, i8* %80, i32 %82, %struct.dnslabel_table* %14)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %66
  %87 = call i32 @dnslabel_clear(%struct.dnslabel_table* %14)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %282

89:                                               ; preds = %66
  %90 = load %struct.server_request*, %struct.server_request** %4, align 8
  %91 = getelementptr inbounds %struct.server_request, %struct.server_request* %90, i32 0, i32 9
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %93, i64 %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @APPEND16(i32 %99)
  %101 = load %struct.server_request*, %struct.server_request** %4, align 8
  %102 = getelementptr inbounds %struct.server_request, %struct.server_request* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %104, i64 %106
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @APPEND16(i32 %110)
  br label %112

112:                                              ; preds = %89
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %59

115:                                              ; preds = %59
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %242, %115
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 3
  br i1 %118, label %119, label %245

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.server_request*, %struct.server_request** %4, align 8
  %124 = getelementptr inbounds %struct.server_request, %struct.server_request* %123, i32 0, i32 8
  %125 = load %struct.server_reply_item*, %struct.server_reply_item** %124, align 8
  store %struct.server_reply_item* %125, %struct.server_reply_item** %16, align 8
  br label %138

126:                                              ; preds = %119
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.server_request*, %struct.server_request** %4, align 8
  %131 = getelementptr inbounds %struct.server_request, %struct.server_request* %130, i32 0, i32 7
  %132 = load %struct.server_reply_item*, %struct.server_reply_item** %131, align 8
  store %struct.server_reply_item* %132, %struct.server_reply_item** %16, align 8
  br label %137

133:                                              ; preds = %126
  %134 = load %struct.server_request*, %struct.server_request** %4, align 8
  %135 = getelementptr inbounds %struct.server_request, %struct.server_request* %134, i32 0, i32 6
  %136 = load %struct.server_reply_item*, %struct.server_reply_item** %135, align 8
  store %struct.server_reply_item* %136, %struct.server_reply_item** %16, align 8
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %122
  br label %139

139:                                              ; preds = %237, %138
  %140 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %141 = icmp ne %struct.server_reply_item* %140, null
  br i1 %141, label %142, label %241

142:                                              ; preds = %139
  %143 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %144 = load i64, i64* %7, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %147 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %150 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = call i32 @dnsname_to_labels(i8* %143, i64 %144, i32 %145, i8* %148, i32 %152, %struct.dnslabel_table* %14)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %142
  br label %249

157:                                              ; preds = %142
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %8, align 4
  %159 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %160 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @APPEND16(i32 %161)
  %163 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %164 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @APPEND16(i32 %165)
  %167 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %168 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @APPEND32(i32 %169)
  %171 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %172 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %206

175:                                              ; preds = %157
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 2
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %18, align 4
  %180 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %181 = load i64, i64* %7, align 8
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %184 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %187 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %186, i32 0, i32 3
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @strlen(i8* %188)
  %190 = call i32 @dnsname_to_labels(i8* %180, i64 %181, i32 %182, i8* %185, i32 %189, %struct.dnslabel_table* %14)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %175
  br label %249

194:                                              ; preds = %175
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %18, align 4
  %198 = sub nsw i32 %196, %197
  %199 = trunc i32 %198 to i16
  %200 = call i32 @htons(i16 signext %199)
  store i32 %200, i32* %10, align 4
  %201 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = call i32 (i8*, ...) @memcpy(i8* %204, i32* %10, i32 2)
  br label %237

206:                                              ; preds = %157
  %207 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %208 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @APPEND16(i32 %209)
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %213 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %211, %214
  %216 = load i64, i64* %7, align 8
  %217 = trunc i64 %216 to i32
  %218 = icmp sgt i32 %215, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %206
  br label %249

220:                                              ; preds = %206
  %221 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %226 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %225, i32 0, i32 3
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %229 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i8*, ...) @memcpy(i8* %224, i8* %227, i32 %230)
  %232 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %233 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %8, align 4
  br label %237

237:                                              ; preds = %220, %194
  %238 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %239 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %238, i32 0, i32 5
  %240 = load %struct.server_reply_item*, %struct.server_reply_item** %239, align 8
  store %struct.server_reply_item* %240, %struct.server_reply_item** %16, align 8
  br label %139

241:                                              ; preds = %139
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %116

245:                                              ; preds = %116
  %246 = load i32, i32* %8, align 4
  %247 = icmp sgt i32 %246, 512
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  br label %249

249:                                              ; preds = %248, %219, %193, %156
  store i32 512, i32* %8, align 4
  %250 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 2
  %251 = load i8, i8* %250, align 2
  %252 = zext i8 %251 to i32
  %253 = or i32 %252, 2
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %250, align 2
  br label %255

255:                                              ; preds = %249, %245
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.server_request*, %struct.server_request** %4, align 8
  %258 = getelementptr inbounds %struct.server_request, %struct.server_request* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 8
  %259 = load %struct.server_request*, %struct.server_request** %4, align 8
  %260 = getelementptr inbounds %struct.server_request, %struct.server_request* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @mm_malloc(i32 %261)
  %263 = load %struct.server_request*, %struct.server_request** %4, align 8
  %264 = getelementptr inbounds %struct.server_request, %struct.server_request* %263, i32 0, i32 5
  store i8* %262, i8** %264, align 8
  %265 = icmp ne i8* %262, null
  br i1 %265, label %270, label %266

266:                                              ; preds = %255
  %267 = load %struct.server_request*, %struct.server_request** %4, align 8
  %268 = call i32 @server_request_free_answers(%struct.server_request* %267)
  %269 = call i32 @dnslabel_clear(%struct.dnslabel_table* %14)
  store i32 -1, i32* %3, align 4
  br label %282

270:                                              ; preds = %255
  %271 = load %struct.server_request*, %struct.server_request** %4, align 8
  %272 = getelementptr inbounds %struct.server_request, %struct.server_request* %271, i32 0, i32 5
  %273 = load i8*, i8** %272, align 8
  %274 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %275 = load %struct.server_request*, %struct.server_request** %4, align 8
  %276 = getelementptr inbounds %struct.server_request, %struct.server_request* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (i8*, ...) @memcpy(i8* %273, i8* %274, i32 %277)
  %279 = load %struct.server_request*, %struct.server_request** %4, align 8
  %280 = call i32 @server_request_free_answers(%struct.server_request* %279)
  %281 = call i32 @dnslabel_clear(%struct.dnslabel_table* %14)
  store i32 0, i32* %3, align 4
  br label %282

282:                                              ; preds = %270, %266, %86, %24
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @dnslabel_table_init(%struct.dnslabel_table*) #1

declare dso_local i32 @APPEND16(i32) #1

declare dso_local i32 @dnsname_to_labels(i8*, i64, i32, i8*, i32, %struct.dnslabel_table*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dnslabel_clear(%struct.dnslabel_table*) #1

declare dso_local i32 @APPEND32(i32) #1

declare dso_local i32 @htons(i16 signext) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i8* @mm_malloc(i32) #1

declare dso_local i32 @server_request_free_answers(%struct.server_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
