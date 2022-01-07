; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_run-tests.c_maybe_run_test.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_run-tests.c_maybe_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"--list\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ipc_helper_listen_before_write\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ipc_helper_listen_after_write\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ipc_helper_heavy_traffic_deadlock_bug\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ipc_send_recv_helper\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ipc_helper_tcp_connection\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ipc_helper_closed_handle\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ipc_helper_bind_twice\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ipc_helper_send_zero\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"stdio_over_pipes_helper\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"spawn_helper1\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"spawn_helper2\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"hello world\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"spawn_tcp_server_helper\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"spawn_helper3\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"spawn_helper4\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"spawn_helper5\00", align 1
@__const.maybe_run_test.out = private unnamed_addr constant [15 x i8] c"fourth stdio!\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"spawn_helper6\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"hello errworld\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"spawn_helper7\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"ENV_TEST\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"spawn_helper8\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"spawn_helper9\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"spawn_helper_setuid_setgid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @maybe_run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_run_test(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [15 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @print_tests(i32 %21)
  store i32 0, i32* %3, align 4
  br label %275

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @ipc_helper(i32 0)
  store i32 %30, i32* %3, align 4
  br label %275

31:                                               ; preds = %23
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @ipc_helper(i32 1)
  store i32 %38, i32* %3, align 4
  br label %275

39:                                               ; preds = %31
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (...) @ipc_helper_heavy_traffic_deadlock_bug()
  store i32 %46, i32* %3, align 4
  br label %275

47:                                               ; preds = %39
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 (...) @ipc_send_recv_helper()
  store i32 %54, i32* %3, align 4
  br label %275

55:                                               ; preds = %47
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 (...) @ipc_helper_tcp_connection()
  store i32 %62, i32* %3, align 4
  br label %275

63:                                               ; preds = %55
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (...) @ipc_helper_closed_handle()
  store i32 %70, i32* %3, align 4
  br label %275

71:                                               ; preds = %63
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 (...) @ipc_helper_bind_twice()
  store i32 %78, i32* %3, align 4
  br label %275

79:                                               ; preds = %71
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 (...) @ipc_helper_send_zero()
  store i32 %86, i32* %3, align 4
  br label %275

87:                                               ; preds = %79
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 (...) @stdio_over_pipes_helper()
  store i32 %94, i32* %3, align 4
  br label %275

95:                                               ; preds = %87
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = call i32 (...) @notify_parent_process()
  store i32 1, i32* %3, align 4
  br label %275

103:                                              ; preds = %95
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = call i32 (...) @notify_parent_process()
  %111 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %275

112:                                              ; preds = %103
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = call i32 (...) @notify_parent_process()
  %120 = call i32 (...) @spawn_tcp_server_helper()
  store i32 %120, i32* %3, align 4
  br label %275

121:                                              ; preds = %112
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = call i32 (...) @notify_parent_process()
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %131 = load i32, i32* @stdin, align 4
  %132 = call i8* @fgets(i8* %130, i32 255, i32 %131)
  %133 = icmp eq i8* %129, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @ASSERT(i32 %134)
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255
  store i8 0, i8* %136, align 1
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %138 = load i32, i32* @stdout, align 4
  %139 = call i32 @fputs(i8* %137, i32 %138)
  store i32 1, i32* %3, align 4
  br label %275

140:                                              ; preds = %121
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = call i32 (...) @notify_parent_process()
  br label %148

148:                                              ; preds = %146, %148
  %149 = call i32 @uv_sleep(i32 10000)
  br label %148

150:                                              ; preds = %140
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %150
  %157 = bitcast [15 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %157, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.maybe_run_test.out, i32 0, i32 0), i64 15, i1 false)
  %158 = call i32 (...) @notify_parent_process()
  br label %159

159:                                              ; preds = %169, %156
  %160 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %161 = call i32 @write(i32 3, i8* %160, i32 14)
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i64, i64* @errno, align 8
  %167 = load i64, i64* @EINTR, align 8
  %168 = icmp eq i64 %166, %167
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i1 [ false, %162 ], [ %168, %165 ]
  br i1 %170, label %159, label %171

171:                                              ; preds = %169
  %172 = call i32 @fsync(i32 3)
  store i32 1, i32* %3, align 4
  br label %275

173:                                              ; preds = %150
  %174 = load i8**, i8*** %5, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %173
  %180 = call i32 (...) @notify_parent_process()
  %181 = load i32, i32* @stdout, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp sgt i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @ASSERT(i32 %185)
  %187 = load i32, i32* @stderr, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp sgt i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @ASSERT(i32 %191)
  store i32 1, i32* %3, align 4
  br label %275

193:                                              ; preds = %173
  %194 = load i8**, i8*** %5, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 1
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %193
  %200 = call i32 (...) @notify_parent_process()
  %201 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  store i8* %201, i8** %11, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = icmp ne i8* %202, null
  %204 = zext i1 %203 to i32
  %205 = call i32 @ASSERT(i32 %204)
  %206 = load i32, i32* @stdout, align 4
  %207 = load i8*, i8** %11, align 8
  %208 = call i32 (i32, i8*, ...) @fprintf(i32 %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp sgt i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @ASSERT(i32 %211)
  store i32 1, i32* %3, align 4
  br label %275

213:                                              ; preds = %193
  %214 = load i8**, i8*** %5, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i64 @strcmp(i8* %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %213
  %220 = call i32 (...) @notify_parent_process()
  %221 = call i32 @read(i32 0, i32* %12, i32 4)
  %222 = sext i32 %221 to i64
  %223 = icmp eq i64 4, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 @ASSERT(i32 %224)
  %226 = load i32, i32* %12, align 4
  %227 = icmp sgt i32 %226, 2
  %228 = zext i1 %227 to i32
  %229 = call i32 @ASSERT(i32 %228)
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @write(i32 %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 1)
  %232 = icmp eq i32 -1, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @ASSERT(i32 %233)
  store i32 1, i32* %3, align 4
  br label %275

235:                                              ; preds = %213
  %236 = load i8**, i8*** %5, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i64 @strcmp(i8* %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = call i32 (...) @notify_parent_process()
  %243 = call i32 (...) @spawn_stdin_stdout()
  store i32 1, i32* %3, align 4
  br label %275

244:                                              ; preds = %235
  %245 = load i8**, i8*** %5, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 1
  %247 = load i8*, i8** %246, align 8
  %248 = call i64 @strcmp(i8* %247, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %244
  %251 = load i8**, i8*** %5, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 2
  %253 = load i8*, i8** %252, align 8
  %254 = call i64 @atoi(i8* %253)
  store i64 %254, i64* %13, align 8
  %255 = load i8**, i8*** %5, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 3
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @atoi(i8* %257)
  store i64 %258, i64* %14, align 8
  %259 = load i64, i64* %13, align 8
  %260 = call i64 (...) @getuid()
  %261 = icmp eq i64 %259, %260
  %262 = zext i1 %261 to i32
  %263 = call i32 @ASSERT(i32 %262)
  %264 = load i64, i64* %14, align 8
  %265 = call i64 (...) @getgid()
  %266 = icmp eq i64 %264, %265
  %267 = zext i1 %266 to i32
  %268 = call i32 @ASSERT(i32 %267)
  %269 = call i32 (...) @notify_parent_process()
  store i32 1, i32* %3, align 4
  br label %275

270:                                              ; preds = %244
  %271 = load i8**, i8*** %5, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 1
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @run_test(i8* %273, i32 0, i32 1)
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %270, %250, %241, %219, %199, %179, %171, %127, %118, %109, %101, %93, %85, %77, %69, %61, %53, %45, %37, %29, %20
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_tests(i32) #1

declare dso_local i32 @ipc_helper(i32) #1

declare dso_local i32 @ipc_helper_heavy_traffic_deadlock_bug(...) #1

declare dso_local i32 @ipc_send_recv_helper(...) #1

declare dso_local i32 @ipc_helper_tcp_connection(...) #1

declare dso_local i32 @ipc_helper_closed_handle(...) #1

declare dso_local i32 @ipc_helper_bind_twice(...) #1

declare dso_local i32 @ipc_helper_send_zero(...) #1

declare dso_local i32 @stdio_over_pipes_helper(...) #1

declare dso_local i32 @notify_parent_process(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @spawn_tcp_server_helper(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @uv_sleep(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @spawn_stdin_stdout(...) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @getgid(...) #1

declare dso_local i32 @run_test(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
