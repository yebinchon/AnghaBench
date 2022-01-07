; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_scan.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.message = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"\08\08\08\08%3.0f%%\00", align 1
@stdout = common dso_local global i32 0, align 4
@HTTP_BOTH = common dso_local global i32 0, align 4
@num_messages = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@messages = common dso_local global %struct.TYPE_4__* null, align 8
@parser = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"\0A\0AParser didn't see %d messages only %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\0A\0AError matching messages[0] in test_scan.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\0A\0AError matching messages[1] in test_scan.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\0A\0AError matching messages[2] in test_scan.\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\08\08\08\08100%\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"i=%d  j=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"buf1 (%u) %s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"buf2 (%u) %s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"buf3 (%u) %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_scan(%struct.message* %0, %struct.message* %1, %struct.message* %2) #0 {
  %4 = alloca %struct.message*, align 8
  %5 = alloca %struct.message*, align 8
  %6 = alloca %struct.message*, align 8
  %7 = alloca [81920 x i8], align 16
  %8 = alloca [81920 x i8], align 16
  %9 = alloca [81920 x i8], align 16
  %10 = alloca [81920 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.message* %0, %struct.message** %4, align 8
  store %struct.message* %1, %struct.message** %5, align 8
  store %struct.message* %2, %struct.message** %6, align 8
  %22 = bitcast [81920 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 81920, i1 false)
  %23 = bitcast [81920 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 81920, i1 false)
  %24 = bitcast [81920 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 81920, i1 false)
  %25 = bitcast [81920 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 81920, i1 false)
  %26 = getelementptr inbounds [81920 x i8], [81920 x i8]* %7, i64 0, i64 0
  %27 = load %struct.message*, %struct.message** %4, align 8
  %28 = getelementptr inbounds %struct.message, %struct.message* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcat(i8* %26, i32 %29)
  %31 = getelementptr inbounds [81920 x i8], [81920 x i8]* %7, i64 0, i64 0
  %32 = load %struct.message*, %struct.message** %5, align 8
  %33 = getelementptr inbounds %struct.message, %struct.message* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcat(i8* %31, i32 %34)
  %36 = getelementptr inbounds [81920 x i8], [81920 x i8]* %7, i64 0, i64 0
  %37 = load %struct.message*, %struct.message** %6, align 8
  %38 = getelementptr inbounds %struct.message, %struct.message* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcat(i8* %36, i32 %39)
  %41 = getelementptr inbounds [81920 x i8], [81920 x i8]* %7, i64 0, i64 0
  %42 = call i32 @strlen(i8* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %43, 1
  %45 = mul nsw i32 2, %44
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %46, 2
  %48 = mul nsw i32 %45, %47
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %50 = load %struct.message*, %struct.message** %4, align 8
  %51 = load %struct.message*, %struct.message** %5, align 8
  %52 = load %struct.message*, %struct.message** %6, align 8
  %53 = call i32 @count_parsed_messages(i32 3, %struct.message* %50, %struct.message* %51, %struct.message* %52)
  store i32 %53, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %54

54:                                               ; preds = %263, %3
  %55 = load i32, i32* %21, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %266

57:                                               ; preds = %54
  store i32 2, i32* %20, align 4
  br label %58

58:                                               ; preds = %259, %57
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %262

62:                                               ; preds = %58
  store i32 1, i32* %19, align 4
  br label %63

63:                                               ; preds = %255, %62
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %258

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = srem i32 %68, 1000
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = sitofp i32 %72 to float
  %74 = fmul float 1.000000e+02, %73
  %75 = load i32, i32* %13, align 4
  %76 = sitofp i32 %75 to float
  %77 = fdiv float %74, %76
  %78 = fptosi float %77 to i32
  %79 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @stdout, align 4
  %81 = call i32 @fflush(i32 %80)
  br label %82

82:                                               ; preds = %71, %67
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %21, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @HTTP_BOTH, align 4
  br label %93

89:                                               ; preds = %82
  %90 = load %struct.message*, %struct.message** %4, align 8
  %91 = getelementptr inbounds %struct.message, %struct.message* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  br label %93

93:                                               ; preds = %89, %87
  %94 = phi i32 [ %88, %87 ], [ %92, %89 ]
  %95 = call i32 @parser_init(i32 %94)
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %15, align 8
  %98 = getelementptr inbounds [81920 x i8], [81920 x i8]* %8, i64 0, i64 0
  %99 = getelementptr inbounds [81920 x i8], [81920 x i8]* %7, i64 0, i64 0
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @strlncpy(i8* %98, i32 81920, i8* %99, i64 %100)
  %102 = load i64, i64* %15, align 8
  %103 = getelementptr inbounds [81920 x i8], [81920 x i8]* %8, i64 0, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %19, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %16, align 8
  %108 = getelementptr inbounds [81920 x i8], [81920 x i8]* %9, i64 0, i64 0
  %109 = getelementptr inbounds [81920 x i8], [81920 x i8]* %7, i64 0, i64 0
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i64, i64* %16, align 8
  %114 = call i32 @strlncpy(i8* %108, i32 81920, i8* %112, i64 %113)
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds [81920 x i8], [81920 x i8]* %9, i64 0, i64 %115
  store i8 0, i8* %116, align 1
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %20, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %17, align 8
  %121 = getelementptr inbounds [81920 x i8], [81920 x i8]* %10, i64 0, i64 0
  %122 = getelementptr inbounds [81920 x i8], [81920 x i8]* %7, i64 0, i64 0
  %123 = load i32, i32* %20, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i64, i64* %17, align 8
  %127 = call i32 @strlncpy(i8* %121, i32 81920, i8* %125, i64 %126)
  %128 = load i64, i64* %17, align 8
  %129 = getelementptr inbounds [81920 x i8], [81920 x i8]* %10, i64 0, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i32, i32* @num_messages, align 4
  %131 = icmp eq i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* @FALSE, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @messages, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  %138 = getelementptr inbounds [81920 x i8], [81920 x i8]* %8, i64 0, i64 0
  %139 = load i64, i64* %15, align 8
  %140 = call i64 @parse(i8* %138, i64 %139)
  store i64 %140, i64* %11, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @messages, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %93
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @parser, i32 0, i32 0), align 8
  %148 = load i64, i64* %11, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = getelementptr inbounds [81920 x i8], [81920 x i8]* %8, i64 0, i64 0
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @print_error(i8* %151, i64 %152)
  br label %268

154:                                              ; preds = %146, %93
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @parser, i32 0, i32 1), align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %208

