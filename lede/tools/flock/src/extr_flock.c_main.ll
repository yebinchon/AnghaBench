; ModuleID = '/home/carl/AnghaBench/lede/tools/flock/src/extr_flock.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/flock/src/extr_flock.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sigaction = type { i32, i32, %struct.TYPE_2__ }

@LOCK_EX = common dso_local global i32 0, align 4
@program = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@optopt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"+sexnouw:hV?\00", align 1
@long_options = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@LOCK_SH = common dso_local global i32 0, align 4
@LOCK_UN = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"flock (%s)\0A\00", align 1
@PACKAGE_STRING = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"--command\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"%s: %s requires exactly one command argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: cannot open lock file %s: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EX_CANTCREAT = common dso_local global i32 0, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"%s: bad number: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s: requires file descriptor, file or directory\0A\00", align 1
@timeout_handler = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@timeout_expired = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%s: %d: %s\0A\00", align 1
@ENOLCK = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"%s: fork failed: %s\0A\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"%s: waitpid failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.itimerval, align 8
  %7 = alloca %struct.itimerval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca [4 x i8*], align 16
  %21 = alloca i8*, align 8
  %22 = alloca %struct.sigaction, align 8
  %23 = alloca %struct.sigaction, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %26 = load i32, i32* @LOCK_EX, align 4
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i8** null, i8*** %19, align 8
  store i8* null, i8** %21, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** @program, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EX_USAGE, align 4
  %34 = call i32 @usage(i32 %33)
  br label %35

35:                                               ; preds = %32, %2
  %36 = bitcast %struct.itimerval* %6 to %struct.sigaction*
  %37 = call i32 @memset(%struct.sigaction* %36, i32 0, i32 24)
  store i64 0, i64* @optopt, align 8
  br label %38

