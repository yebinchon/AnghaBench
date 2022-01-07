; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_ipv6_to_ipv4.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_ipv6_to_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ip_buff = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%x%n\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%04x%04x\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%04x%04x%04x%04x\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_to_ipv4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [9 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca [17 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %56, %0
  %19 = load i8*, i8** @ip_buff, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %18
  %26 = load i8*, i8** @ip_buff, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 65, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %25
  %34 = load i8*, i8** @ip_buff, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp slt i32 %39, 90
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load i8*, i8** @ip_buff, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = sub nsw i32 %47, 65
  %49 = add nsw i32 %48, 97
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** @ip_buff, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 %50, i8* %54, align 1
  br label %55

55:                                               ; preds = %41, %33, %25
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %2, align 4
  br label %18

59:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  %60 = load i32, i32* %2, align 4
  store i32 %60, i32* %4, align 4
  %61 = load i8*, i8** @ip_buff, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 58
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load i8*, i8** @ip_buff, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 58
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %100

75:                                               ; preds = %66, %59
  %76 = load i32, i32* %4, align 4
  %77 = icmp sgt i32 %76, 2
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = load i8*, i8** @ip_buff, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 58
  br i1 %86, label %87, label %99

87:                                               ; preds = %78
  %88 = load i8*, i8** @ip_buff, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sub nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 58
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %87, %78, %75
  br label %100

100:                                              ; preds = %99, %72
  %101 = load i8*, i8** @ip_buff, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 58, i8* %104, align 1
  store i32 0, i32* %6, align 4
  %105 = load i32, i32* %3, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %140, %100
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = icmp sle i32 %111, 8
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i1 [ false, %106 ], [ %112, %110 ]
  br i1 %114, label %115, label %143

115:                                              ; preds = %113
  %116 = load i8*, i8** @ip_buff, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [9 x i8*], [9 x i8*]* %5, i64 0, i64 %122
  store i8* %119, i8** %123, align 8
  br label %124

124:                                              ; preds = %132, %115
  %125 = load i8*, i8** @ip_buff, align 8
  %126 = load i32, i32* %2, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 58
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* %2, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %2, align 4
  br label %124

135:                                              ; preds = %124
  %136 = load i8*, i8** @ip_buff, align 8
  %137 = load i32, i32* %2, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 0, i8* %139, align 1
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %2, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %2, align 4
  br label %106

143:                                              ; preds = %113
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4
  %148 = icmp sgt i32 %147, 8
  br i1 %148, label %149, label %150

149:                                              ; preds = %146, %143
  store i32 0, i32* %1, align 4
  br label %310

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 8
  br i1 %152, label %153, label %219

153:                                              ; preds = %150
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %174, %153
  %155 = load i32, i32* %2, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %154
  %159 = load i32, i32* %2, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [9 x i8*], [9 x i8*]* %5, i64 0, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  %168 = load i32, i32* %7, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 0, i32* %1, align 4
  br label %310

171:                                              ; preds = %167
  %172 = load i32, i32* %2, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %171, %158
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %2, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %2, align 4
  br label %154

177:                                              ; preds = %154
  %178 = load i32, i32* %7, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 0, i32* %1, align 4
  br label %310

181:                                              ; preds = %177
  %182 = load i32, i32* %6, align 4
  %183 = sub nsw i32 %182, 1
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %199, %181
  %185 = load i32, i32* %2, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %184
  %189 = load i32, i32* %2, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [9 x i8*], [9 x i8*]* %5, i64 0, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* %6, align 4
  %195 = sub nsw i32 %193, %194
  %196 = add nsw i32 %195, 8
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [9 x i8*], [9 x i8*]* %5, i64 0, i64 %197
  store i8* %192, i8** %198, align 8
  br label %199

199:                                              ; preds = %188
  %200 = load i32, i32* %2, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %2, align 4
  br label %184

202:                                              ; preds = %184
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %6, align 4
  %205 = sub nsw i32 %203, %204
  %206 = add nsw i32 %205, 8
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %215, %202
  %208 = load i32, i32* %2, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp sge i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = load i32, i32* %2, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [9 x i8*], [9 x i8*]* %5, i64 0, i64 %213
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %214, align 8
  br label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %2, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %2, align 4
  br label %207

218:                                              ; preds = %207
  br label %219

219:                                              ; preds = %218, %150
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %258, %219
  %221 = load i32, i32* %2, align 4
  %222 = icmp slt i32 %221, 8
  br i1 %222, label %223, label %261

223:                                              ; preds = %220
  store i32 -1, i32* %9, align 4
  %224 = load i32, i32* %2, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [9 x i8*], [9 x i8*]* %5, i64 0, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %229
  %231 = call i32 @sscanf(i8* %227, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %230, i32* %9)
  %232 = icmp slt i32 %231, 1
  br i1 %232, label %256, label %233

233:                                              ; preds = %223
  %234 = load i32, i32* %2, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp sge i32 %237, 65536
  br i1 %238, label %256, label %239

239:                                              ; preds = %233
  %240 = load i32, i32* %2, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %256, label %245

245:                                              ; preds = %239
  %246 = load i32, i32* %2, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [9 x i8*], [9 x i8*]* %5, i64 0, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %245, %239, %233, %223
  store i32 0, i32* %1, align 4
  br label %310

257:                                              ; preds = %245
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %2, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %2, align 4
  br label %220

261:                                              ; preds = %220
  %262 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %263 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %264 = load i32, i32* %263, align 16
  %265 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %264, i32 %266)
  %268 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %269 = call i32 @md5_last_bits(i8* %268)
  store i32 %269, i32* %11, align 4
  %270 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %271 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %272, i32 %274)
  %276 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %277 = call i32 @md5_last_bits(i8* %276)
  store i32 %277, i32* %12, align 4
  %278 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %279 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  %280 = load i32, i32* %279, align 16
  %281 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  %284 = load i32, i32* %283, align 8
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  %286 = load i32, i32* %285, align 4
  %287 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %278, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %280, i32 %282, i32 %284, i32 %286)
  %288 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %289 = call i32 @md5_last_bits(i8* %288)
  store i32 %289, i32* %13, align 4
  %290 = load i32, i32* %11, align 4
  %291 = ashr i32 %290, 4
  %292 = and i32 %291, 31
  %293 = or i32 %292, 224
  store i32 %293, i32* %14, align 4
  %294 = load i32, i32* %11, align 4
  %295 = and i32 %294, 15
  %296 = shl i32 %295, 4
  %297 = load i32, i32* %12, align 4
  %298 = ashr i32 %297, 8
  %299 = or i32 %296, %298
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* %12, align 4
  %301 = and i32 %300, 255
  store i32 %301, i32* %16, align 4
  %302 = load i32, i32* %13, align 4
  %303 = and i32 %302, 255
  store i32 %303, i32* %17, align 4
  %304 = load i8*, i8** @ip_buff, align 8
  %305 = load i32, i32* %14, align 4
  %306 = load i32, i32* %15, align 4
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* %17, align 4
  %309 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %304, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %305, i32 %306, i32 %307, i32 %308)
  store i32 1, i32* %1, align 4
  br label %310

310:                                              ; preds = %261, %256, %180, %170, %149
  %311 = load i32, i32* %1, align 4
  ret i32 %311
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @md5_last_bits(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
