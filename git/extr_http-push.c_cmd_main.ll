; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i32, i8*, i8*, i64, i64, i8* }
%struct.ref = type { i8*, i32, i32, %struct.TYPE_7__*, i32, %struct.ref* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.argv_array = type { i32, i32 }
%struct.transfer_request = type { %struct.transfer_request* }
%struct.remote_lock = type { i32 }
%struct.rev_info = type { i64 }

@REFSPEC_INIT_PUSH = common dso_local global %struct.refspec zeroinitializer, align 8
@repo = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@MATCH_REFS_ALL = common dso_local global i32 0, align 4
@push_all = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@force_all = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"--dry-run\00", align 1
@dry_run = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"--helper-status\00", align 1
@helper_status = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@push_verbosely = common dso_local global i32 0, align 4
@http_is_verbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@http_push_usage = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.9 = private unnamed_addr constant [90 x i8] c"git-push is not available for http/https repository when not compiled with USE_CURL_MULTI\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"You must specify only one branch name when deleting a remote branch\00", align 1
@remote_dir_exists = common dso_local global i32 0, align 4
@remove_locks_on_signal = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"info/refs\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"objects/info/packs\00", align 1
@LOCK_TIME = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"cannot lock existing info/refs\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"Fetching remote heads...\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Unable to delete remote branch %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"error %s cannot remove\0A\00", align 1
@remote_refs = common dso_local global %struct.ref* null, align 8
@.str.17 = private unnamed_addr constant [54 x i8] c"No refs in common and none specified; doing nothing.\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"error null no match\0A\00", align 1
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str.19 = private unnamed_addr constant [20 x i8] c"Could not remove %s\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ok %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"'%s': up-to-date\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"ok %s up to date\0A\00", align 1
@.str.23 = private unnamed_addr constant [99 x i8] c"remote '%s' is not an ancestor of\0Alocal '%s'.\0AMaybe you are not up-to-date and need to pull first?\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"error %s non-fast forward\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"updating '%s'\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" using '%s'\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"\0A  from %s\0A  to   %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Unable to lock remote branch %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"error %s lock error\0A\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"--objects\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"^%s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@pushing = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"    sending %d objects\0A\00", align 1
@aborted = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [10 x i8] c"    done\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"Updating remote server info\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Unable to update server info\0A\00", align 1
@request_queue_head = common dso_local global %struct.transfer_request* null, align 8
@is_running_queue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.transfer_request*, align 8
  %6 = alloca %struct.transfer_request*, align 8
  %7 = alloca %struct.refspec, align 8
  %8 = alloca %struct.remote_lock*, align 8
  %9 = alloca %struct.remote_lock*, align 8
  %10 = alloca %struct.rev_info, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ref*, align 8
  %18 = alloca %struct.ref*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.argv_array, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %23 = bitcast %struct.refspec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.refspec* @REFSPEC_INIT_PUSH to i8*), i64 16, i1 false)
  store %struct.remote_lock* null, %struct.remote_lock** %8, align 8
  store %struct.remote_lock* null, %struct.remote_lock** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %24 = call %struct.TYPE_8__* @xcalloc(i32 1, i32 48)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** @repo, align 8
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %4, align 8
  store i32 1, i32* %15, align 4
  br label %27

27:                                               ; preds = %127, %2
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %132

31:                                               ; preds = %27
  %32 = load i8**, i8*** %4, align 8
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %19, align 8
  %34 = load i8*, i8** %19, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %82

38:                                               ; preds = %31
  %39 = load i8*, i8** %19, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @MATCH_REFS_ALL, align 4
  store i32 %43, i32* @push_all, align 4
  br label %127

44:                                               ; preds = %38
  %45 = load i8*, i8** %19, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 1, i32* @force_all, align 4
  br label %127

49:                                               ; preds = %44
  %50 = load i8*, i8** %19, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 1, i32* @dry_run, align 4
  br label %127

54:                                               ; preds = %49
  %55 = load i8*, i8** %19, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 1, i32* @helper_status, align 4
  br label %127

