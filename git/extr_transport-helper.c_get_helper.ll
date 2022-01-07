; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_get_helper.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_get_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.child_process = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.transport = type { i32, %struct.TYPE_6__*, %struct.helper_data* }
%struct.TYPE_6__ = type { i32 }
%struct.helper_data = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.child_process*, %struct.TYPE_7__, i8*, i8*, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"git-remote-%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@GIT_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to find remote helper for '%s'\00", align 1
@REFSPEC_FETCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"can't dup helper output fd\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"capabilities\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Debug: Got cap %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"bidi-import\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"check-connectivity\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"refspec \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"stateless-connect\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"signed-tags\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"export-marks \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"import-marks \00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"no-private-update\00", align 1
@.str.21 = private unnamed_addr constant [88 x i8] c"unknown mandatory capability %s; this remote helper probably needs newer version of Git\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"this remote helper should implement refspec capability\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Debug: Capabilities complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.child_process* (%struct.transport*)* @get_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.child_process* @get_helper(%struct.transport* %0) #0 {
  %2 = alloca %struct.child_process*, align 8
  %3 = alloca %struct.transport*, align 8
  %4 = alloca %struct.helper_data*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.child_process*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %3, align 8
  %12 = load %struct.transport*, %struct.transport** %3, align 8
  %13 = getelementptr inbounds %struct.transport, %struct.transport* %12, i32 0, i32 2
  %14 = load %struct.helper_data*, %struct.helper_data** %13, align 8
  store %struct.helper_data* %14, %struct.helper_data** %4, align 8
  %15 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %16 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %17 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %16, i32 0, i32 12
  %18 = load %struct.child_process*, %struct.child_process** %17, align 8
  %19 = icmp ne %struct.child_process* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %22 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %21, i32 0, i32 12
  %23 = load %struct.child_process*, %struct.child_process** %22, align 8
  store %struct.child_process* %23, %struct.child_process** %2, align 8
  br label %323