158:                                              ; preds = %154
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %15, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = getelementptr inbounds [81920 x i8], [81920 x i8]* %8, i64 0, i64 0
  %164 = load i64, i64* %11, align 8
  %165 = call i32 @print_error(i8* %163, i64 %164)
  br label %268

166:                                              ; preds = %158
  %167 = getelementptr inbounds [81920 x i8], [81920 x i8]* %9, i64 0, i64 0
  %168 = load i64, i64* %16, align 8
  %169 = call i64 @parse(i8* %167, i64 %168)
  %170 = load i64, i64* %11, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %11, align 8
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @parser, i32 0, i32 1), align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %208

175:                                              ; preds = %166
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %16, align 8
  %179 = add i64 %177, %178
  %180 = icmp ne i64 %176, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = getelementptr inbounds [81920 x i8], [81920 x i8]* %9, i64 0, i64 0
  %183 = load i64, i64* %11, align 8
  %184 = call i32 @print_error(i8* %182, i64 %183)
  br label %268

185:                                              ; preds = %175
  %186 = getelementptr inbounds [81920 x i8], [81920 x i8]* %10, i64 0, i64 0
  %187 = load i64, i64* %17, align 8
  %188 = call i64 @parse(i8* %186, i64 %187)
  %189 = load i64, i64* %11, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %11, align 8
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @parser, i32 0, i32 1), align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  br label %208

194:                                              ; preds = %185
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* %15, align 8
  %197 = load i64, i64* %16, align 8
  %198 = add i64 %196, %197
  %199 = load i64, i64* %17, align 8
  %200 = add i64 %198, %199
  %201 = icmp ne i64 %195, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %194
  %203 = getelementptr inbounds [81920 x i8], [81920 x i8]* %10, i64 0, i64 0
  %204 = load i64, i64* %11, align 8
  %205 = call i32 @print_error(i8* %203, i64 %204)
  br label %268