38:                                               ; preds = %80, %35
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* @long_options, align 4
  %42 = call i32 @getopt_long(i32 %39, i8** %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %41, i32* %13)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @EOF, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %38
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %71 [
    i32 115, label %47
    i32 101, label %49
    i32 120, label %49
    i32 117, label %51
    i32 111, label %53
    i32 110, label %54
    i32 119, label %56
    i32 86, label %67
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @LOCK_SH, align 4
  store i32 %48, i32* %9, align 4
  br label %80

49:                                               ; preds = %45, %45
  %50 = load i32, i32* @LOCK_EX, align 4
  store i32 %50, i32* %9, align 4
  br label %80

51:                                               ; preds = %45
  %52 = load i32, i32* @LOCK_UN, align 4
  store i32 %52, i32* %9, align 4
  br label %80

53:                                               ; preds = %45
  store i32 1, i32* %14, align 4
  br label %80

54:                                               ; preds = %45
  %55 = load i32, i32* @LOCK_NB, align 4
  store i32 %55, i32* %10, align 4
  br label %80

56:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  %57 = load i32, i32* @optarg, align 4
  %58 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 2
  %59 = call i8* @strtotimeval(i32 %57, %struct.TYPE_2__* %58)
  store i8* %59, i8** %18, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EX_USAGE, align 4
  %65 = call i32 @usage(i32 %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %80

67:                                               ; preds = %45
  %68 = load i8*, i8** @PACKAGE_STRING, align 8
  %69 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = call i32 @exit(i32 0) #3
  unreachable

71:                                               ; preds = %45
  %72 = load i64, i64* @optopt, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @EX_USAGE, align 4
  br label %77

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = call i32 @usage(i32 %78)
  br label %80

80:                                               ; preds = %77, %66, %54, %53, %51, %49, %47
  br label %38

81:                                               ; preds = %38
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @optind, align 4
  %84 = add nsw i32 %83, 1
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %232

86:                                               ; preds = %81
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* @optind, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* @optind, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %154, label %104

104:                                              ; preds = %95, %86
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @optind, align 4
  %107 = add nsw i32 %106, 3
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load i32, i32* @stderr, align 4
  %111 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i8*, i8** @program, align 8
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* @optind, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %113, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %110, i8* %111, i8* %112, i8* %118)
  %120 = load i32, i32* @EX_USAGE, align 4
  %121 = call i32 @exit(i32 %120) #3
  unreachable

122:                                              ; preds = %104
  %123 = getelementptr inbounds [4 x i8*], [4 x i8*]* %20, i64 0, i64 0
  store i8** %123, i8*** %19, align 8
  %124 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i8**, i8*** %19, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  store i8* %124, i8** %126, align 8
  %127 = load i8**, i8*** %19, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = load i8**, i8*** %19, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %131, %122
  %138 = load i8*, i8** @_PATH_BSHELL, align 8
  %139 = load i8**, i8*** %19, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %137, %131
  %142 = load i8**, i8*** %19, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %143, align 8
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* @optind, align 4
  %146 = add nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load i8**, i8*** %19, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 2
  store i8* %149, i8** %151, align 8
  %152 = load i8**, i8*** %19, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 3
  store i8* null, i8** %153, align 8
  br label %160

154:                                              ; preds = %95
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* @optind, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  store i8** %159, i8*** %19, align 8
  br label %160

160:                                              ; preds = %154, %141
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* @optind, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %21, align 8
  %166 = load i8*, i8** %21, align 8
  %167 = load i32, i32* @O_RDONLY, align 4
  %168 = load i32, i32* @O_NOCTTY, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @O_CREAT, align 4
  %171 = or i32 %169, %170
  %172 = call i32 (i8*, i32, ...) @open(i8* %166, i32 %171, i32 438)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %160
  %176 = load i32, i32* @errno, align 4
  %177 = load i32, i32* @EISDIR, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load i8*, i8** %21, align 8
  %181 = load i32, i32* @O_RDONLY, align 4
  %182 = load i32, i32* @O_NOCTTY, align 4
  %183 = or i32 %181, %182
  %184 = call i32 (i8*, i32, ...) @open(i8* %180, i32 %183)
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %179, %175, %160
  %186 = load i32, i32* %11, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %231

188:                                              ; preds = %185
  %189 = load i32, i32* @errno, align 4
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* @stderr, align 4
  %191 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %192 = load i8*, i8** @program, align 8
  %193 = load i8**, i8*** %5, align 8
  %194 = load i32, i32* @optind, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i8* @strerror(i32 %198)
  %200 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %190, i8* %191, i8* %192, i8* %197, i8* %199)
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %188
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @EMFILE, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @ENFILE, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208, %204, %188
  %213 = load i32, i32* @EX_OSERR, align 4
  br label %228

214:                                              ; preds = %208
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* @EROFS, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* @ENOSPC, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218, %214
  %223 = load i32, i32* @EX_CANTCREAT, align 4
  br label %226

224:                                              ; preds = %218
  %225 = load i32, i32* @EX_NOINPUT, align 4
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i32 [ %223, %222 ], [ %225, %224 ]
  br label %228

228:                                              ; preds = %226, %212
  %229 = phi i32 [ %213, %212 ], [ %227, %226 ]
  %230 = call i32 @exit(i32 %229) #3
  unreachable

231:                                              ; preds = %185
  br label %276

232:                                              ; preds = %81
  %233 = load i32, i32* @optind, align 4
  %234 = load i32, i32* %4, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %268

236:                                              ; preds = %232
  %237 = load i8**, i8*** %5, align 8
  %238 = load i32, i32* @optind, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %237, i64 %239
  %241 = load i8*, i8** %240, align 8
  %242 = call i64 @strtol(i8* %241, i8** %18, i32 10)
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %11, align 4
  %244 = load i8*, i8** %18, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %236
  %249 = load i8**, i8*** %5, align 8
  %250 = load i32, i32* @optind, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %267, label %255

