; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_main.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__* }

@progname = common dso_local global i8* null, align 8
@ac = common dso_local global i32 0, align 4
@av = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@interrupt = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@tempdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-D__LCC__\00", align 1
@plist = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"LCCDIR\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"-lccdir=%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@suffixes = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"-o would overwrite %s\00", align 1
@outfile = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"unrecognized option `%s'\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"-target\00", align 1
@cflag = common dso_local global i64 0, align 8
@Sflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"%s: -o %s ignored\0A\00", align 1
@include = common dso_local global i8** null, align 8
@ilist = common dso_local global %struct.TYPE_3__* null, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"can't find `%s'\00", align 1
@errcnt = common dso_local global i64 0, align 8
@Eflag = common dso_local global i32 0, align 4
@llist = common dso_local global i64* null, align 8
@ld = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@rmlist = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  %14 = load i8*, i8** @progname, align 8
  %15 = call i32 @UpdatePaths(i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 50
  store i32 %17, i32* @ac, align 4
  %18 = load i32, i32* @ac, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @alloc(i32 %21)
  store i32 %22, i32* @av, align 4
  %23 = load i32, i32* @SIGINT, align 4
  %24 = load i64, i64* @SIG_IGN, align 8
  %25 = call i64 @signal(i32 %23, i64 %24)
  %26 = load i64, i64* @SIG_IGN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @SIGINT, align 4
  %30 = load i64, i64* @interrupt, align 8
  %31 = call i64 @signal(i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i32, i32* @SIGTERM, align 4
  %34 = load i64, i64* @SIG_IGN, align 8
  %35 = call i64 @signal(i32 %33, i64 %34)
  %36 = load i64, i64* @SIG_IGN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @SIGTERM, align 4
  %40 = load i64, i64* @interrupt, align 8
  %41 = call i64 @signal(i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %38, %32
  %43 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** @tempdir, align 8
  br label %59

47:                                               ; preds = %42
  %48 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** @tempdir, align 8
  br label %58

52:                                               ; preds = %47
  %53 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %56, i8** @tempdir, align 8
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i8*, i8** @tempdir, align 8
  %61 = call i32 @assert(i8* %60)
  %62 = load i8*, i8** @tempdir, align 8
  %63 = call i32 @strlen(i8* %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %93, %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i8*, i8** @tempdir, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 47
  br i1 %75, label %85, label %76

76:                                               ; preds = %67, %64
  %77 = load i8*, i8** @tempdir, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 92
  br label %85

85:                                               ; preds = %76, %67
  %86 = phi i1 [ true, %67 ], [ %84, %76 ]
  br i1 %86, label %87, label %96

87:                                               ; preds = %85
  %88 = load i8*, i8** @tempdir, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %6, align 4
  br label %64

96:                                               ; preds = %85
  %97 = load i32, i32* %4, align 4
  %98 = icmp sle i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = call i32 (...) @help()
  %101 = call i32 @exit(i32 0) #3
  unreachable

102:                                              ; preds = %96
  %103 = call i64 @append(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 0)
  store i64 %103, i64* @plist, align 8
  %104 = call i32 (...) @initinputs()
  %105 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %109 = call i32 @stringf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  %110 = call i32 @option(i32 %109)
  br label %111

111:                                              ; preds = %107, %102
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %112

112:                                              ; preds = %252, %111
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %255

116:                                              ; preds = %112
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %161

124:                                              ; preds = %116
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %124
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i32*, i32** @suffixes, align 8
  %136 = call i64 @suffix(i8* %134, i32* %135, i32 2)
  %137 = icmp sge i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %143)
  %145 = call i32 @exit(i32 8) #3
  unreachable

146:                                              ; preds = %129
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** @outfile, align 8
  br label %252

152:                                              ; preds = %124
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %153, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %158)
  %160 = call i32 @exit(i32 8) #3
  unreachable

161:                                              ; preds = %116
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %191

169:                                              ; preds = %161
  %170 = load i8**, i8*** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %170, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %190

177:                                              ; preds = %169
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %178, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 45
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %187, %177, %169
  br label %252

191:                                              ; preds = %161
  %192 = load i8**, i8*** %5, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 45
  br i1 %199, label %200, label %217

200:                                              ; preds = %191
  %201 = load i8**, i8*** %5, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 108
  br i1 %209, label %210, label %217

210:                                              ; preds = %200
  %211 = load i8**, i8*** %5, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @opt(i8* %215)
  br label %252

217:                                              ; preds = %200, %191
  %218 = load i8**, i8*** %5, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 45
  br i1 %225, label %226, label %238

226:                                              ; preds = %217
  %227 = load i8**, i8*** %5, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = load i32*, i32** @suffixes, align 8
  %233 = call i64 @suffix(i8* %231, i32* %232, i32 3)
  %234 = icmp sge i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %226
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %235, %226, %217
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240
  %242 = load i8**, i8*** %5, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  %246 = load i8*, i8** %245, align 8
  %247 = load i8**, i8*** %5, align 8
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i8*, i8** %247, i64 %250
  store i8* %246, i8** %251, align 8
  br label %252

252:                                              ; preds = %241, %210, %190, %146
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %6, align 4
  br label %112

255:                                              ; preds = %112
  %256 = load i64, i64* @cflag, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %255
  %259 = load i64, i64* @Sflag, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %258, %255
  %262 = load i8*, i8** @outfile, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %272

264:                                              ; preds = %261
  %265 = load i32, i32* %8, align 4
  %266 = icmp ne i32 %265, 1
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = load i32, i32* @stderr, align 4
  %269 = load i8*, i8** @progname, align 8
  %270 = load i8*, i8** @outfile, align 8
  %271 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %268, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %269, i8* %270)
  store i8* null, i8** @outfile, align 8
  br label %272

272:                                              ; preds = %267, %264, %261, %258
  %273 = load i8**, i8*** %5, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  store i8* null, i8** %276, align 8
  store i32 0, i32* %6, align 4
  br label %277

277:                                              ; preds = %292, %272
  %278 = load i8**, i8*** @include, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8*, i8** %278, i64 %280
  %282 = load i8*, i8** %281, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %295

284:                                              ; preds = %277
  %285 = load i8**, i8*** @include, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %285, i64 %287
  %289 = load i8*, i8** %288, align 8
  %290 = load i64, i64* @plist, align 8
  %291 = call i64 @append(i8* %289, i64 %290)
  store i64 %291, i64* @plist, align 8
  br label %292

292:                                              ; preds = %284
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %6, align 4
  br label %277

295:                                              ; preds = %277
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ilist, align 8
  %297 = icmp ne %struct.TYPE_3__* %296, null
  br i1 %297, label %298, label %314

298:                                              ; preds = %295
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ilist, align 8
  store %struct.TYPE_3__* %299, %struct.TYPE_3__** %9, align 8
  br label %300

300:                                              ; preds = %309, %298
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %302, align 8
  store %struct.TYPE_3__* %303, %struct.TYPE_3__** %9, align 8
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load i64, i64* @plist, align 8
  %308 = call i64 @append(i8* %306, i64 %307)
  store i64 %308, i64* @plist, align 8
  br label %309

309:                                              ; preds = %300
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ilist, align 8
  %312 = icmp ne %struct.TYPE_3__* %310, %311
  br i1 %312, label %300, label %313

313:                                              ; preds = %309
  br label %314

314:                                              ; preds = %313, %295
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @ilist, align 8
  store i32 1, i32* %6, align 4
  br label %315

315:                                              ; preds = %380, %314
  %316 = load i8**, i8*** %5, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8*, i8** %316, i64 %318
  %320 = load i8*, i8** %319, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %383

322:                                              ; preds = %315
  %323 = load i8**, i8*** %5, align 8
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8*, i8** %323, i64 %325
  %327 = load i8*, i8** %326, align 8
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp eq i32 %329, 45
  br i1 %330, label %331, label %338

331:                                              ; preds = %322
  %332 = load i8**, i8*** %5, align 8
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8*, i8** %332, i64 %334
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @opt(i8* %336)
  br label %379

338:                                              ; preds = %322
  %339 = load i8**, i8*** %5, align 8
  %340 = load i32, i32* %6, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  %343 = load i8*, i8** %342, align 8
  %344 = call i8* @exists(i8* %343)
  store i8* %344, i8** %10, align 8
  %345 = load i8*, i8** %10, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %371

347:                                              ; preds = %338
  %348 = load i8*, i8** %10, align 8
  %349 = load i8**, i8*** %5, align 8
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8*, i8** %349, i64 %351
  %353 = load i8*, i8** %352, align 8
  %354 = call i64 @strcmp(i8* %348, i8* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %364, label %356

356:                                              ; preds = %347
  %357 = load i32, i32* %8, align 4
  %358 = icmp sgt i32 %357, 1
  br i1 %358, label %359, label %368

359:                                              ; preds = %356
  %360 = load i8*, i8** %10, align 8
  %361 = load i32*, i32** @suffixes, align 8
  %362 = call i64 @suffix(i8* %360, i32* %361, i32 3)
  %363 = icmp sge i64 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %359, %347
  %365 = load i32, i32* @stderr, align 4
  %366 = load i8*, i8** %10, align 8
  %367 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %365, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %366)
  br label %368

368:                                              ; preds = %364, %359, %356
  %369 = load i8*, i8** %10, align 8
  %370 = call i32 @filename(i8* %369, i32 0)
  br label %378

371:                                              ; preds = %338
  %372 = load i8**, i8*** %5, align 8
  %373 = load i32, i32* %6, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %372, i64 %374
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %376)
  br label %378