59:                                               ; preds = %54
  %60 = load i8*, i8** %19, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 1, i32* @push_verbosely, align 4
  store i32 1, i32* @http_is_verbose, align 4
  br label %127

64:                                               ; preds = %59
  %65 = load i8*, i8** %19, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 1, i32* %11, align 4
  br label %127

69:                                               ; preds = %64
  %70 = load i8*, i8** %19, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %127

74:                                               ; preds = %69
  %75 = load i8*, i8** %19, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @http_push_usage, align 4
  %80 = call i32 @usage(i32 %79)
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %31
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %19, align 8
  %89 = call i8* @strstr(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i8* %89, i8** %20, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = call i32 @str_end_url_with_slash(i8* %90, i64* %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @strlen(i64 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %20, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %120

102:                                              ; preds = %87
  %103 = load i8*, i8** %20, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = call i64 @strchr(i8* %104, i8 signext 47)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @strlen(i64 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %112, %102
  br label %120

120:                                              ; preds = %119, %87
  br label %127

121:                                              ; preds = %82
  %122 = load i8**, i8*** %4, align 8
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* %15, align 4
  %125 = sub nsw i32 %123, %124
  %126 = call i32 @refspec_appendn(%struct.refspec* %7, i8** %122, i32 %125)
  br label %132

127:                                              ; preds = %120, %73, %68, %63, %58, %53, %48, %42
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  %130 = load i8**, i8*** %4, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i32 1
  store i8** %131, i8*** %4, align 8
  br label %27

132:                                              ; preds = %121, %27
  %133 = call i32 @die(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.9, i64 0, i64 0))
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = load i32, i32* @http_push_usage, align 4
  %140 = call i32 @usage(i32 %139)
  br label %141

141:                                              ; preds = %138, %132
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.refspec, %struct.refspec* %7, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = call i32 @die(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %144, %141
  %151 = call i32 (...) @setup_git_directory()
  %152 = load i32, i32* @remote_dir_exists, align 4
  %153 = call i32 @memset(i32 %152, i32 -1, i32 256)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @http_init(i32* null, i64 %156, i32 1)
  %158 = call i32 (...) @locking_available()
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %150
  store i32 1, i32* %14, align 4
  br label %553

161:                                              ; preds = %150
  %162 = load i32, i32* @remove_locks_on_signal, align 4
  %163 = call i32 @sigchain_push_common(i32 %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = call i8* @remote_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = call i8* @remote_exists(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %161
  %177 = load i32, i32* @LOCK_TIME, align 4
  %178 = call %struct.remote_lock* @lock_remote(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %177)
  store %struct.remote_lock* %178, %struct.remote_lock** %9, align 8
  %179 = load %struct.remote_lock*, %struct.remote_lock** %9, align 8
  %180 = icmp ne %struct.remote_lock* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i32 1, i32* %183, align 8
  br label %186

184:                                              ; preds = %176
  %185 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %553

186:                                              ; preds = %181
  br label %187

187:                                              ; preds = %186, %161
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = call i32 (...) @fetch_indices()
  br label %194

194:                                              ; preds = %192, %187
  %195 = call %struct.ref* (...) @get_local_heads()
  store %struct.ref* %195, %struct.ref** %18, align 8
  %196 = load i32, i32* @stderr, align 4
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %198 = call i32 (...) @get_dav_remote_heads()
  %199 = call i32 (...) @run_request_queue()
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %225

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.refspec, %struct.refspec* %7, i32 0, i32 1
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** %21, align 8
  %210 = load i8*, i8** %21, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @delete_remote_branch(i8* %210, i32 %211)
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %224

214:                                              ; preds = %202
  %215 = load i32, i32* @stderr, align 4
  %216 = load i8*, i8** %21, align 8
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %215, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* %216)
  %218 = load i32, i32* @helper_status, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = load i8*, i8** %21, align 8
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %221)
  br label %223

223:                                              ; preds = %220, %214
  br label %224

224:                                              ; preds = %223, %202
  br label %553

225:                                              ; preds = %194
  %226 = load %struct.ref*, %struct.ref** %18, align 8
  %227 = load i32, i32* @push_all, align 4
  %228 = call i64 @match_push_refs(%struct.ref* %226, %struct.ref** @remote_refs, %struct.refspec* %7, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  store i32 -1, i32* %14, align 4
  br label %553

231:                                              ; preds = %225
  %232 = load %struct.ref*, %struct.ref** @remote_refs, align 8
  %233 = icmp ne %struct.ref* %232, null
  br i1 %233, label %242, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* @stderr, align 4
  %236 = call i32 (i32, i8*, ...) @fprintf(i32 %235, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0))
  %237 = load i32, i32* @helper_status, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %234
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  br label %241

241:                                              ; preds = %239, %234
  store i32 0, i32* %14, align 4
  br label %553

242:                                              ; preds = %231
  store i32 0, i32* %16, align 4
  %243 = load %struct.ref*, %struct.ref** @remote_refs, align 8
  store %struct.ref* %243, %struct.ref** %17, align 8
  br label %244

244:                                              ; preds = %519, %242
  %245 = load %struct.ref*, %struct.ref** %17, align 8
  %246 = icmp ne %struct.ref* %245, null
  br i1 %246, label %247, label %523

247:                                              ; preds = %244
  %248 = bitcast %struct.argv_array* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %248, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %249 = load %struct.ref*, %struct.ref** %17, align 8
  %250 = getelementptr inbounds %struct.ref, %struct.ref* %249, i32 0, i32 3
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = icmp ne %struct.TYPE_7__* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %247
  br label %519

254:                                              ; preds = %247
  %255 = load %struct.ref*, %struct.ref** %17, align 8
  %256 = getelementptr inbounds %struct.ref, %struct.ref* %255, i32 0, i32 3
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = call i64 @is_null_oid(i32* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %292

261:                                              ; preds = %254
  %262 = load %struct.ref*, %struct.ref** %17, align 8
  %263 = getelementptr inbounds %struct.ref, %struct.ref* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @delete_remote_branch(i8* %264, i32 1)
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %280

267:                                              ; preds = %261
  %268 = load %struct.ref*, %struct.ref** %17, align 8
  %269 = getelementptr inbounds %struct.ref, %struct.ref* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* %270)
  %272 = load i32, i32* @helper_status, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %267
  %275 = load %struct.ref*, %struct.ref** %17, align 8
  %276 = getelementptr inbounds %struct.ref, %struct.ref* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %277)
  br label %279

279:                                              ; preds = %274, %267
  store i32 -4, i32* %14, align 4
  br label %289

280:                                              ; preds = %261
  %281 = load i32, i32* @helper_status, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %280
  %284 = load %struct.ref*, %struct.ref** %17, align 8
  %285 = getelementptr inbounds %struct.ref, %struct.ref* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %286)
  br label %288

288:                                              ; preds = %283, %280
  br label %289

289:                                              ; preds = %288, %279
  %290 = load i32, i32* %16, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %16, align 4
  br label %519

292:                                              ; preds = %254
  %293 = load %struct.ref*, %struct.ref** %17, align 8
  %294 = getelementptr inbounds %struct.ref, %struct.ref* %293, i32 0, i32 2
  %295 = load %struct.ref*, %struct.ref** %17, align 8
  %296 = getelementptr inbounds %struct.ref, %struct.ref* %295, i32 0, i32 3
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 1
  %299 = call i64 @oideq(i32* %294, i32* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %319

301:                                              ; preds = %292
  %302 = load i32, i32* @push_verbosely, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %301
  %305 = load i32, i32* @stderr, align 4
  %306 = load %struct.ref*, %struct.ref** %17, align 8
  %307 = getelementptr inbounds %struct.ref, %struct.ref* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = call i32 (i32, i8*, ...) @fprintf(i32 %305, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* %308)
  br label %310

310:                                              ; preds = %304, %301
  %311 = load i32, i32* @helper_status, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  %314 = load %struct.ref*, %struct.ref** %17, align 8
  %315 = getelementptr inbounds %struct.ref, %struct.ref* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8* %316)
  br label %318

318:                                              ; preds = %313, %310
  br label %519

319:                                              ; preds = %292
  %320 = load i32, i32* @force_all, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %365, label %322

322:                                              ; preds = %319
  %323 = load %struct.ref*, %struct.ref** %17, align 8
  %324 = getelementptr inbounds %struct.ref, %struct.ref* %323, i32 0, i32 2
  %325 = call i64 @is_null_oid(i32* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %365, label %327

327:                                              ; preds = %322
  %328 = load %struct.ref*, %struct.ref** %17, align 8
  %329 = getelementptr inbounds %struct.ref, %struct.ref* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %365, label %332

332:                                              ; preds = %327
  %333 = load %struct.ref*, %struct.ref** %17, align 8
  %334 = getelementptr inbounds %struct.ref, %struct.ref* %333, i32 0, i32 2
  %335 = call i32 @has_object_file(i32* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %346

337:                                              ; preds = %332
  %338 = load %struct.ref*, %struct.ref** %17, align 8
  %339 = getelementptr inbounds %struct.ref, %struct.ref* %338, i32 0, i32 3
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 1
  %342 = load %struct.ref*, %struct.ref** %17, align 8
  %343 = getelementptr inbounds %struct.ref, %struct.ref* %342, i32 0, i32 2
  %344 = call i32 @ref_newer(i32* %341, i32* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %364, label %346

346:                                              ; preds = %337, %332
  %347 = load %struct.ref*, %struct.ref** %17, align 8
  %348 = getelementptr inbounds %struct.ref, %struct.ref* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = load %struct.ref*, %struct.ref** %17, align 8
  %351 = getelementptr inbounds %struct.ref, %struct.ref* %350, i32 0, i32 3
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 0
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.23, i64 0, i64 0), i8* %349, i8* %354)
  %356 = load i32, i32* @helper_status, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %346
  %359 = load %struct.ref*, %struct.ref** %17, align 8
  %360 = getelementptr inbounds %struct.ref, %struct.ref* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i8* %361)
  br label %363

363:                                              ; preds = %358, %346
  store i32 -2, i32* %14, align 4
  br label %519

364:                                              ; preds = %337
  br label %365

365:                                              ; preds = %364, %327, %322, %319
  %366 = load %struct.ref*, %struct.ref** %17, align 8
  %367 = getelementptr inbounds %struct.ref, %struct.ref* %366, i32 0, i32 1
  %368 = load %struct.ref*, %struct.ref** %17, align 8
  %369 = getelementptr inbounds %struct.ref, %struct.ref* %368, i32 0, i32 3
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 1
  %372 = call i32 @oidcpy(i32* %367, i32* %371)
  %373 = load i32, i32* %16, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %16, align 4
  %375 = load i32, i32* @stderr, align 4
  %376 = load %struct.ref*, %struct.ref** %17, align 8
  %377 = getelementptr inbounds %struct.ref, %struct.ref* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = call i32 (i32, i8*, ...) @fprintf(i32 %375, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %378)
  %380 = load %struct.ref*, %struct.ref** %17, align 8
  %381 = getelementptr inbounds %struct.ref, %struct.ref* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = load %struct.ref*, %struct.ref** %17, align 8
  %384 = getelementptr inbounds %struct.ref, %struct.ref* %383, i32 0, i32 3
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 0
  %387 = load i8*, i8** %386, align 8
  %388 = call i64 @strcmp(i8* %382, i8* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %398

390:                                              ; preds = %365
  %391 = load i32, i32* @stderr, align 4
  %392 = load %struct.ref*, %struct.ref** %17, align 8
  %393 = getelementptr inbounds %struct.ref, %struct.ref* %392, i32 0, i32 3
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i8*, i8** %395, align 8
  %397 = call i32 (i32, i8*, ...) @fprintf(i32 %391, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* %396)
  br label %398

398:                                              ; preds = %390, %365
  %399 = load i32, i32* @stderr, align 4
  %400 = load %struct.ref*, %struct.ref** %17, align 8
  %401 = getelementptr inbounds %struct.ref, %struct.ref* %400, i32 0, i32 2
  %402 = call i8* @oid_to_hex(i32* %401)
  %403 = load %struct.ref*, %struct.ref** %17, align 8
  %404 = getelementptr inbounds %struct.ref, %struct.ref* %403, i32 0, i32 1
  %405 = call i8* @oid_to_hex(i32* %404)
  %406 = call i32 (i32, i8*, ...) @fprintf(i32 %399, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* %402, i8* %405)
  %407 = load i32, i32* @dry_run, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %398
  %410 = load i32, i32* @helper_status, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %409
  %413 = load %struct.ref*, %struct.ref** %17, align 8
  %414 = getelementptr inbounds %struct.ref, %struct.ref* %413, i32 0, i32 0
  %415 = load i8*, i8** %414, align 8
  %416 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %415)
  br label %417

417:                                              ; preds = %412, %409
  br label %519

418:                                              ; preds = %398
  %419 = load %struct.ref*, %struct.ref** %17, align 8
  %420 = getelementptr inbounds %struct.ref, %struct.ref* %419, i32 0, i32 0
  %421 = load i8*, i8** %420, align 8
  %422 = load i32, i32* @LOCK_TIME, align 4
  %423 = call %struct.remote_lock* @lock_remote(i8* %421, i32 %422)
  store %struct.remote_lock* %423, %struct.remote_lock** %8, align 8
  %424 = load %struct.remote_lock*, %struct.remote_lock** %8, align 8
  %425 = icmp eq %struct.remote_lock* %424, null
  br i1 %425, label %426, label %440

426:                                              ; preds = %418
  %427 = load i32, i32* @stderr, align 4
  %428 = load %struct.ref*, %struct.ref** %17, align 8
  %429 = getelementptr inbounds %struct.ref, %struct.ref* %428, i32 0, i32 0
  %430 = load i8*, i8** %429, align 8
  %431 = call i32 (i32, i8*, ...) @fprintf(i32 %427, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i8* %430)
  %432 = load i32, i32* @helper_status, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %426
  %435 = load %struct.ref*, %struct.ref** %17, align 8
  %436 = getelementptr inbounds %struct.ref, %struct.ref* %435, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i8* %437)
  br label %439

439:                                              ; preds = %434, %426
  store i32 1, i32* %14, align 4
  br label %519

440:                                              ; preds = %418
  %441 = call i32 @argv_array_push(%struct.argv_array* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0))
  %442 = call i32 @argv_array_push(%struct.argv_array* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  %443 = load %struct.ref*, %struct.ref** %17, align 8
  %444 = getelementptr inbounds %struct.ref, %struct.ref* %443, i32 0, i32 1
  %445 = call i8* @oid_to_hex(i32* %444)
  %446 = call i32 @argv_array_push(%struct.argv_array* %22, i8* %445)
  %447 = load i32, i32* @push_all, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %459, label %449

449:                                              ; preds = %440
  %450 = load %struct.ref*, %struct.ref** %17, align 8
  %451 = getelementptr inbounds %struct.ref, %struct.ref* %450, i32 0, i32 2
  %452 = call i64 @is_null_oid(i32* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %459, label %454

454:                                              ; preds = %449
  %455 = load %struct.ref*, %struct.ref** %17, align 8
  %456 = getelementptr inbounds %struct.ref, %struct.ref* %455, i32 0, i32 2
  %457 = call i8* @oid_to_hex(i32* %456)
  %458 = call i32 @argv_array_pushf(%struct.argv_array* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %457)
  br label %459

459:                                              ; preds = %454, %449, %440
  %460 = load i32, i32* @the_repository, align 4
  %461 = call i32 (...) @setup_git_directory()
  %462 = call i32 @repo_init_revisions(i32 %460, %struct.rev_info* %10, i32 %461)
  %463 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %22, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %22, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @setup_revisions(i32 %464, i32 %466, %struct.rev_info* %10, i32* null)
  %468 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  store i64 0, i64* %468, align 8
  store i32 0, i32* @pushing, align 4
  %469 = call i64 @prepare_revision_walk(%struct.rev_info* %10)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %459
  %472 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0))
  br label %473

