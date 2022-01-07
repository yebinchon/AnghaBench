; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"A:H:M:N:P:R:T:b:c:g:l:n:p:dhu:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@max_load_image_area = common dso_local global i64 0, align 8
@max_virtual_memory = common dso_local global i64 0, align 8
@max_all_results = common dso_local global i64 0, align 8
@memory_limit = common dso_local global i64 0, align 8
@rss_memory_limit = common dso_local global i64 0, align 8
@job_nice = common dso_local global i32 0, align 4
@MAX_CHILD_PROCESS = common dso_local global i32 0, align 4
@max_process_number = common dso_local global i32 0, align 4
@MAX_THREADS = common dso_local global i32 0, align 4
@threads_limit = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@groupname = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i32 0, align 4
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@main_nice = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@daemonize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"max-child-process-number isn't stricly positive\0A\00", align 1
@.str.3 = private unnamed_addr constant [145 x i8] c"Job process nice is smaller than main process nice.\0ASee man 2 nice: Only the super user may specify a negative increment, or priority increase.\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Main process nice should be in the range -20 to 19.\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Job process nice should be in the range -20 to 19.\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"nice (%d) fail. %m\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Command line parsed\0A\00", align 1
@dynamic_data_buffer_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"fatal: cannot change user to %s, group to %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@settings_addr = common dso_local global i32 0, align 4
@sfd = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (...) @set_debug_handlers()
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  br label %14

14:                                               ; preds = %169, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %170

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %169 [
    i32 65, label %21
    i32 72, label %21
    i32 77, label %21
    i32 82, label %21
    i32 78, label %96
    i32 80, label %100
    i32 84, label %113
    i32 118, label %126
    i32 103, label %129
    i32 104, label %131
    i32 98, label %133
    i32 99, label %141
    i32 110, label %154
    i32 112, label %158
    i32 117, label %162
    i32 108, label %164
    i32 100, label %166
  ]

21:                                               ; preds = %19, %19, %19, %19
  store i8 0, i8* %9, align 1
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %8, i8* %9)
  %24 = icmp sge i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8, i8* %9, align 1
  %28 = sext i8 %27 to i32
  %29 = or i32 %28, 32
  switch i32 %29, label %42 [
    i32 107, label %30
    i32 109, label %33
    i32 103, label %36
    i32 116, label %39
  ]

30:                                               ; preds = %21
  %31 = load i64, i64* %8, align 8
  %32 = shl i64 %31, 10
  store i64 %32, i64* %8, align 8
  br label %48

33:                                               ; preds = %21
  %34 = load i64, i64* %8, align 8
  %35 = shl i64 %34, 20
  store i64 %35, i64* %8, align 8
  br label %48

36:                                               ; preds = %21
  %37 = load i64, i64* %8, align 8
  %38 = shl i64 %37, 30
  store i64 %38, i64* %8, align 8
  br label %48

39:                                               ; preds = %21
  %40 = load i64, i64* %8, align 8
  %41 = shl i64 %40, 40
  store i64 %41, i64* %8, align 8
  br label %48

42:                                               ; preds = %21
  %43 = load i8, i8* %9, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %42, %39, %36, %33, %30
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 65
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i64, i64* %8, align 8
  %53 = icmp sge i64 %52, 1048576
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = icmp sle i64 %55, 1073741824
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* @max_load_image_area, align 8
  br label %59

59:                                               ; preds = %57, %54, %51, %48
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 72
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i64, i64* %8, align 8
  %64 = icmp sge i64 %63, 1048576
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @max_virtual_memory, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* @max_all_results, align 8
  br label %71

71:                                               ; preds = %69, %65, %62, %59
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 77
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i64, i64* %8, align 8
  %76 = icmp sge i64 %75, 134217728
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @max_virtual_memory, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* @memory_limit, align 8
  br label %83