378:                                              ; preds = %371, %368
  br label %379

379:                                              ; preds = %378, %331
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %6, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %6, align 4
  br label %315

383:                                              ; preds = %315
  %384 = load i64, i64* @errcnt, align 8
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %386, label %429

386:                                              ; preds = %383
  %387 = load i32, i32* @Eflag, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %429, label %389

389:                                              ; preds = %386
  %390 = load i64, i64* @Sflag, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %429, label %392

392:                                              ; preds = %389
  %393 = load i64, i64* @cflag, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %429, label %395

395:                                              ; preds = %392
  %396 = load i64*, i64** @llist, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 1
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %429

400:                                              ; preds = %395
  %401 = load i32, i32* @ld, align 4
  %402 = load i64*, i64** @llist, align 8
  %403 = getelementptr inbounds i64, i64* %402, i64 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64*, i64** @llist, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 1
  %407 = load i64, i64* %406, align 8
  %408 = load i8*, i8** @outfile, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %412

410:                                              ; preds = %400
  %411 = load i8*, i8** @outfile, align 8
  br label %418

412:                                              ; preds = %400
  %413 = load i32*, i32** @suffixes, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 4
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @first(i32 %415)
  %417 = call i8* @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 %416)
  br label %418

418:                                              ; preds = %412, %410
  %419 = phi i8* [ %411, %410 ], [ %417, %412 ]
  %420 = call i64 @append(i8* %419, i64 0)
  %421 = call i32 @compose(i32 %401, i64 %404, i64 %407, i64 %420)
  %422 = load i32, i32* @av, align 4
  %423 = call i64 @callsys(i32 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %418
  %426 = load i64, i64* @errcnt, align 8
  %427 = add nsw i64 %426, 1
  store i64 %427, i64* @errcnt, align 8
  br label %428

428:                                              ; preds = %425, %418
  br label %429

429:                                              ; preds = %428, %395, %392, %389, %386, %383
  %430 = load i32, i32* @rmlist, align 4
  %431 = call i32 @rm(i32 %430)
  %432 = load i64, i64* @errcnt, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %429
  %435 = load i32, i32* @EXIT_FAILURE, align 4
  br label %438

436:                                              ; preds = %429
  %437 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %438

438:                                              ; preds = %436, %434
  %439 = phi i32 [ %435, %434 ], [ %437, %436 ]
  ret i32 %439
}

declare dso_local i32 @UpdatePaths(i8*) #1

declare dso_local i32 @alloc(i32) #1

declare dso_local i64 @signal(i32, i64) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @append(i8*, i64) #1

declare dso_local i32 @initinputs(...) #1

declare dso_local i32 @option(i32) #1

declare dso_local i32 @stringf(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @suffix(i8*, i32*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @opt(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @exists(i8*) #1

declare dso_local i32 @filename(i8*, i32) #1

declare dso_local i32 @compose(i32, i64, i64, i64) #1

declare dso_local i8* @concat(i8*, i32) #1

declare dso_local i32 @first(i32) #1

declare dso_local i64 @callsys(i32) #1

declare dso_local i32 @rm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