473:                                              ; preds = %471, %459
  %474 = call i32 @mark_edges_uninteresting(%struct.rev_info* %10, i32* null, i32 0)
  %475 = load %struct.remote_lock*, %struct.remote_lock** %8, align 8
  %476 = call i32 @get_delta(%struct.rev_info* %10, %struct.remote_lock* %475)
  store i32 %476, i32* %13, align 4
  %477 = call i32 (...) @finish_all_active_slots()
  store i32 1, i32* @pushing, align 4
  %478 = load i32, i32* %13, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %473
  %481 = load i32, i32* @stderr, align 4
  %482 = load i32, i32* %13, align 4
  %483 = call i32 (i32, i8*, ...) @fprintf(i32 %481, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0), i32 %482)
  br label %484

484:                                              ; preds = %480, %473
  %485 = call i32 (...) @run_request_queue()
  %486 = load i64, i64* @aborted, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %484
  %489 = load %struct.ref*, %struct.ref** %17, align 8
  %490 = getelementptr inbounds %struct.ref, %struct.ref* %489, i32 0, i32 1
  %491 = load %struct.remote_lock*, %struct.remote_lock** %8, align 8
  %492 = call i32 @update_remote(i32* %490, %struct.remote_lock* %491)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %495, label %494

494:                                              ; preds = %488, %484
  store i32 1, i32* %14, align 4
  br label %495