255:                                              ; preds = %248, %236
  %256 = load i32, i32* @stderr, align 4
  %257 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %258 = load i8*, i8** @program, align 8
  %259 = load i8**, i8*** %5, align 8
  %260 = load i32, i32* @optind, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %256, i8* %257, i8* %258, i8* %263)
  %265 = load i32, i32* @EX_USAGE, align 4
  %266 = call i32 @exit(i32 %265) #3
  unreachable

267:                                              ; preds = %248
  br label %275

268:                                              ; preds = %232
  %269 = load i32, i32* @stderr, align 4
  %270 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %271 = load i8*, i8** @program, align 8
  %272 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %269, i8* %270, i8* %271)
  %273 = load i32, i32* @EX_USAGE, align 4
  %274 = call i32 @exit(i32 %273) #3
  unreachable

275:                                              ; preds = %267
  br label %276

276:                                              ; preds = %275, %231
  %277 = load i32, i32* %8, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %304

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  store i32 0, i32* %8, align 4
  %290 = load i32, i32* @LOCK_NB, align 4
  store i32 %290, i32* %10, align 4
  br label %303

291:                                              ; preds = %284, %279
  %292 = call i32 @memset(%struct.sigaction* %22, i32 0, i32 24)
  %293 = load i32, i32* @timeout_handler, align 4
  %294 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %22, i32 0, i32 1
  store i32 %293, i32* %294, align 4
  %295 = load i32, i32* @SA_RESETHAND, align 4
  %296 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %22, i32 0, i32 0
  store i32 %295, i32* %296, align 8
  %297 = load i32, i32* @SIGALRM, align 4
  %298 = call i32 @sigaction(i32 %297, %struct.sigaction* %22, %struct.sigaction* %23)
  %299 = load i32, i32* @ITIMER_REAL, align 4
  %300 = bitcast %struct.itimerval* %6 to %struct.sigaction*
  %301 = bitcast %struct.itimerval* %7 to %struct.sigaction*
  %302 = call i32 @setitimer(i32 %299, %struct.sigaction* %300, %struct.sigaction* %301)
  br label %303

303:                                              ; preds = %291, %289
  br label %304

304:                                              ; preds = %303, %276
  br label %305

305:                                              ; preds = %381, %321, %304
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* %10, align 4
  %309 = or i32 %307, %308
  %310 = call i64 @flock(i32 %306, i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %382

312:                                              ; preds = %305
  %313 = load i32, i32* @errno, align 4
  store i32 %313, i32* %15, align 4
  switch i32 %313, label %349 [
    i32 128, label %314
    i32 129, label %316
    i32 130, label %322
  ]

314:                                              ; preds = %312
  %315 = call i32 @exit(i32 1) #3
  unreachable

316:                                              ; preds = %312
  %317 = load i32, i32* @timeout_expired, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = call i32 @exit(i32 1) #3
  unreachable

321:                                              ; preds = %316
  br label %305

322:                                              ; preds = %312
  %323 = load i32, i32* %17, align 4
  %324 = load i32, i32* @O_RDWR, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %348, label %327

327:                                              ; preds = %322
  %328 = load i32, i32* %9, align 4
  %329 = load i32, i32* @LOCK_SH, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %348

331:                                              ; preds = %327
  %332 = load i8*, i8** %21, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %334, label %348

334:                                              ; preds = %331
  %335 = load i8*, i8** %21, align 8
  %336 = load i32, i32* @R_OK, align 4
  %337 = load i32, i32* @W_OK, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @access(i8* %335, i32 %338)
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %334
  %342 = load i32, i32* %11, align 4
  %343 = call i32 @close(i32 %342)
  %344 = load i32, i32* @O_RDWR, align 4
  store i32 %344, i32* %17, align 4
  %345 = load i8*, i8** %21, align 8
  %346 = load i32, i32* %17, align 4
  %347 = call i32 (i8*, i32, ...) @open(i8* %345, i32 %346)
  store i32 %347, i32* %11, align 4
  br label %381

348:                                              ; preds = %334, %331, %327, %322
  br label %349

349:                                              ; preds = %312, %348
  %350 = load i8*, i8** %21, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %359

352:                                              ; preds = %349
  %353 = load i32, i32* @stderr, align 4
  %354 = load i8*, i8** @program, align 8
  %355 = load i8*, i8** %21, align 8
  %356 = load i32, i32* %15, align 4
  %357 = call i8* @strerror(i32 %356)
  %358 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %353, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %354, i8* %355, i8* %357)
  br label %366