83:                                               ; preds = %81, %77, %74, %71
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 82
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i64, i64* %8, align 8
  %88 = icmp sge i64 %87, 67108864
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @rss_memory_limit, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* %8, align 8
  store i64 %94, i64* @rss_memory_limit, align 8
  br label %95

95:                                               ; preds = %93, %89, %86, %83
  br label %169

96:                                               ; preds = %19
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i8* @atoi(i8* %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* @job_nice, align 4
  br label %169

100:                                              ; preds = %19
  %101 = load i8*, i8** @optarg, align 8
  %102 = call i8* @atoi(i8* %101)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp sge i32 %104, 1
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @MAX_CHILD_PROCESS, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* @max_process_number, align 4
  br label %112

112:                                              ; preds = %110, %106, %100
  br label %169

113:                                              ; preds = %19
  %114 = load i8*, i8** @optarg, align 8
  %115 = call i8* @atoi(i8* %114)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp sge i32 %117, 1
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @MAX_THREADS, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* @threads_limit, align 4
  br label %125

125:                                              ; preds = %123, %119, %113
  br label %169

126:                                              ; preds = %19
  %127 = load i32, i32* @verbosity, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @verbosity, align 4
  br label %169

129:                                              ; preds = %19
  %130 = load i8*, i8** @optarg, align 8
  store i8* %130, i8** @groupname, align 8
  br label %169

131:                                              ; preds = %19
  %132 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %272

133:                                              ; preds = %19
  %134 = load i8*, i8** @optarg, align 8
  %135 = call i8* @atoi(i8* %134)
  store i8* %135, i8** @backlog, align 8
  %136 = load i8*, i8** @backlog, align 8
  %137 = icmp ule i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i8*, i8** @BACKLOG, align 8
  store i8* %139, i8** @backlog, align 8
  br label %140

140:                                              ; preds = %138, %133
  br label %169

141:                                              ; preds = %19
  %142 = load i8*, i8** @optarg, align 8
  %143 = call i8* @atoi(i8* %142)
  %144 = ptrtoint i8* %143 to i32
  store i32 %144, i32* @maxconn, align 4
  %145 = load i32, i32* @maxconn, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* @maxconn, align 4
  %149 = load i32, i32* @MAX_CONNECTIONS, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147, %141
  %152 = load i32, i32* @MAX_CONNECTIONS, align 4
  store i32 %152, i32* @maxconn, align 4
  br label %153

153:                                              ; preds = %151, %147
  br label %169

154:                                              ; preds = %19
  %155 = load i8*, i8** @optarg, align 8
  %156 = call i8* @atoi(i8* %155)
  %157 = ptrtoint i8* %156 to i32
  store i32 %157, i32* @main_nice, align 4
  br label %169

158:                                              ; preds = %19
  %159 = load i8*, i8** @optarg, align 8
  %160 = call i8* @atoi(i8* %159)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* @port, align 4
  br label %169

162:                                              ; preds = %19
  %163 = load i8*, i8** @optarg, align 8
  store i8* %163, i8** @username, align 8
  br label %169

164:                                              ; preds = %19
  %165 = load i8*, i8** @optarg, align 8
  store i8* %165, i8** @logname, align 8
  br label %169

166:                                              ; preds = %19
  %167 = load i32, i32* @daemonize, align 4
  %168 = xor i32 %167, 1
  store i32 %168, i32* @daemonize, align 4
  br label %169

169:                                              ; preds = %19, %166, %164, %162, %158, %154, %153, %140, %129, %126, %125, %112, %96, %95
  br label %14

170:                                              ; preds = %14
  %171 = load i32, i32* @max_process_number, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = call i32 (...) @kprintf_multiprocessing_mode_enable()
  br label %178

175:                                              ; preds = %170
  %176 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %177 = call i32 (...) @usage()
  br label %178

178:                                              ; preds = %175, %173
  %179 = load i32, i32* @job_nice, align 4
  %180 = load i32, i32* @main_nice, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.3, i64 0, i64 0))
  %184 = call i32 (...) @usage()
  br label %185