495:                                              ; preds = %494, %488
  %496 = load i32, i32* %14, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %501, label %498

498:                                              ; preds = %495
  %499 = load i32, i32* @stderr, align 4
  %500 = call i32 (i32, i8*, ...) @fprintf(i32 %499, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0))
  br label %501

501:                                              ; preds = %498, %495
  %502 = load i32, i32* @helper_status, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %514

504:                                              ; preds = %501
  %505 = load i32, i32* %14, align 4
  %506 = icmp ne i32 %505, 0
  %507 = xor i1 %506, true
  %508 = zext i1 %507 to i64
  %509 = select i1 %507, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)
  %510 = load %struct.ref*, %struct.ref** %17, align 8
  %511 = getelementptr inbounds %struct.ref, %struct.ref* %510, i32 0, i32 0
  %512 = load i8*, i8** %511, align 8
  %513 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* %509, i8* %512)
  br label %514

514:                                              ; preds = %504, %501
  %515 = load %struct.remote_lock*, %struct.remote_lock** %8, align 8
  %516 = call i32 @unlock_remote(%struct.remote_lock* %515)
  %517 = call i32 (...) @check_locks()
  %518 = call i32 @argv_array_clear(%struct.argv_array* %22)
  br label %519

519:                                              ; preds = %514, %439, %417, %363, %318, %289, %253
  %520 = load %struct.ref*, %struct.ref** %17, align 8
  %521 = getelementptr inbounds %struct.ref, %struct.ref* %520, i32 0, i32 5
  %522 = load %struct.ref*, %struct.ref** %521, align 8
  store %struct.ref* %522, %struct.ref** %17, align 8
  br label %244