206:                                              ; preds = %194
  %207 = call i64 @parse(i8* null, i64 0)
  br label %208

208:                                              ; preds = %206, %193, %174, %157
  %209 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @parser, i32 0, i32 1), align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = getelementptr inbounds [81920 x i8], [81920 x i8]* %7, i64 0, i64 0
  %213 = load i64, i64* %11, align 8
  %214 = load %struct.message*, %struct.message** %4, align 8
  %215 = load %struct.message*, %struct.message** %5, align 8
  %216 = load %struct.message*, %struct.message** %6, align 8
  %217 = call i32 @upgrade_message_fix(i8* %212, i64 %213, i32 3, %struct.message* %214, %struct.message* %215, %struct.message* %216)
  br label %218

218:                                              ; preds = %211, %208
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* @num_messages, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load i32, i32* @stderr, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* @num_messages, align 4
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %224, i32 %225)
  br label %268

227:                                              ; preds = %218
  %228 = load %struct.message*, %struct.message** %4, align 8
  %229 = call i32 @message_eq(i32 0, i32 0, %struct.message* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* @stderr, align 4
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %232, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %268

234:                                              ; preds = %227
  %235 = load i32, i32* %18, align 4
  %236 = icmp sgt i32 %235, 1
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load %struct.message*, %struct.message** %5, align 8
  %239 = call i32 @message_eq(i32 1, i32 0, %struct.message* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* @stderr, align 4
  %243 = call i32 (i32, i8*, ...) @fprintf(i32 %242, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %268

244:                                              ; preds = %237, %234
  %245 = load i32, i32* %18, align 4
  %246 = icmp sgt i32 %245, 2
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = load %struct.message*, %struct.message** %6, align 8
  %249 = call i32 @message_eq(i32 2, i32 0, %struct.message* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* @stderr, align 4
  %253 = call i32 (i32, i8*, ...) @fprintf(i32 %252, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %268

254:                                              ; preds = %247, %244
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %19, align 4
  br label %63

258:                                              ; preds = %63
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %20, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %20, align 4
  br label %58

262:                                              ; preds = %58
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %21, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %21, align 4
  br label %54

266:                                              ; preds = %54
  %267 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  ret void

268:                                              ; preds = %251, %241, %231, %222, %202, %181, %162, %150
  %269 = load i32, i32* @stderr, align 4
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %20, align 4
  %272 = call i32 (i32, i8*, ...) @fprintf(i32 %269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %270, i32 %271)
  %273 = load i32, i32* @stderr, align 4
  %274 = load i64, i64* %15, align 8
  %275 = trunc i64 %274 to i32
  %276 = getelementptr inbounds [81920 x i8], [81920 x i8]* %8, i64 0, i64 0
  %277 = call i32 (i32, i8*, ...) @fprintf(i32 %273, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %275, i8* %276)
  %278 = load i32, i32* @stderr, align 4
  %279 = load i64, i64* %16, align 8
  %280 = trunc i64 %279 to i32
  %281 = getelementptr inbounds [81920 x i8], [81920 x i8]* %9, i64 0, i64 0
  %282 = call i32 (i32, i8*, ...) @fprintf(i32 %278, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %280, i8* %281)
  %283 = load i32, i32* @stderr, align 4
  %284 = load i64, i64* %17, align 8
  %285 = trunc i64 %284 to i32
  %286 = getelementptr inbounds [81920 x i8], [81920 x i8]* %10, i64 0, i64 0
  %287 = call i32 (i32, i8*, ...) @fprintf(i32 %283, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %285, i8* %286)
  %288 = call i32 (...) @abort() #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcat(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @count_parsed_messages(i32, %struct.message*, %struct.message*, %struct.message*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @parser_init(i32) #2

declare dso_local i32 @strlncpy(i8*, i32, i8*, i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @parse(i8*, i64) #2

declare dso_local i32 @print_error(i8*, i64) #2

declare dso_local i32 @upgrade_message_fix(i8*, i64, i32, %struct.message*, %struct.message*, %struct.message*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @message_eq(i32, i32, %struct.message*) #2

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