24:                                               ; preds = %1
  %25 = call %struct.child_process* @xmalloc(i32 48)
  store %struct.child_process* %25, %struct.child_process** %6, align 8
  %26 = load %struct.child_process*, %struct.child_process** %6, align 8
  %27 = call i32 @child_process_init(%struct.child_process* %26)
  %28 = load %struct.child_process*, %struct.child_process** %6, align 8
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.child_process*, %struct.child_process** %6, align 8
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load %struct.child_process*, %struct.child_process** %6, align 8
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = load %struct.child_process*, %struct.child_process** %6, align 8
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %34, i32 0, i32 3
  %36 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %37 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @argv_array_pushf(%struct.TYPE_8__* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load %struct.child_process*, %struct.child_process** %6, align 8
  %41 = getelementptr inbounds %struct.child_process, %struct.child_process* %40, i32 0, i32 3
  %42 = load %struct.transport*, %struct.transport** %3, align 8
  %43 = getelementptr inbounds %struct.transport, %struct.transport* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @argv_array_push(%struct.TYPE_8__* %41, i32 %46)
  %48 = load %struct.child_process*, %struct.child_process** %6, align 8
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %48, i32 0, i32 3
  %50 = load %struct.transport*, %struct.transport** %3, align 8
  %51 = getelementptr inbounds %struct.transport, %struct.transport* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @remove_ext_force(i32 %52)
  %54 = call i32 @argv_array_push(%struct.TYPE_8__* %49, i32 %53)
  %55 = load %struct.child_process*, %struct.child_process** %6, align 8
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %55, i32 0, i32 6
  store i64 0, i64* %56, align 8
  %57 = load %struct.child_process*, %struct.child_process** %6, align 8
  %58 = getelementptr inbounds %struct.child_process, %struct.child_process* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = call i64 (...) @have_git_dir()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %24
  %62 = load %struct.child_process*, %struct.child_process** %6, align 8
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %62, i32 0, i32 5
  %64 = bitcast i32* %63 to %struct.TYPE_8__*
  %65 = load i32, i32* @GIT_DIR_ENVIRONMENT, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 (...) @get_git_dir()
  %69 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @argv_array_pushf(%struct.TYPE_8__* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %24
  %71 = load %struct.child_process*, %struct.child_process** %6, align 8
  %72 = getelementptr inbounds %struct.child_process, %struct.child_process* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.child_process*, %struct.child_process** %6, align 8
  %78 = getelementptr inbounds %struct.child_process, %struct.child_process* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.child_process*, %struct.child_process** %6, align 8
  %80 = call i32 @start_command(%struct.child_process* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %70
  %84 = load i64, i64* @errno, align 8
  %85 = load i64, i64* @ENOENT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %90 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @die(i32 %88, i8* %91)
  br label %100

93:                                               ; preds = %83, %70
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @exit(i32 %97) #4
  unreachable

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %87
  %101 = load %struct.child_process*, %struct.child_process** %6, align 8
  %102 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %103 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %102, i32 0, i32 12
  store %struct.child_process* %101, %struct.child_process** %103, align 8
  %104 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %105 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %104, i32 0, i32 17
  store i64 0, i64* %105, align 8
  %106 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %107 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %106, i32 0, i32 13
  %108 = load i32, i32* @REFSPEC_FETCH, align 4
  %109 = call i32 @refspec_init(%struct.TYPE_7__* %107, i32 %108)
  %110 = load %struct.child_process*, %struct.child_process** %6, align 8
  %111 = getelementptr inbounds %struct.child_process, %struct.child_process* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dup(i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %100
  %117 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %118 = call i32 @die_errno(i32 %117)
  br label %119

119:                                              ; preds = %116, %100
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @xfdopen(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %122 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %123 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %122, i32 0, i32 16
  store i32 %121, i32* %123, align 8
  %124 = load %struct.child_process*, %struct.child_process** %6, align 8
  %125 = getelementptr inbounds %struct.child_process, %struct.child_process* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @write_constant(i32 %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %119, %285
  store i32 0, i32* %11, align 4
  %129 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %130 = call i64 @recvline(%struct.helper_data* %129, %struct.strbuf* %5)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 @exit(i32 128) #4
  unreachable

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %286

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 42
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  store i8* %149, i8** %9, align 8
  store i32 1, i32* %11, align 4
  br label %153

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %9, align 8
  br label %153

153:                                              ; preds = %150, %146
  %154 = load i64, i64* @debug, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* @stderr, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %156, %153
  %161 = load i8*, i8** %9, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %166 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %165, i32 0, i32 1
  store i32 1, i32* %166, align 8
  br label %285

167:                                              ; preds = %160
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %173 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %172, i32 0, i32 2
  store i32 1, i32* %173, align 4
  br label %284

174:                                              ; preds = %167
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %180 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %179, i32 0, i32 3
  store i32 1, i32* %180, align 8
  br label %283

181:                                              ; preds = %174
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %187 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %186, i32 0, i32 4
  store i32 1, i32* %187, align 4
  br label %282

188:                                              ; preds = %181
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %188
  %193 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %194 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %193, i32 0, i32 5
  store i32 1, i32* %194, align 8
  br label %281

195:                                              ; preds = %188
  %196 = load i8*, i8** %9, align 8
  %197 = call i32 @strcmp(i8* %196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %201 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %200, i32 0, i32 6
  store i32 1, i32* %201, align 4
  br label %280

202:                                              ; preds = %195
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %208 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %207, i32 0, i32 7
  store i32 1, i32* %208, align 8
  br label %279

209:                                              ; preds = %202
  %210 = load i8*, i8** %9, align 8
  %211 = call i64 @skip_prefix(i8* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %10)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %215 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %214, i32 0, i32 13
  %216 = load i8*, i8** %10, align 8
  %217 = call i32 @refspec_append(%struct.TYPE_7__* %215, i8* %216)
  br label %278

218:                                              ; preds = %209
  %219 = load i8*, i8** %9, align 8
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %218
  %223 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %224 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %223, i32 0, i32 8
  store i32 1, i32* %224, align 4
  br label %277

225:                                              ; preds = %218
  %226 = load i8*, i8** %9, align 8
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %231 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %230, i32 0, i32 9
  store i32 1, i32* %231, align 8
  br label %276

232:                                              ; preds = %225
  %233 = load i8*, i8** %9, align 8
  %234 = call i32 @strcmp(i8* %233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %232
  %237 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %238 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %237, i32 0, i32 10
  store i32 1, i32* %238, align 4
  br label %275

239:                                              ; preds = %232
  %240 = load i8*, i8** %9, align 8
  %241 = call i64 @skip_prefix(i8* %240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %10)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %239
  %244 = load i8*, i8** %10, align 8
  %245 = call i8* @xstrdup(i8* %244)
  %246 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %247 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %246, i32 0, i32 15
  store i8* %245, i8** %247, align 8
  br label %274

248:                                              ; preds = %239
  %249 = load i8*, i8** %9, align 8
  %250 = call i64 @skip_prefix(i8* %249, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8** %10)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = load i8*, i8** %10, align 8
  %254 = call i8* @xstrdup(i8* %253)
  %255 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %256 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %255, i32 0, i32 14
  store i8* %254, i8** %256, align 8
  br label %273

257:                                              ; preds = %248
  %258 = load i8*, i8** %9, align 8
  %259 = call i64 @starts_with(i8* %258, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %263 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %262, i32 0, i32 11
  store i32 1, i32* %263, align 8
  br label %272

264:                                              ; preds = %257
  %265 = load i32, i32* %11, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = call i32 @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.21, i64 0, i64 0))
  %269 = load i8*, i8** %9, align 8
  %270 = call i32 @die(i32 %268, i8* %269)
  br label %271

271:                                              ; preds = %267, %264
  br label %272

272:                                              ; preds = %271, %261
  br label %273

273:                                              ; preds = %272, %252
  br label %274

274:                                              ; preds = %273, %243
  br label %275

275:                                              ; preds = %274, %236
  br label %276

276:                                              ; preds = %275, %229
  br label %277

277:                                              ; preds = %276, %222
  br label %278

278:                                              ; preds = %277, %213
  br label %279

279:                                              ; preds = %278, %206
  br label %280

280:                                              ; preds = %279, %199
  br label %281

281:                                              ; preds = %280, %192
  br label %282

282:                                              ; preds = %281, %185
  br label %283

283:                                              ; preds = %282, %178
  br label %284

284:                                              ; preds = %283, %171
  br label %285

285:                                              ; preds = %284, %164
  br label %128

286:                                              ; preds = %139
  %287 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %288 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %287, i32 0, i32 13
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %310, label %292

292:                                              ; preds = %286
  %293 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %294 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %307, label %297

297:                                              ; preds = %292
  %298 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %299 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %297
  %303 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %304 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %302, %297, %292
  %308 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0))
  %309 = call i32 @warning(i32 %308)
  br label %310

310:                                              ; preds = %307, %302, %286
  %311 = call i32 @strbuf_release(%struct.strbuf* %5)
  %312 = load i64, i64* @debug, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %310
  %315 = load i32, i32* @stderr, align 4
  %316 = call i32 (i32, i8*, ...) @fprintf(i32 %315, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  br label %317

317:                                              ; preds = %314, %310
  %318 = load %struct.transport*, %struct.transport** %3, align 8
  %319 = call i32 @standard_options(%struct.transport* %318)
  %320 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %321 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %320, i32 0, i32 12
  %322 = load %struct.child_process*, %struct.child_process** %321, align 8
  store %struct.child_process* %322, %struct.child_process** %2, align 8
  br label %323

323:                                              ; preds = %317, %20
  %324 = load %struct.child_process*, %struct.child_process** %2, align 8
  ret %struct.child_process* %324
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.child_process* @xmalloc(i32) #2

declare dso_local i32 @child_process_init(%struct.child_process*) #2

declare dso_local i32 @argv_array_pushf(%struct.TYPE_8__*, i8*, i8*, ...) #2

declare dso_local i32 @argv_array_push(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @remove_ext_force(i32) #2

declare dso_local i64 @have_git_dir(...) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i32 @start_command(%struct.child_process*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @refspec_init(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i32 @die_errno(i32) #2

declare dso_local i32 @xfdopen(i32, i8*) #2

declare dso_local i32 @write_constant(i32, i8*) #2

declare dso_local i64 @recvline(%struct.helper_data*, %struct.strbuf*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @refspec_append(%struct.TYPE_7__*, i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @standard_options(%struct.transport*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