359:                                              ; preds = %349
  %360 = load i32, i32* @stderr, align 4
  %361 = load i8*, i8** @program, align 8
  %362 = load i32, i32* %11, align 4
  %363 = load i32, i32* %15, align 4
  %364 = call i8* @strerror(i32 %363)
  %365 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %361, i32 %362, i8* %364)
  br label %366

366:                                              ; preds = %359, %352
  %367 = load i32, i32* %15, align 4
  %368 = load i32, i32* @ENOLCK, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = load i32, i32* %15, align 4
  %372 = load i32, i32* @ENOMEM, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %376

374:                                              ; preds = %370, %366
  %375 = load i32, i32* @EX_OSERR, align 4
  br label %378

376:                                              ; preds = %370
  %377 = load i32, i32* @EX_DATAERR, align 4
  br label %378

378:                                              ; preds = %376, %374
  %379 = phi i32 [ %375, %374 ], [ %377, %376 ]
  %380 = call i32 @exit(i32 %379) #3
  unreachable

381:                                              ; preds = %341
  br label %305

382:                                              ; preds = %305
  %383 = load i32, i32* %8, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %382
  %386 = load i32, i32* @ITIMER_REAL, align 4
  %387 = bitcast %struct.itimerval* %7 to %struct.sigaction*
  %388 = call i32 @setitimer(i32 %386, %struct.sigaction* %387, %struct.sigaction* null)
  %389 = load i32, i32* @SIGALRM, align 4
  %390 = call i32 @sigaction(i32 %389, %struct.sigaction* %23, %struct.sigaction* null)
  br label %391

391:                                              ; preds = %385, %382
  store i32 0, i32* %16, align 4
  %392 = load i8**, i8*** %19, align 8
  %393 = icmp ne i8** %392, null
  br i1 %393, label %394, label %493

394:                                              ; preds = %391
  %395 = load i32, i32* @SIGCHLD, align 4
  %396 = load i32, i32* @SIG_DFL, align 4
  %397 = call i32 @signal(i32 %395, i32 %396)
  %398 = call i64 (...) @fork()
  store i64 %398, i64* %25, align 8
  %399 = load i64, i64* %25, align 8
  %400 = icmp slt i64 %399, 0
  br i1 %400, label %401, label %411

401:                                              ; preds = %394
  %402 = load i32, i32* @errno, align 4
  store i32 %402, i32* %15, align 4
  %403 = load i32, i32* @stderr, align 4
  %404 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %405 = load i8*, i8** @program, align 8
  %406 = load i32, i32* %15, align 4
  %407 = call i8* @strerror(i32 %406)
  %408 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %403, i8* %404, i8* %405, i8* %407)
  %409 = load i32, i32* @EX_OSERR, align 4
  %410 = call i32 @exit(i32 %409) #3
  unreachable

411:                                              ; preds = %394
  %412 = load i64, i64* %25, align 8
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %445

414:                                              ; preds = %411
  %415 = load i32, i32* %14, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %414
  %418 = load i32, i32* %11, align 4
  %419 = call i32 @close(i32 %418)
  br label %420

