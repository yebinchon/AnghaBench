; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_start_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32* }
%struct.child_process = type { i8**, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i8** }
%struct.child_err = type { i32 }
%struct.atfork_state = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"standard error\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"cannot create %s pipe for %s: %s\00", align 1
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"cannot run %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"open /dev/null failed\00", align 1
@child_die_fn = common dso_local global i32 0, align 4
@child_error_fn = common dso_local global i32 0, align 4
@child_warn_fn = common dso_local global i32 0, align 4
@child_notifier = common dso_local global i32 0, align 4
@CHILD_ERR_CHDIR = common dso_local global i32 0, align 4
@NSIG = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@CHILD_ERR_SIGPROCMASK = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CHILD_ERR_SILENT = common dso_local global i32 0, align 4
@CHILD_ERR_ENOENT = common dso_local global i32 0, align 4
@CHILD_ERR_ERRNO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"cannot fork() for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_command(%struct.child_process* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.child_process*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca %struct.argv_array, align 8
  %16 = alloca %struct.child_err, align 4
  %17 = alloca %struct.atfork_state, align 4
  %18 = alloca i32, align 4
  store %struct.child_process* %0, %struct.child_process** %3, align 8
  %19 = load %struct.child_process*, %struct.child_process** %3, align 8
  %20 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.child_process*, %struct.child_process** %3, align 8
  %25 = getelementptr inbounds %struct.child_process, %struct.child_process* %24, i32 0, i32 16
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load %struct.child_process*, %struct.child_process** %3, align 8
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %28, i32 0, i32 0
  store i8** %27, i8*** %29, align 8
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.child_process*, %struct.child_process** %3, align 8
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.child_process*, %struct.child_process** %3, align 8
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %36, i32 0, i32 15
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.child_process*, %struct.child_process** %3, align 8
  %41 = getelementptr inbounds %struct.child_process, %struct.child_process* %40, i32 0, i32 8
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.child_process*, %struct.child_process** %3, align 8
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %43, i32 0, i32 14
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.child_process*, %struct.child_process** %3, align 8
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 0
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %59 = call i64 @pipe(i32* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* @errno, align 4
  store i32 %62, i32* %10, align 4
  %63 = load %struct.child_process*, %struct.child_process** %3, align 8
  %64 = getelementptr inbounds %struct.child_process, %struct.child_process* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.child_process*, %struct.child_process** %3, align 8
  %69 = getelementptr inbounds %struct.child_process, %struct.child_process* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @close(i32 %70)
  br label %72

72:                                               ; preds = %67, %61
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %181

73:                                               ; preds = %57
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.child_process*, %struct.child_process** %3, align 8
  %77 = getelementptr inbounds %struct.child_process, %struct.child_process* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %52
  %79 = load %struct.child_process*, %struct.child_process** %3, align 8
  %80 = getelementptr inbounds %struct.child_process, %struct.child_process* %79, i32 0, i32 12
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load %struct.child_process*, %struct.child_process** %3, align 8
  %85 = getelementptr inbounds %struct.child_process, %struct.child_process* %84, i32 0, i32 11
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.child_process*, %struct.child_process** %3, align 8
  %90 = getelementptr inbounds %struct.child_process, %struct.child_process* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 0
  br label %93

93:                                               ; preds = %88, %83, %78
  %94 = phi i1 [ false, %83 ], [ false, %78 ], [ %92, %88 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %93
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %100 = call i64 @pipe(i32* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load i32, i32* @errno, align 4
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %108 = call i32 @close_pair(i32* %107)
  br label %120

109:                                              ; preds = %102
  %110 = load %struct.child_process*, %struct.child_process** %3, align 8
  %111 = getelementptr inbounds %struct.child_process, %struct.child_process* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.child_process*, %struct.child_process** %3, align 8
  %116 = getelementptr inbounds %struct.child_process, %struct.child_process* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @close(i32 %117)
  br label %119

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %106
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %181

121:                                              ; preds = %98
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.child_process*, %struct.child_process** %3, align 8
  %125 = getelementptr inbounds %struct.child_process, %struct.child_process* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %93
  %127 = load %struct.child_process*, %struct.child_process** %3, align 8
  %128 = getelementptr inbounds %struct.child_process, %struct.child_process* %127, i32 0, i32 13
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.child_process*, %struct.child_process** %3, align 8
  %133 = getelementptr inbounds %struct.child_process, %struct.child_process* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %134, 0
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ false, %126 ], [ %135, %131 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %199

141:                                              ; preds = %136
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %143 = call i64 @pipe(i32* %142)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %194

145:                                              ; preds = %141
  %146 = load i32, i32* @errno, align 4
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %151 = call i32 @close_pair(i32* %150)
  br label %163

152:                                              ; preds = %145
  %153 = load %struct.child_process*, %struct.child_process** %3, align 8
  %154 = getelementptr inbounds %struct.child_process, %struct.child_process* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.child_process*, %struct.child_process** %3, align 8
  %159 = getelementptr inbounds %struct.child_process, %struct.child_process* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @close(i32 %160)
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %149
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %168 = call i32 @close_pair(i32* %167)
  br label %180

169:                                              ; preds = %163
  %170 = load %struct.child_process*, %struct.child_process** %3, align 8
  %171 = getelementptr inbounds %struct.child_process, %struct.child_process* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.child_process*, %struct.child_process** %3, align 8
  %176 = getelementptr inbounds %struct.child_process, %struct.child_process* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @close(i32 %177)
  br label %179

179:                                              ; preds = %174, %169
  br label %180

180:                                              ; preds = %179, %166
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %181

181:                                              ; preds = %180, %120, %72
  %182 = load i8*, i8** %11, align 8
  %183 = load %struct.child_process*, %struct.child_process** %3, align 8
  %184 = getelementptr inbounds %struct.child_process, %struct.child_process* %183, i32 0, i32 0
  %185 = load i8**, i8*** %184, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @strerror(i32 %188)
  %190 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %182, i8* %187, i32 %189)
  %191 = load %struct.child_process*, %struct.child_process** %3, align 8
  %192 = call i32 @child_process_clear(%struct.child_process* %191)
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %658

194:                                              ; preds = %141
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.child_process*, %struct.child_process** %3, align 8
  %198 = getelementptr inbounds %struct.child_process, %struct.child_process* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %194, %136
  %200 = load %struct.child_process*, %struct.child_process** %3, align 8
  %201 = call i32 @trace2_child_start(%struct.child_process* %200)
  %202 = load %struct.child_process*, %struct.child_process** %3, align 8
  %203 = call i32 @trace_run_command(%struct.child_process* %202)
  %204 = call i32 @fflush(i32* null)
  store i32 -1, i32* %13, align 4
  %205 = bitcast %struct.argv_array* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %206 = load %struct.child_process*, %struct.child_process** %3, align 8
  %207 = call i64 @prepare_cmd(%struct.argv_array* %15, %struct.child_process* %206)
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %225

209:                                              ; preds = %199
  %210 = load i32, i32* @errno, align 4
  store i32 %210, i32* %10, align 4
  %211 = load %struct.child_process*, %struct.child_process** %3, align 8
  %212 = getelementptr inbounds %struct.child_process, %struct.child_process* %211, i32 0, i32 4
  store i32 -1, i32* %212, align 4
  %213 = load %struct.child_process*, %struct.child_process** %3, align 8
  %214 = getelementptr inbounds %struct.child_process, %struct.child_process* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %209
  %218 = load %struct.child_process*, %struct.child_process** %3, align 8
  %219 = getelementptr inbounds %struct.child_process, %struct.child_process* %218, i32 0, i32 0
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @error_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %217, %209
  br label %541

225:                                              ; preds = %199
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %227 = call i64 @pipe(i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 -1, i32* %230, align 4
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 -1, i32* %231, align 4
  br label %232

232:                                              ; preds = %229, %225
  %233 = load %struct.child_process*, %struct.child_process** %3, align 8
  %234 = getelementptr inbounds %struct.child_process, %struct.child_process* %233, i32 0, i32 14
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %247, label %237

237:                                              ; preds = %232
  %238 = load %struct.child_process*, %struct.child_process** %3, align 8
  %239 = getelementptr inbounds %struct.child_process, %struct.child_process* %238, i32 0, i32 12
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %237
  %243 = load %struct.child_process*, %struct.child_process** %3, align 8
  %244 = getelementptr inbounds %struct.child_process, %struct.child_process* %243, i32 0, i32 13
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %260

247:                                              ; preds = %242, %237, %232
  %248 = load i32, i32* @O_RDWR, align 4
  %249 = load i32, i32* @O_CLOEXEC, align 4
  %250 = or i32 %248, %249
  %251 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %250)
  store i32 %251, i32* %13, align 4
  %252 = load i32, i32* %13, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %256 = call i32 @die_errno(i32 %255)
  br label %257

257:                                              ; preds = %254, %247
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @set_cloexec(i32 %258)
  br label %260

260:                                              ; preds = %257, %242
  %261 = load %struct.child_process*, %struct.child_process** %3, align 8
  %262 = getelementptr inbounds %struct.child_process, %struct.child_process* %261, i32 0, i32 8
  %263 = load i64, i64* %262, align 8
  %264 = call i8** @prep_childenv(i64 %263)
  store i8** %264, i8*** %14, align 8
  %265 = call i32 @atfork_prepare(%struct.atfork_state* %17)
  %266 = call i32 (...) @fork()
  %267 = load %struct.child_process*, %struct.child_process** %3, align 8
  %268 = getelementptr inbounds %struct.child_process, %struct.child_process* %267, i32 0, i32 4
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* @errno, align 4
  store i32 %269, i32* %10, align 4
  %270 = load %struct.child_process*, %struct.child_process** %3, align 8
  %271 = getelementptr inbounds %struct.child_process, %struct.child_process* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %479, label %274

274:                                              ; preds = %260
  %275 = load i32, i32* @child_die_fn, align 4
  %276 = call i32 @set_die_routine(i32 %275)
  %277 = load i32, i32* @child_error_fn, align 4
  %278 = call i32 @set_error_routine(i32 %277)
  %279 = load i32, i32* @child_warn_fn, align 4
  %280 = call i32 @set_warn_routine(i32 %279)
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @close(i32 %282)
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @set_cloexec(i32 %285)
  %287 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* @child_notifier, align 4
  %289 = load %struct.child_process*, %struct.child_process** %3, align 8
  %290 = getelementptr inbounds %struct.child_process, %struct.child_process* %289, i32 0, i32 14
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %274
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @child_dup2(i32 %294, i32 0)
  br label %321

296:                                              ; preds = %274
  %297 = load i32, i32* %4, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %296
  %300 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @child_dup2(i32 %301, i32 0)
  %303 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %304 = call i32 @child_close_pair(i32* %303)
  br label %320

305:                                              ; preds = %296
  %306 = load %struct.child_process*, %struct.child_process** %3, align 8
  %307 = getelementptr inbounds %struct.child_process, %struct.child_process* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %305
  %311 = load %struct.child_process*, %struct.child_process** %3, align 8
  %312 = getelementptr inbounds %struct.child_process, %struct.child_process* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @child_dup2(i32 %313, i32 0)
  %315 = load %struct.child_process*, %struct.child_process** %3, align 8
  %316 = getelementptr inbounds %struct.child_process, %struct.child_process* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @child_close(i32 %317)
  br label %319

319:                                              ; preds = %310, %305
  br label %320

320:                                              ; preds = %319, %299
  br label %321

321:                                              ; preds = %320, %293
  %322 = load %struct.child_process*, %struct.child_process** %3, align 8
  %323 = getelementptr inbounds %struct.child_process, %struct.child_process* %322, i32 0, i32 13
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  %327 = load i32, i32* %13, align 4
  %328 = call i32 @child_dup2(i32 %327, i32 2)
  br label %354

329:                                              ; preds = %321
  %330 = load i32, i32* %6, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @child_dup2(i32 %334, i32 2)
  %336 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %337 = call i32 @child_close_pair(i32* %336)
  br label %353

338:                                              ; preds = %329
  %339 = load %struct.child_process*, %struct.child_process** %3, align 8
  %340 = getelementptr inbounds %struct.child_process, %struct.child_process* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = icmp sgt i32 %341, 1
  br i1 %342, label %343, label %352

343:                                              ; preds = %338
  %344 = load %struct.child_process*, %struct.child_process** %3, align 8
  %345 = getelementptr inbounds %struct.child_process, %struct.child_process* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @child_dup2(i32 %346, i32 2)
  %348 = load %struct.child_process*, %struct.child_process** %3, align 8
  %349 = getelementptr inbounds %struct.child_process, %struct.child_process* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @child_close(i32 %350)
  br label %352

352:                                              ; preds = %343, %338
  br label %353

353:                                              ; preds = %352, %332
  br label %354

354:                                              ; preds = %353, %326
  %355 = load %struct.child_process*, %struct.child_process** %3, align 8
  %356 = getelementptr inbounds %struct.child_process, %struct.child_process* %355, i32 0, i32 12
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %354
  %360 = load i32, i32* %13, align 4
  %361 = call i32 @child_dup2(i32 %360, i32 1)
  br label %395

362:                                              ; preds = %354
  %363 = load %struct.child_process*, %struct.child_process** %3, align 8
  %364 = getelementptr inbounds %struct.child_process, %struct.child_process* %363, i32 0, i32 11
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = call i32 @child_dup2(i32 2, i32 1)
  br label %394

369:                                              ; preds = %362
  %370 = load i32, i32* %5, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %369
  %373 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @child_dup2(i32 %374, i32 1)
  %376 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %377 = call i32 @child_close_pair(i32* %376)
  br label %393

378:                                              ; preds = %369
  %379 = load %struct.child_process*, %struct.child_process** %3, align 8
  %380 = getelementptr inbounds %struct.child_process, %struct.child_process* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = icmp sgt i32 %381, 1
  br i1 %382, label %383, label %392

383:                                              ; preds = %378
  %384 = load %struct.child_process*, %struct.child_process** %3, align 8
  %385 = getelementptr inbounds %struct.child_process, %struct.child_process* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @child_dup2(i32 %386, i32 1)
  %388 = load %struct.child_process*, %struct.child_process** %3, align 8
  %389 = getelementptr inbounds %struct.child_process, %struct.child_process* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @child_close(i32 %390)
  br label %392

392:                                              ; preds = %383, %378
  br label %393

393:                                              ; preds = %392, %372
  br label %394

394:                                              ; preds = %393, %367
  br label %395

395:                                              ; preds = %394, %359
  %396 = load %struct.child_process*, %struct.child_process** %3, align 8
  %397 = getelementptr inbounds %struct.child_process, %struct.child_process* %396, i32 0, i32 7
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %395
  %401 = load %struct.child_process*, %struct.child_process** %3, align 8
  %402 = getelementptr inbounds %struct.child_process, %struct.child_process* %401, i32 0, i32 7
  %403 = load i64, i64* %402, align 8
  %404 = call i64 @chdir(i64 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %400
  %407 = load i32, i32* @CHILD_ERR_CHDIR, align 4
  %408 = call i32 @child_die(i32 %407)
  br label %409

409:                                              ; preds = %406, %400, %395
  store i32 1, i32* %18, align 4
  br label %410

410:                                              ; preds = %425, %409
  %411 = load i32, i32* %18, align 4
  %412 = load i32, i32* @NSIG, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %428

414:                                              ; preds = %410
  %415 = load i32, i32* %18, align 4
  %416 = load i64, i64* @SIG_DFL, align 8
  %417 = call i64 @signal(i32 %415, i64 %416)
  %418 = load i64, i64* @SIG_IGN, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %424

420:                                              ; preds = %414
  %421 = load i32, i32* %18, align 4
  %422 = load i64, i64* @SIG_IGN, align 8
  %423 = call i64 @signal(i32 %421, i64 %422)
  br label %424

424:                                              ; preds = %420, %414
  br label %425

425:                                              ; preds = %424
  %426 = load i32, i32* %18, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %18, align 4
  br label %410

428:                                              ; preds = %410
  %429 = load i32, i32* @SIG_SETMASK, align 4
  %430 = getelementptr inbounds %struct.atfork_state, %struct.atfork_state* %17, i32 0, i32 0
  %431 = call i64 @sigprocmask(i32 %429, i32* %430, i32* null)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %428
  %434 = load i32, i32* @CHILD_ERR_SIGPROCMASK, align 4
  %435 = call i32 @child_die(i32 %434)
  br label %436

436:                                              ; preds = %433, %428
  %437 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %15, i32 0, i32 0
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 1
  %440 = load i32, i32* %439, align 4
  %441 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %15, i32 0, i32 0
  %442 = load i32*, i32** %441, align 8
  %443 = bitcast i32* %442 to i8**
  %444 = getelementptr inbounds i8*, i8** %443, i64 1
  %445 = load i8**, i8*** %14, align 8
  %446 = call i32 @execve(i32 %440, i8** %444, i8** %445)
  %447 = load i32, i32* @errno, align 4
  %448 = load i32, i32* @ENOEXEC, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %460

450:                                              ; preds = %436
  %451 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %15, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 0
  %454 = load i32, i32* %453, align 4
  %455 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %15, i32 0, i32 0
  %456 = load i32*, i32** %455, align 8
  %457 = bitcast i32* %456 to i8**
  %458 = load i8**, i8*** %14, align 8
  %459 = call i32 @execve(i32 %454, i8** %457, i8** %458)
  br label %460

460:                                              ; preds = %450, %436
  %461 = load i32, i32* @errno, align 4
  %462 = load i32, i32* @ENOENT, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %464, label %475

464:                                              ; preds = %460
  %465 = load %struct.child_process*, %struct.child_process** %3, align 8
  %466 = getelementptr inbounds %struct.child_process, %struct.child_process* %465, i32 0, i32 6
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %464
  %470 = load i32, i32* @CHILD_ERR_SILENT, align 4
  %471 = call i32 @child_die(i32 %470)
  br label %472

472:                                              ; preds = %469, %464
  %473 = load i32, i32* @CHILD_ERR_ENOENT, align 4
  %474 = call i32 @child_die(i32 %473)
  br label %478

475:                                              ; preds = %460
  %476 = load i32, i32* @CHILD_ERR_ERRNO, align 4
  %477 = call i32 @child_die(i32 %476)
  br label %478

478:                                              ; preds = %475, %472
  br label %479

479:                                              ; preds = %478, %260
  %480 = call i32 @atfork_parent(%struct.atfork_state* %17)
  %481 = load %struct.child_process*, %struct.child_process** %3, align 8
  %482 = getelementptr inbounds %struct.child_process, %struct.child_process* %481, i32 0, i32 4
  %483 = load i32, i32* %482, align 4
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %485, label %492

485:                                              ; preds = %479
  %486 = load %struct.child_process*, %struct.child_process** %3, align 8
  %487 = getelementptr inbounds %struct.child_process, %struct.child_process* %486, i32 0, i32 0
  %488 = load i8**, i8*** %487, align 8
  %489 = getelementptr inbounds i8*, i8** %488, i64 0
  %490 = load i8*, i8** %489, align 8
  %491 = call i32 @error_errno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %490)
  br label %504

492:                                              ; preds = %479
  %493 = load %struct.child_process*, %struct.child_process** %3, align 8
  %494 = getelementptr inbounds %struct.child_process, %struct.child_process* %493, i32 0, i32 5
  %495 = load i64, i64* %494, align 8
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %492
  %498 = load %struct.child_process*, %struct.child_process** %3, align 8
  %499 = getelementptr inbounds %struct.child_process, %struct.child_process* %498, i32 0, i32 4
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.child_process*, %struct.child_process** %3, align 8
  %502 = call i32 @mark_child_for_cleanup(i32 %500, %struct.child_process* %501)
  br label %503

503:                                              ; preds = %497, %492
  br label %504

504:                                              ; preds = %503, %485
  %505 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @close(i32 %506)
  %508 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @xread(i32 %509, %struct.child_err* %16, i32 4)
  %511 = sext i32 %510 to i64
  %512 = icmp eq i64 %511, 4
  br i1 %512, label %513, label %528

513:                                              ; preds = %504
  %514 = load %struct.child_process*, %struct.child_process** %3, align 8
  %515 = getelementptr inbounds %struct.child_process, %struct.child_process* %514, i32 0, i32 4
  %516 = load i32, i32* %515, align 4
  %517 = load %struct.child_process*, %struct.child_process** %3, align 8
  %518 = getelementptr inbounds %struct.child_process, %struct.child_process* %517, i32 0, i32 0
  %519 = load i8**, i8*** %518, align 8
  %520 = getelementptr inbounds i8*, i8** %519, i64 0
  %521 = load i8*, i8** %520, align 8
  %522 = call i32 @wait_or_whine(i32 %516, i8* %521, i32 0)
  %523 = load %struct.child_process*, %struct.child_process** %3, align 8
  %524 = call i32 @child_err_spew(%struct.child_process* %523, %struct.child_err* %16)
  %525 = load i32, i32* @errno, align 4
  store i32 %525, i32* %10, align 4
  %526 = load %struct.child_process*, %struct.child_process** %3, align 8
  %527 = getelementptr inbounds %struct.child_process, %struct.child_process* %526, i32 0, i32 4
  store i32 -1, i32* %527, align 4
  br label %528

528:                                              ; preds = %513, %504
  %529 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %530 = load i32, i32* %529, align 4
  %531 = call i32 @close(i32 %530)
  %532 = load i32, i32* %13, align 4
  %533 = icmp sge i32 %532, 0
  br i1 %533, label %534, label %537

534:                                              ; preds = %528
  %535 = load i32, i32* %13, align 4
  %536 = call i32 @close(i32 %535)
  br label %537

537:                                              ; preds = %534, %528
  %538 = call i32 @argv_array_clear(%struct.argv_array* %15)
  %539 = load i8**, i8*** %14, align 8
  %540 = call i32 @free(i8** %539)
  br label %541

541:                                              ; preds = %537, %224
  %542 = load %struct.child_process*, %struct.child_process** %3, align 8
  %543 = getelementptr inbounds %struct.child_process, %struct.child_process* %542, i32 0, i32 4
  %544 = load i32, i32* %543, align 4
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %546, label %603

546:                                              ; preds = %541
  %547 = load %struct.child_process*, %struct.child_process** %3, align 8
  %548 = call i32 @trace2_child_exit(%struct.child_process* %547, i32 -1)
  %549 = load i32, i32* %4, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %554

551:                                              ; preds = %546
  %552 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %553 = call i32 @close_pair(i32* %552)
  br label %565

554:                                              ; preds = %546
  %555 = load %struct.child_process*, %struct.child_process** %3, align 8
  %556 = getelementptr inbounds %struct.child_process, %struct.child_process* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 8
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %564

559:                                              ; preds = %554
  %560 = load %struct.child_process*, %struct.child_process** %3, align 8
  %561 = getelementptr inbounds %struct.child_process, %struct.child_process* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 8
  %563 = call i32 @close(i32 %562)
  br label %564

564:                                              ; preds = %559, %554
  br label %565

565:                                              ; preds = %564, %551
  %566 = load i32, i32* %5, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %565
  %569 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %570 = call i32 @close_pair(i32* %569)
  br label %582

571:                                              ; preds = %565
  %572 = load %struct.child_process*, %struct.child_process** %3, align 8
  %573 = getelementptr inbounds %struct.child_process, %struct.child_process* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %581

576:                                              ; preds = %571
  %577 = load %struct.child_process*, %struct.child_process** %3, align 8
  %578 = getelementptr inbounds %struct.child_process, %struct.child_process* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 4
  %580 = call i32 @close(i32 %579)
  br label %581

581:                                              ; preds = %576, %571
  br label %582

582:                                              ; preds = %581, %568
  %583 = load i32, i32* %6, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %588

585:                                              ; preds = %582
  %586 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %587 = call i32 @close_pair(i32* %586)
  br label %599

588:                                              ; preds = %582
  %589 = load %struct.child_process*, %struct.child_process** %3, align 8
  %590 = getelementptr inbounds %struct.child_process, %struct.child_process* %589, i32 0, i32 3
  %591 = load i32, i32* %590, align 8
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %598

593:                                              ; preds = %588
  %594 = load %struct.child_process*, %struct.child_process** %3, align 8
  %595 = getelementptr inbounds %struct.child_process, %struct.child_process* %594, i32 0, i32 3
  %596 = load i32, i32* %595, align 8
  %597 = call i32 @close(i32 %596)
  br label %598

598:                                              ; preds = %593, %588
  br label %599

599:                                              ; preds = %598, %585
  %600 = load %struct.child_process*, %struct.child_process** %3, align 8
  %601 = call i32 @child_process_clear(%struct.child_process* %600)
  %602 = load i32, i32* %10, align 4
  store i32 %602, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %658

603:                                              ; preds = %541
  %604 = load i32, i32* %4, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %610

606:                                              ; preds = %603
  %607 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %608 = load i32, i32* %607, align 4
  %609 = call i32 @close(i32 %608)
  br label %621

610:                                              ; preds = %603
  %611 = load %struct.child_process*, %struct.child_process** %3, align 8
  %612 = getelementptr inbounds %struct.child_process, %struct.child_process* %611, i32 0, i32 1
  %613 = load i32, i32* %612, align 8
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %620

615:                                              ; preds = %610
  %616 = load %struct.child_process*, %struct.child_process** %3, align 8
  %617 = getelementptr inbounds %struct.child_process, %struct.child_process* %616, i32 0, i32 1
  %618 = load i32, i32* %617, align 8
  %619 = call i32 @close(i32 %618)
  br label %620

620:                                              ; preds = %615, %610
  br label %621

621:                                              ; preds = %620, %606
  %622 = load i32, i32* %5, align 4
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %628

624:                                              ; preds = %621
  %625 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %626 = load i32, i32* %625, align 4
  %627 = call i32 @close(i32 %626)
  br label %639

628:                                              ; preds = %621
  %629 = load %struct.child_process*, %struct.child_process** %3, align 8
  %630 = getelementptr inbounds %struct.child_process, %struct.child_process* %629, i32 0, i32 2
  %631 = load i32, i32* %630, align 4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %638

633:                                              ; preds = %628
  %634 = load %struct.child_process*, %struct.child_process** %3, align 8
  %635 = getelementptr inbounds %struct.child_process, %struct.child_process* %634, i32 0, i32 2
  %636 = load i32, i32* %635, align 4
  %637 = call i32 @close(i32 %636)
  br label %638

638:                                              ; preds = %633, %628
  br label %639

639:                                              ; preds = %638, %624
  %640 = load i32, i32* %6, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %646

642:                                              ; preds = %639
  %643 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %644 = load i32, i32* %643, align 4
  %645 = call i32 @close(i32 %644)
  br label %657

646:                                              ; preds = %639
  %647 = load %struct.child_process*, %struct.child_process** %3, align 8
  %648 = getelementptr inbounds %struct.child_process, %struct.child_process* %647, i32 0, i32 3
  %649 = load i32, i32* %648, align 8
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %656

651:                                              ; preds = %646
  %652 = load %struct.child_process*, %struct.child_process** %3, align 8
  %653 = getelementptr inbounds %struct.child_process, %struct.child_process* %652, i32 0, i32 3
  %654 = load i32, i32* %653, align 8
  %655 = call i32 @close(i32 %654)
  br label %656

656:                                              ; preds = %651, %646
  br label %657

657:                                              ; preds = %656, %642
  store i32 0, i32* %2, align 4
  br label %658

658:                                              ; preds = %657, %599, %181
  %659 = load i32, i32* %2, align 4
  ret i32 %659
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @close_pair(i32*) #1

declare dso_local i32 @error(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @child_process_clear(%struct.child_process*) #1

declare dso_local i32 @trace2_child_start(%struct.child_process*) #1

declare dso_local i32 @trace_run_command(%struct.child_process*) #1

declare dso_local i32 @fflush(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @prepare_cmd(%struct.argv_array*, %struct.child_process*) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @set_cloexec(i32) #1

declare dso_local i8** @prep_childenv(i64) #1

declare dso_local i32 @atfork_prepare(%struct.atfork_state*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @set_die_routine(i32) #1

declare dso_local i32 @set_error_routine(i32) #1

declare dso_local i32 @set_warn_routine(i32) #1

declare dso_local i32 @child_dup2(i32, i32) #1

declare dso_local i32 @child_close_pair(i32*) #1

declare dso_local i32 @child_close(i32) #1

declare dso_local i64 @chdir(i64) #1

declare dso_local i32 @child_die(i32) #1

declare dso_local i64 @signal(i32, i64) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @execve(i32, i8**, i8**) #1

declare dso_local i32 @atfork_parent(%struct.atfork_state*) #1

declare dso_local i32 @mark_child_for_cleanup(i32, %struct.child_process*) #1

declare dso_local i32 @xread(i32, %struct.child_err*, i32) #1

declare dso_local i32 @wait_or_whine(i32, i8*, i32) #1

declare dso_local i32 @child_err_spew(%struct.child_process*, %struct.child_err*) #1

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @trace2_child_exit(%struct.child_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
