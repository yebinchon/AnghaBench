; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_mtd.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_mtd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ARGS = common dso_local global i32 0, align 4
@buflen = common dso_local global i64 0, align 8
@quiet = common dso_local global i64 0, align 8
@no_erase = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"frnqe:d:s:j:p:o:c:l:\00", align 1
@optarg = common dso_local global i8* null, align 8
@jffs2file = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@jffs2_skip_bytes = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"-s: illegal numeric string\0A\00", align 1
@jffs2dir = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"-p: illegal numeric string\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"-l: illegal numeric string\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"-o: illegal numeric string\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"-c: illegal numeric string\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"unlock\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"erase\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"resetbc\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"fixtrx\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"fixseama\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"fixwrg\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"fixwrgg\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@imagefile = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"Couldn't open image file: %s!\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Can't open device for writing!\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Image check failed.\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"jffs2write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @MAX_ARGS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 -1, i32* %20, align 4
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* null, i8** %25, align 16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* @buflen, align 8
  store i64 0, i64* @quiet, align 8
  store i32 0, i32* @no_erase, align 4
  br label %26

26:                                               ; preds = %126, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %127

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %124 [
    i32 102, label %33
    i32 114, label %34
    i32 110, label %35
    i32 106, label %36
    i32 115, label %38
    i32 113, label %48
    i32 101, label %51
    i32 100, label %77
    i32 112, label %79
    i32 108, label %90
    i32 111, label %101
    i32 99, label %112
    i32 63, label %123
  ]

33:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %126

34:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %126

35:                                               ; preds = %31
  store i32 1, i32* @no_erase, align 4
  br label %126

36:                                               ; preds = %31
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** @jffs2file, align 8
  br label %126

38:                                               ; preds = %31
  store i32 0, i32* @errno, align 4
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i8* @strtoul(i8* %39, i32 0, i32 0)
  store i8* %40, i8** @jffs2_skip_bytes, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %43, %38
  br label %126

48:                                               ; preds = %31
  %49 = load i64, i64* @quiet, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* @quiet, align 8
  br label %126

51:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %24, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @MAX_ARGS, align 4
  %62 = icmp slt i32 %60, %61
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi i1 [ false, %52 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %52

68:                                               ; preds = %63
  %69 = load i8*, i8** @optarg, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8*, i8** %24, i64 %72
  store i8* %69, i8** %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %24, i64 %75
  store i8* null, i8** %76, align 8
  br label %126

77:                                               ; preds = %31
  %78 = load i8*, i8** @optarg, align 8
  store i8* %78, i8** @jffs2dir, align 8
  br label %126

79:                                               ; preds = %31
  store i32 0, i32* @errno, align 4
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i8* @strtoul(i8* %80, i32 0, i32 0)
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %18, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %85, %79
  br label %126

90:                                               ; preds = %31
  store i32 0, i32* @errno, align 4
  %91 = load i8*, i8** @optarg, align 8
  %92 = call i8* @strtoul(i8* %91, i32 0, i32 0)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* %19, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %96, %90
  br label %126

101:                                              ; preds = %31
  store i32 0, i32* @errno, align 4
  %102 = load i8*, i8** @optarg, align 8
  %103 = call i8* @strtoul(i8* %102, i32 0, i32 0)
  %104 = ptrtoint i8* %103 to i64
  store i64 %104, i64* %16, align 8
  %105 = load i32, i32* @errno, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 (...) @usage()
  br label %111

111:                                              ; preds = %107, %101
  br label %126

112:                                              ; preds = %31
  store i32 0, i32* @errno, align 4
  %113 = load i8*, i8** @optarg, align 8
  %114 = call i8* @strtoul(i8* %113, i32 0, i32 0)
  %115 = ptrtoint i8* %114 to i64
  store i64 %115, i64* %17, align 8
  %116 = load i32, i32* @errno, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %121 = call i32 (...) @usage()
  br label %122

122:                                              ; preds = %118, %112
  br label %126

123:                                              ; preds = %31
  br label %124

124:                                              ; preds = %31, %123
  %125 = call i32 (...) @usage()
  br label %126

126:                                              ; preds = %124, %122, %111, %100, %89, %77, %68, %48, %47, %36, %35, %34, %33
  br label %26

127:                                              ; preds = %26
  %128 = load i64, i64* @optind, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %4, align 4
  %133 = load i64, i64* @optind, align 8
  %134 = load i8**, i8*** %5, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 %133
  store i8** %135, i8*** %5, align 8
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 %136, 2
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = call i32 (...) @usage()
  br label %140

140:                                              ; preds = %138, %127
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load i32, i32* %4, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  store i32 2, i32* %20, align 4
  %150 = load i8**, i8*** %5, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 1
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %14, align 8
  br label %357

153:                                              ; preds = %146, %140
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @strcmp(i8* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load i32, i32* %4, align 4
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  store i32 0, i32* %20, align 4
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 1
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %14, align 8
  br label %356

166:                                              ; preds = %159, %153
  %167 = load i8**, i8*** %5, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @strcmp(i8* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load i32, i32* %4, align 4
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  br i1 true, label %176, label %180

176:                                              ; preds = %175
  store i32 10, i32* %20, align 4
  %177 = load i8**, i8*** %5, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 1
  %179 = load i8*, i8** %178, align 8
  store i8* %179, i8** %14, align 8
  br label %355

180:                                              ; preds = %175, %172, %166
  %181 = load i8**, i8*** %5, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load i32, i32* %4, align 4
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  br i1 true, label %190, label %194

190:                                              ; preds = %189
  store i32 4, i32* %20, align 4
  %191 = load i8**, i8*** %5, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 1
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %14, align 8
  br label %354

194:                                              ; preds = %189, %186, %180
  %195 = load i8**, i8*** %5, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strcmp(i8* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %194
  %201 = load i32, i32* %4, align 4
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  br i1 true, label %204, label %208

204:                                              ; preds = %203
  store i32 5, i32* %20, align 4
  %205 = load i8**, i8*** %5, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 1
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %14, align 8
  br label %353

208:                                              ; preds = %203, %200, %194
  %209 = load i8**, i8*** %5, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @strcmp(i8* %211, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load i32, i32* %4, align 4
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  br i1 true, label %218, label %222

218:                                              ; preds = %217
  store i32 6, i32* %20, align 4
  %219 = load i8**, i8*** %5, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 1
  %221 = load i8*, i8** %220, align 8
  store i8* %221, i8** %14, align 8
  br label %352

222:                                              ; preds = %217, %214, %208
  %223 = load i8**, i8*** %5, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i64 @strcmp(i8* %225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %222
  %229 = load i32, i32* %4, align 4
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  br i1 true, label %232, label %236

232:                                              ; preds = %231
  store i32 7, i32* %20, align 4
  %233 = load i8**, i8*** %5, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 1
  %235 = load i8*, i8** %234, align 8
  store i8* %235, i8** %14, align 8
  br label %351

236:                                              ; preds = %231, %228, %222
  %237 = load i8**, i8*** %5, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i64 @strcmp(i8* %239, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %236
  %243 = load i32, i32* %4, align 4
  %244 = icmp eq i32 %243, 3
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  store i32 8, i32* %20, align 4
  %246 = load i8**, i8*** %5, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 1
  %248 = load i8*, i8** %247, align 8
  store i8* %248, i8** @imagefile, align 8
  %249 = load i8**, i8*** %5, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 2
  %251 = load i8*, i8** %250, align 8
  store i8* %251, i8** %14, align 8
  br label %350

252:                                              ; preds = %242, %236
  %253 = load i8**, i8*** %5, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @strcmp(i8* %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %252
  %259 = load i32, i32* %4, align 4
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  store i32 9, i32* %20, align 4
  %262 = load i8**, i8*** %5, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 1
  %264 = load i8*, i8** %263, align 8
  store i8* %264, i8** %14, align 8
  br label %349

265:                                              ; preds = %258, %252
  %266 = load i8**, i8*** %5, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 0
  %268 = load i8*, i8** %267, align 8
  %269 = call i64 @strcmp(i8* %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %321

271:                                              ; preds = %265
  %272 = load i32, i32* %4, align 4
  %273 = icmp eq i32 %272, 3
  br i1 %273, label %274, label %321

274:                                              ; preds = %271
  store i32 1, i32* %20, align 4
  %275 = load i8**, i8*** %5, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 2
  %277 = load i8*, i8** %276, align 8
  store i8* %277, i8** %14, align 8
  %278 = load i8**, i8*** %5, align 8
  %279 = getelementptr inbounds i8*, i8** %278, i64 1
  %280 = load i8*, i8** %279, align 8
  %281 = call i64 @strcmp(i8* %280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %274
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** @imagefile, align 8
  store i32 0, i32* %9, align 4
  br label %300

284:                                              ; preds = %274
  %285 = load i8**, i8*** %5, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 1
  %287 = load i8*, i8** %286, align 8
  store i8* %287, i8** @imagefile, align 8
  %288 = load i8**, i8*** %5, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 1
  %290 = load i8*, i8** %289, align 8
  %291 = load i32, i32* @O_RDONLY, align 4
  %292 = call i32 @open(i8* %290, i32 %291)
  store i32 %292, i32* %9, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %284
  %295 = load i32, i32* @stderr, align 4
  %296 = load i8*, i8** @imagefile, align 8
  %297 = call i32 (i32, i8*, ...) @fprintf(i32 %295, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %296)
  %298 = call i32 @exit(i32 1) #4
  unreachable

299:                                              ; preds = %284
  br label %300

300:                                              ; preds = %299, %283
  %301 = load i8*, i8** %14, align 8
  %302 = call i32 @mtd_check(i8* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* @stderr, align 4
  %306 = call i32 (i32, i8*, ...) @fprintf(i32 %305, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %307 = call i32 @exit(i32 1) #4
  unreachable

308:                                              ; preds = %300
  %309 = load i32, i32* %9, align 4
  %310 = load i8*, i8** %14, align 8
  %311 = call i32 @image_check(i32 %309, i8* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %308
  %314 = load i32, i32* %10, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* @stderr, align 4
  %318 = call i32 (i32, i8*, ...) @fprintf(i32 %317, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %319 = call i32 @exit(i32 1) #4
  unreachable

320:                                              ; preds = %313, %308
  br label %348

321:                                              ; preds = %271, %265
  %322 = load i8**, i8*** %5, align 8
  %323 = getelementptr inbounds i8*, i8** %322, i64 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i64 @strcmp(i8* %324, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %345

327:                                              ; preds = %321
  %328 = load i32, i32* %4, align 4
  %329 = icmp eq i32 %328, 3
  br i1 %329, label %330, label %345

330:                                              ; preds = %327
  store i32 3, i32* %20, align 4
  %331 = load i8**, i8*** %5, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i64 2
  %333 = load i8*, i8** %332, align 8
  store i8* %333, i8** %14, align 8
  %334 = load i8**, i8*** %5, align 8
  %335 = getelementptr inbounds i8*, i8** %334, i64 1
  %336 = load i8*, i8** %335, align 8
  store i8* %336, i8** @imagefile, align 8
  %337 = load i8*, i8** %14, align 8
  %338 = call i32 @mtd_check(i8* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %330
  %341 = load i32, i32* @stderr, align 4
  %342 = call i32 (i32, i8*, ...) @fprintf(i32 %341, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %343 = call i32 @exit(i32 1) #4
  unreachable

344:                                              ; preds = %330
  br label %347

345:                                              ; preds = %327, %321
  %346 = call i32 (...) @usage()
  br label %347

347:                                              ; preds = %345, %344
  br label %348

348:                                              ; preds = %347, %320
  br label %349

349:                                              ; preds = %348, %261
  br label %350

350:                                              ; preds = %349, %245
  br label %351

351:                                              ; preds = %350, %232
  br label %352

352:                                              ; preds = %351, %218
  br label %353

353:                                              ; preds = %352, %204
  br label %354

354:                                              ; preds = %353, %190
  br label %355

355:                                              ; preds = %354, %176
  br label %356

356:                                              ; preds = %355, %162
  br label %357

357:                                              ; preds = %356, %149
  %358 = call i32 (...) @sync()
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %359

359:                                              ; preds = %384, %357
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8*, i8** %24, i64 %361
  %363 = load i8*, i8** %362, align 8
  %364 = icmp ne i8* %363, null
  br i1 %364, label %365, label %387

365:                                              ; preds = %359
  %366 = load i32, i32* %7, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8*, i8** %24, i64 %367
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @mtd_unlock(i8* %369)
  %371 = load i32, i32* %7, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8*, i8** %24, i64 %372
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @mtd_erase(i8* %374)
  %376 = load i32, i32* %7, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8*, i8** %24, i64 %377
  %379 = load i8*, i8** %378, align 8
  %380 = load i8*, i8** %14, align 8
  %381 = call i64 @strcmp(i8* %379, i8* %380)
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %365
  store i32 1, i32* %11, align 4
  br label %384

384:                                              ; preds = %383, %365
  %385 = load i32, i32* %7, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %7, align 4
  br label %359

387:                                              ; preds = %359
  %388 = load i32, i32* %20, align 4
  switch i32 %388, label %467 [
    i32 2, label %389
    i32 8, label %396
    i32 9, label %400
    i32 0, label %405
    i32 1, label %414
    i32 3, label %426
    i32 4, label %437
    i32 10, label %444
    i32 5, label %449
    i32 6, label %455
    i32 7, label %461
  ]

389:                                              ; preds = %387
  %390 = load i32, i32* %11, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %389
  %393 = load i8*, i8** %14, align 8
  %394 = call i32 @mtd_unlock(i8* %393)
  br label %395

395:                                              ; preds = %392, %389
  br label %467

396:                                              ; preds = %387
  %397 = load i8*, i8** %14, align 8
  %398 = load i8*, i8** @imagefile, align 8
  %399 = call i32 @mtd_verify(i8* %397, i8* %398)
  br label %467

400:                                              ; preds = %387
  %401 = load i8*, i8** %14, align 8
  %402 = load i64, i64* %16, align 8
  %403 = load i64, i64* %19, align 8
  %404 = call i32 @mtd_dump(i8* %401, i64 %402, i64 %403)
  br label %467

405:                                              ; preds = %387
  %406 = load i32, i32* %11, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %405
  %409 = load i8*, i8** %14, align 8
  %410 = call i32 @mtd_unlock(i8* %409)
  br label %411

411:                                              ; preds = %408, %405
  %412 = load i8*, i8** %14, align 8
  %413 = call i32 @mtd_erase(i8* %412)
  br label %467

414:                                              ; preds = %387
  %415 = load i32, i32* %11, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %414
  %418 = load i8*, i8** %14, align 8
  %419 = call i32 @mtd_unlock(i8* %418)
  br label %420

420:                                              ; preds = %417, %414
  %421 = load i32, i32* %9, align 4
  %422 = load i8*, i8** %14, align 8
  %423 = load i8*, i8** %15, align 8
  %424 = load i64, i64* %18, align 8
  %425 = call i32 @mtd_write(i32 %421, i8* %422, i8* %423, i64 %424)
  br label %467

426:                                              ; preds = %387
  %427 = load i32, i32* %11, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %426
  %430 = load i8*, i8** %14, align 8
  %431 = call i32 @mtd_unlock(i8* %430)
  br label %432

432:                                              ; preds = %429, %426
  %433 = load i8*, i8** %14, align 8
  %434 = load i8*, i8** @imagefile, align 8
  %435 = load i8*, i8** @jffs2dir, align 8
  %436 = call i32 @mtd_write_jffs2(i8* %433, i8* %434, i8* %435)
  br label %467

437:                                              ; preds = %387
  br i1 true, label %438, label %443

438:                                              ; preds = %437
  %439 = load i8*, i8** %14, align 8
  %440 = load i64, i64* %16, align 8
  %441 = load i64, i64* %17, align 8
  %442 = call i32 @mtd_fixtrx(i8* %439, i64 %440, i64 %441)
  br label %443

443:                                              ; preds = %438, %437
  br label %467

444:                                              ; preds = %387
  br i1 true, label %445, label %448

445:                                              ; preds = %444
  %446 = load i8*, i8** %14, align 8
  %447 = call i32 @mtd_resetbc(i8* %446)
  br label %448

448:                                              ; preds = %445, %444
  br label %467

449:                                              ; preds = %387
  br i1 true, label %450, label %454

450:                                              ; preds = %449
  %451 = load i8*, i8** %14, align 8
  %452 = load i64, i64* %17, align 8
  %453 = call i32 @mtd_fixseama(i8* %451, i32 0, i64 %452)
  br label %454

454:                                              ; preds = %450, %449
  br label %467

455:                                              ; preds = %387
  br i1 true, label %456, label %460

456:                                              ; preds = %455
  %457 = load i8*, i8** %14, align 8
  %458 = load i64, i64* %17, align 8
  %459 = call i32 @mtd_fixwrg(i8* %457, i32 0, i64 %458)
  br label %460

460:                                              ; preds = %456, %455
  br label %467

461:                                              ; preds = %387
  br i1 true, label %462, label %466

462:                                              ; preds = %461
  %463 = load i8*, i8** %14, align 8
  %464 = load i64, i64* %17, align 8
  %465 = call i32 @mtd_fixwrgg(i8* %463, i32 0, i64 %464)
  br label %466

466:                                              ; preds = %462, %461
  br label %467

467:                                              ; preds = %387, %466, %460, %454, %448, %443, %432, %420, %411, %400, %396, %395
  %468 = call i32 (...) @sync()
  %469 = load i32, i32* %8, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %467
  %472 = call i32 (...) @do_reboot()
  br label %473

473:                                              ; preds = %471, %467
  store i32 0, i32* %3, align 4
  %474 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %474)
  %475 = load i32, i32* %3, align 4
  ret i32 %475
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @strtoul(i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @mtd_resetbc(i8*) #2

declare dso_local i32 @mtd_fixtrx(i8*, i64, i64) #2

declare dso_local i32 @mtd_fixseama(i8*, i32, i64) #2

declare dso_local i32 @mtd_fixwrg(i8*, i32, i64) #2

declare dso_local i32 @mtd_fixwrgg(i8*, i32, i64) #2

declare dso_local i32 @open(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @mtd_check(i8*) #2

declare dso_local i32 @image_check(i32, i8*) #2

declare dso_local i32 @sync(...) #2

declare dso_local i32 @mtd_unlock(i8*) #2

declare dso_local i32 @mtd_erase(i8*) #2

declare dso_local i32 @mtd_verify(i8*, i8*) #2

declare dso_local i32 @mtd_dump(i8*, i64, i64) #2

declare dso_local i32 @mtd_write(i32, i8*, i8*, i64) #2

declare dso_local i32 @mtd_write_jffs2(i8*, i8*, i8*) #2

declare dso_local i32 @do_reboot(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