523:                                              ; preds = %244
  %524 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %524, i32 0, i32 1
  %526 = load i8*, i8** %525, align 8
  %527 = icmp ne i8* %526, null
  br i1 %527, label %528, label %552

528:                                              ; preds = %523
  %529 = load i32, i32* %16, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %552

531:                                              ; preds = %528
  %532 = load %struct.remote_lock*, %struct.remote_lock** %9, align 8
  %533 = icmp ne %struct.remote_lock* %532, null
  br i1 %533, label %534, label %548

534:                                              ; preds = %531
  %535 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %536 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %548

539:                                              ; preds = %534
  %540 = load i32, i32* @stderr, align 4
  %541 = call i32 (i32, i8*, ...) @fprintf(i32 %540, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0))
  %542 = load i32, i32* @dry_run, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %547, label %544

544:                                              ; preds = %539
  %545 = load %struct.remote_lock*, %struct.remote_lock** %9, align 8
  %546 = call i32 @update_remote_info_refs(%struct.remote_lock* %545)
  br label %547

547:                                              ; preds = %544, %539
  br label %551

548:                                              ; preds = %534, %531
  %549 = load i32, i32* @stderr, align 4
  %550 = call i32 (i32, i8*, ...) @fprintf(i32 %549, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0))
  br label %551