420:                                              ; preds = %417, %414
  %421 = load i32, i32* @errno, align 4
  store i32 %421, i32* %15, align 4
  %422 = load i8**, i8*** %19, align 8
  %423 = getelementptr inbounds i8*, i8** %422, i64 0
  %424 = load i8*, i8** %423, align 8
  %425 = load i8**, i8*** %19, align 8
  %426 = call i32 @execvp(i8* %424, i8** %425)
  %427 = load i32, i32* @stderr, align 4
  %428 = load i8*, i8** @program, align 8
  %429 = load i8**, i8*** %19, align 8
  %430 = getelementptr inbounds i8*, i8** %429, i64 0
  %431 = load i8*, i8** %430, align 8
  %432 = load i32, i32* %15, align 4
  %433 = call i8* @strerror(i32 %432)
  %434 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %427, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %428, i8* %431, i8* %433)
  %435 = load i32, i32* %15, align 4
  %436 = load i32, i32* @ENOMEM, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %440

438:                                              ; preds = %420
  %439 = load i32, i32* @EX_OSERR, align 4
  br label %442

440:                                              ; preds = %420
  %441 = load i32, i32* @EX_UNAVAILABLE, align 4
  br label %442

442:                                              ; preds = %440, %438
  %443 = phi i32 [ %439, %438 ], [ %441, %440 ]
  %444 = call i32 @_exit(i32 %443) #3
  unreachable

445:                                              ; preds = %411
  br label %446

446:                                              ; preds = %456, %445
  %447 = load i64, i64* %25, align 8
  %448 = call i64 @waitpid(i64 %447, i32* %16, i32 0)
  store i64 %448, i64* %24, align 8
  %449 = load i64, i64* %24, align 8
  %450 = icmp eq i64 %449, -1
  br i1 %450, label %451, label %455

451:                                              ; preds = %446
  %452 = load i32, i32* @errno, align 4
  %453 = icmp ne i32 %452, 129
  br i1 %453, label %454, label %455

454:                                              ; preds = %451
  br label %460

455:                                              ; preds = %451, %446
  br label %456

456:                                              ; preds = %455
  %457 = load i64, i64* %24, align 8
  %458 = load i64, i64* %25, align 8
  %459 = icmp ne i64 %457, %458
  br i1 %459, label %446, label %460

460:                                              ; preds = %456, %454
  %461 = load i64, i64* %24, align 8
  %462 = icmp eq i64 %461, -1
  br i1 %462, label %463, label %471

463:                                              ; preds = %460
  %464 = load i32, i32* @errno, align 4
  store i32 %464, i32* %15, align 4
  %465 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %465, i32* %16, align 4
  %466 = load i32, i32* @stderr, align 4
  %467 = load i8*, i8** @program, align 8
  %468 = load i32, i32* %15, align 4
  %469 = call i8* @strerror(i32 %468)
  %470 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %466, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %467, i8* %469)
  br label %490

471:                                              ; preds = %460
  %472 = load i32, i32* %16, align 4
  %473 = call i64 @WIFEXITED(i32 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %471
  %476 = load i32, i32* %16, align 4
  %477 = call i32 @WEXITSTATUS(i32 %476)
  store i32 %477, i32* %16, align 4
  br label %489

478:                                              ; preds = %471
  %479 = load i32, i32* %16, align 4
  %480 = call i64 @WIFSIGNALED(i32 %479)
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %486

482:                                              ; preds = %478
  %483 = load i32, i32* %16, align 4
  %484 = call i32 @WTERMSIG(i32 %483)
  %485 = add nsw i32 %484, 128
  store i32 %485, i32* %16, align 4
  br label %488

486:                                              ; preds = %478
  %487 = load i32, i32* @EX_OSERR, align 4
  store i32 %487, i32* %16, align 4
  br label %488

488:                                              ; preds = %486, %482
  br label %489

489:                                              ; preds = %488, %475
  br label %490

490:                                              ; preds = %489, %463
  br label %491

491:                                              ; preds = %490
  br label %492

492:                                              ; preds = %491
  br label %493

493:                                              ; preds = %492, %391
  %494 = load i32, i32* %16, align 4
  ret i32 %494
}

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i8* @strtotimeval(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @setitimer(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i64 @flock(i32, i32) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @execvp(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