185:                                              ; preds = %182, %178
  %186 = load i32, i32* @main_nice, align 4
  %187 = icmp slt i32 %186, -20
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* @main_nice, align 4
  %190 = icmp sgt i32 %189, 19
  br i1 %190, label %191, label %194

191:                                              ; preds = %188, %185
  %192 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %193 = call i32 @exit(i32 1) #3
  unreachable

194:                                              ; preds = %188
  %195 = load i32, i32* @job_nice, align 4
  %196 = icmp slt i32 %195, -20
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* @job_nice, align 4
  %199 = icmp sgt i32 %198, 19
  br i1 %199, label %200, label %203

200:                                              ; preds = %197, %194
  %201 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %202 = call i32 @exit(i32 1) #3
  unreachable

203:                                              ; preds = %197
  %204 = load i32, i32* @main_nice, align 4
  %205 = call i64 @nice(i32 %204)
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i32, i32* @main_nice, align 4
  %209 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %208)
  %210 = call i32 @exit(i32 1) #3
  unreachable

211:                                              ; preds = %203
  %212 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %213 = load i8*, i8** @username, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %223, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @maxconn, align 4
  %217 = load i32, i32* @MAX_CONNECTIONS, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = call i64 (...) @geteuid()
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  store i32 1000, i32* @maxconn, align 4
  br label %223

223:                                              ; preds = %222, %219, %215, %211
  store i32 4194304, i32* @dynamic_data_buffer_size, align 4
  %224 = load i32, i32* @maxconn, align 4
  %225 = add nsw i32 %224, 16
  %226 = call i64 @raise_file_rlimit(i32 %225)
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i32, i32* @maxconn, align 4
  %230 = add nsw i32 %229, 16
  %231 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %230)
  %232 = call i32 @exit(i32 1) #3
  unreachable

233:                                              ; preds = %223
  %234 = call i32 @aes_load_pwd_file(i32 0)
  %235 = load i8*, i8** @username, align 8
  %236 = load i8*, i8** @groupname, align 8
  %237 = call i64 @change_user_group(i8* %235, i8* %236)
  %238 = icmp slt i64 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %233
  %240 = load i8*, i8** @username, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = load i8*, i8** @username, align 8
  br label %245

244:                                              ; preds = %239
  br label %245

245:                                              ; preds = %244, %242
  %246 = phi i8* [ %243, %242 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %244 ]
  %247 = load i8*, i8** @groupname, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i8*, i8** @groupname, align 8
  br label %252

251:                                              ; preds = %245
  br label %252

252:                                              ; preds = %251, %249
  %253 = phi i8* [ %250, %249 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %251 ]
  %254 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %246, i8* %253)
  %255 = call i32 @exit(i32 1) #3
  unreachable

256:                                              ; preds = %233
  %257 = call i32 (...) @init_dyn_data()
  %258 = load i32, i32* @port, align 4
  %259 = load i32, i32* @settings_addr, align 4
  %260 = load i8*, i8** @backlog, align 8
  %261 = call i64 @server_socket(i32 %258, i32 %259, i8* %260, i32 0)
  store i64 %261, i64* @sfd, align 8
  %262 = load i64, i64* @sfd, align 8
  %263 = icmp slt i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %256
  %265 = load i32, i32* @port, align 4
  %266 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %265)
  %267 = call i32 @exit(i32 1) #3
  unreachable

268:                                              ; preds = %256
  %269 = call i32 (...) @req_structures_init()
  %270 = call i32 @time(i32 0)
  store i32 %270, i32* @start_time, align 4
  %271 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %272

272:                                              ; preds = %268, %131
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @kprintf_multiprocessing_mode_enable(...) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @nice(i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @raise_file_rlimit(i32) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user_group(i8*, i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @server_socket(i32, i32, i8*, i32) #1

declare dso_local i32 @req_structures_init(...) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