551:                                              ; preds = %548, %547
  br label %552

552:                                              ; preds = %551, %528, %523
  br label %553

553:                                              ; preds = %552, %241, %230, %224, %184, %160
  %554 = load %struct.remote_lock*, %struct.remote_lock** %9, align 8
  %555 = icmp ne %struct.remote_lock* %554, null
  br i1 %555, label %556, label %559

556:                                              ; preds = %553
  %557 = load %struct.remote_lock*, %struct.remote_lock** %9, align 8
  %558 = call i32 @unlock_remote(%struct.remote_lock* %557)
  br label %559

559:                                              ; preds = %556, %553
  %560 = load %struct.TYPE_8__*, %struct.TYPE_8__** @repo, align 8
  %561 = call i32 @free(%struct.TYPE_8__* %560)
  %562 = call i32 (...) @http_cleanup()
  %563 = load %struct.transfer_request*, %struct.transfer_request** @request_queue_head, align 8
  store %struct.transfer_request* %563, %struct.transfer_request** %5, align 8
  br label %564

564:                                              ; preds = %567, %559
  %565 = load %struct.transfer_request*, %struct.transfer_request** %5, align 8
  %566 = icmp ne %struct.transfer_request* %565, null
  br i1 %566, label %567, label %574

567:                                              ; preds = %564
  %568 = load %struct.transfer_request*, %struct.transfer_request** %5, align 8
  %569 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %568, i32 0, i32 0
  %570 = load %struct.transfer_request*, %struct.transfer_request** %569, align 8
  store %struct.transfer_request* %570, %struct.transfer_request** %6, align 8
  %571 = load %struct.transfer_request*, %struct.transfer_request** %5, align 8
  %572 = call i32 @release_request(%struct.transfer_request* %571)
  %573 = load %struct.transfer_request*, %struct.transfer_request** %6, align 8
  store %struct.transfer_request* %573, %struct.transfer_request** %5, align 8
  br label %564

574:                                              ; preds = %564
  %575 = load i32, i32* %14, align 4
  ret i32 %575
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_8__* @xcalloc(i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @str_end_url_with_slash(i8*, i64*) #2

declare dso_local i8* @strlen(i64) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @refspec_appendn(%struct.refspec*, i8**, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @setup_git_directory(...) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @http_init(i32*, i64, i32) #2

declare dso_local i32 @locking_available(...) #2

declare dso_local i32 @sigchain_push_common(i32) #2

declare dso_local i8* @remote_exists(i8*) #2

declare dso_local %struct.remote_lock* @lock_remote(i8*, i32) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32 @fetch_indices(...) #2

declare dso_local %struct.ref* @get_local_heads(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @get_dav_remote_heads(...) #2

declare dso_local i32 @run_request_queue(...) #2

declare dso_local i32 @delete_remote_branch(i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @match_push_refs(%struct.ref*, %struct.ref**, %struct.refspec*, i32) #2

declare dso_local i64 @is_null_oid(i32*) #2

declare dso_local i64 @oideq(i32*, i32*) #2

declare dso_local i32 @has_object_file(i32*) #2

declare dso_local i32 @ref_newer(i32*, i32*) #2

declare dso_local i32 @oidcpy(i32*, i32*) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i8*) #2

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32) #2

declare dso_local i32 @setup_revisions(i32, i32, %struct.rev_info*, i32*) #2

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #2

declare dso_local i32 @mark_edges_uninteresting(%struct.rev_info*, i32*, i32) #2

declare dso_local i32 @get_delta(%struct.rev_info*, %struct.remote_lock*) #2

declare dso_local i32 @finish_all_active_slots(...) #2

declare dso_local i32 @update_remote(i32*, %struct.remote_lock*) #2

declare dso_local i32 @unlock_remote(%struct.remote_lock*) #2

declare dso_local i32 @check_locks(...) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i32 @update_remote_info_refs(%struct.remote_lock*) #2

declare dso_local i32 @free(%struct.TYPE_8__*) #2

declare dso_local i32 @http_cleanup(...) #2

declare dso_local i32 @release_request(%struct.transfer_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
