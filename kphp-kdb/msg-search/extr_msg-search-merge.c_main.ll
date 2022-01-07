; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"hvu:c:a:i:\00", align 1
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@binlog_suffix = common dso_local global i8* null, align 8
@metaindex_suffix = common dso_local global i8* null, align 8
@cutoff_seconds = common dso_local global i32 0, align 4
@DEFAULT_CUTOFF_SECONDS = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@old_logname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@binlogname = common dso_local global i8* null, align 8
@fsize = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"new huge index file %s already exists and is not empty\0A\00", align 1
@fnames = common dso_local global i8** null, align 8
@new_logname = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"new binlog file %s already exists and is not empty\0A\00", align 1
@new_metaindexname = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"new metaindex file %s already exists and is not empty\0A\00", align 1
@now = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4
@fd = common dso_local global i64* null, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"replaying binlog file %s (size %lld), cutoff time=%d\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@binlog_load_time = common dso_local global i64 0, align 8
@log_pos = common dso_local global i64 0, align 8
@binlog_loaded_size = common dso_local global i64 0, align 8
@log_cutoff_pos = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [93 x i8] c"replay binlog file: done, pos=%lld, cutoff_pos=%lld, alloc_mem=%ld out of %ld, time %.06lfs\0A\00", align 1
@dyn_cur = common dso_local global i64 0, align 8
@dyn_first = common dso_local global i64 0, align 8
@dyn_last = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [47 x i8] c"purged %d recently added and deleted messages\0A\00", align 1
@purged_msgs_cnt = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"scanning data file \22%s\22, size=%lld\0A\00", align 1
@User = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAX_USER_ID = common dso_local global i32 0, align 4
@UserMod = common dso_local global %struct.TYPE_5__* null, align 8
@.str.11 = private unnamed_addr constant [50 x i8] c"duplicate user id %d in file %s at position %lld\0A\00", align 1
@rpos = common dso_local global i64 0, align 8
@users_dropped = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"dropping messages of user %d (user_id out of bounds)\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"scanning new users...\0A\00", align 1
@MAIL_INDEX_BLOCK_MAGIC = common dso_local global i32 0, align 4
@PRIME = common dso_local global i32 0, align 4
@UserModHeaders = common dso_local global %struct.TYPE_5__** null, align 8
@Users = common dso_local global i32* null, align 8
@users_added = common dso_local global i32 0, align 4
@CurH = common dso_local global i64 0, align 8
@CurL = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"adding new user %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"ignoring messages of new user %d (user_id out of bounds)\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"file %s created, total size %lld\0A\00", align 1
@wpos = common dso_local global i64 0, align 8
@M_cnt = common dso_local global i32 0, align 4
@MetaP = common dso_local global i32** null, align 8
@MetaB = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [47 x i8] c"%d userlist entries (%ld bytes) written to %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@obuff = common dso_local global i32* null, align 8
@FILE_BUFFER_SIZE = common dso_local global i32 0, align 4
@log_wpos = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [70 x i8] c"%lld bytes copied from old binlog %s, position %lld to new binlog %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @progname, align 8
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %37 [
    i32 118, label %17
    i32 104, label %18
    i32 117, label %20
    i32 97, label %22
    i32 105, label %24
    i32 99, label %26
  ]

17:                                               ; preds = %15
  store i32 1, i32* @verbosity, align 4
  br label %37

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %453

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @username, align 8
  br label %37

22:                                               ; preds = %15
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @binlog_suffix, align 8
  br label %37

24:                                               ; preds = %15
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @metaindex_suffix, align 8
  br label %37

26:                                               ; preds = %15
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 @atoi(i8* %27)
  store i32 %28, i32* @cutoff_seconds, align 4
  %29 = load i32, i32* @cutoff_seconds, align 4
  %30 = icmp sgt i32 %29, 1000000
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @cutoff_seconds, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %26
  %35 = load i32, i32* @DEFAULT_CUTOFF_SECONDS, align 4
  store i32 %35, i32* @cutoff_seconds, align 4
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %15, %24, %22, %20, %17
  br label %10

38:                                               ; preds = %10
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @optind, align 4
  %41 = add nsw i32 %40, 2
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %453

45:                                               ; preds = %38
  %46 = load i8*, i8** @username, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i8*, i8** @username, align 8
  %50 = call i64 @change_user(i8* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** @username, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i8*, i8** @username, align 8
  br label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %58 ]
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %48, %45
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* @optind, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @open_file(i32 0, i8* %68, i32 0)
  %70 = load i8*, i8** @old_logname, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* @optind, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @binlog_suffix, align 8
  %77 = call i32 @snprintf(i8* %70, i32 254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %75, i8* %76)
  %78 = load i8*, i8** @old_logname, align 8
  store i8* %78, i8** @binlogname, align 8
  %79 = load i8*, i8** @old_logname, align 8
  %80 = call i32 @open_file(i32 1, i8* %79, i32 0)
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* @optind, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @open_file(i32 2, i8* %86, i32 1)
  %88 = load i32*, i32** @fsize, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %63
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8**, i8*** @fnames, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  store i32 1, i32* %3, align 4
  br label %453

98:                                               ; preds = %63
  %99 = load i8*, i8** @new_logname, align 8
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* @optind, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** @binlog_suffix, align 8
  %107 = call i32 @snprintf(i8* %99, i32 254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %105, i8* %106)
  %108 = load i8*, i8** @new_logname, align 8
  %109 = call i32 @open_file(i32 3, i8* %108, i32 1)
  %110 = load i32*, i32** @fsize, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %98
  %115 = load i32, i32* @stderr, align 4
  %116 = load i8**, i8*** @fnames, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  store i32 1, i32* %3, align 4
  br label %453

120:                                              ; preds = %98
  %121 = load i8*, i8** @new_metaindexname, align 8
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* @optind, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %122, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** @metaindex_suffix, align 8
  %129 = call i32 @snprintf(i8* %121, i32 254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %127, i8* %128)
  %130 = load i8*, i8** @new_metaindexname, align 8
  %131 = call i32 @open_file(i32 4, i8* %130, i32 1)
  %132 = load i32*, i32** @fsize, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %120
  %137 = load i32, i32* @stderr, align 4
  %138 = load i8**, i8*** @fnames, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 4
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  store i32 1, i32* %3, align 4
  br label %453

142:                                              ; preds = %120
  %143 = call i32 (...) @init_dyn_data()
  %144 = call i32 @time(i32 0)
  store i32 %144, i32* @now, align 4
  store i32 %144, i32* @start_time, align 4
  %145 = load i32*, i32** @fsize, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %207

149:                                              ; preds = %142
  %150 = load i64*, i64** @fd, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %207

154:                                              ; preds = %149
  %155 = load i32, i32* @verbosity, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load i32, i32* @stderr, align 4
  %159 = load i8*, i8** @binlogname, align 8
  %160 = load i32*, i32** @fsize, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @start_time, align 4
  %164 = load i32, i32* @cutoff_seconds, align 4
  %165 = sub nsw i32 %163, %164
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i8* %159, i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %157, %154
  %168 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %169 = call i64 @get_utime(i32 %168)
  store i64 %169, i64* @binlog_load_time, align 8
  %170 = call i32 (...) @clear_log()
  %171 = load i64*, i64** @fd, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 1
  %173 = load i64, i64* %172, align 8
  %174 = load i32*, i32** @fsize, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @set_log_data(i64 %173, i32 %176)
  %178 = load i32, i32* @start_time, align 4
  %179 = load i32, i32* @cutoff_seconds, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i32 @replay_log(i32 %180)
  %182 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %183 = call i64 @get_utime(i32 %182)
  %184 = load i64, i64* @binlog_load_time, align 8
  %185 = sub nsw i64 %183, %184
  store i64 %185, i64* @binlog_load_time, align 8
  %186 = load i64, i64* @log_pos, align 8
  store i64 %186, i64* @binlog_loaded_size, align 8
  %187 = load i64, i64* @log_cutoff_pos, align 8
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %167
  %190 = load i64, i64* @log_pos, align 8
  store i64 %190, i64* @log_cutoff_pos, align 8
  br label %191

191:                                              ; preds = %189, %167
  %192 = load i32, i32* @verbosity, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load i32, i32* @stderr, align 4
  %196 = load i64, i64* @log_pos, align 8
  %197 = load i64, i64* @log_cutoff_pos, align 8
  %198 = load i64, i64* @dyn_cur, align 8
  %199 = load i64, i64* @dyn_first, align 8
  %200 = sub nsw i64 %198, %199
  %201 = load i64, i64* @dyn_last, align 8
  %202 = load i64, i64* @dyn_first, align 8
  %203 = sub nsw i64 %201, %202
  %204 = load i64, i64* @binlog_load_time, align 8
  %205 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.8, i64 0, i64 0), i64 %196, i64 %197, i64 %200, i64 %203, i64 %204)
  br label %206

206:                                              ; preds = %194, %191
  br label %207

207:                                              ; preds = %206, %149, %142
  %208 = call i32 (...) @clear_log()
  %209 = call i32 (...) @dyn_purge_all_deleted_messages()
  %210 = load i32, i32* @verbosity, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %207
  %213 = load i32, i32* @stderr, align 4
  %214 = load i32, i32* @purged_msgs_cnt, align 4
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @stderr, align 4
  %217 = load i8**, i8*** @fnames, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 0
  %219 = load i8*, i8** %218, align 8
  %220 = load i32*, i32** @fsize, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %216, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %219, i32 %222)
  br label %224

224:                                              ; preds = %212, %207
  br label %225

225:                                              ; preds = %268, %224
  %226 = call i64 (...) @load_next_user()
  %227 = icmp sgt i64 %226, 0
  br i1 %227, label %228, label %269

228:                                              ; preds = %225
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %262

231:                                              ; preds = %228
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %233 = load i32, i32* @MAX_USER_ID, align 4
  %234 = icmp ult i32 %232, %233
  br i1 %234, label %235, label %262

235:                                              ; preds = %231
  %236 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %237 = call %struct.TYPE_5__* @dyn_user_header(i32 %236, i32 0)
  store %struct.TYPE_5__* %237, %struct.TYPE_5__** @UserMod, align 8
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UserMod, align 8
  %239 = icmp ne %struct.TYPE_5__* %238, null
  br i1 %239, label %240, label %253

240:                                              ; preds = %235
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UserMod, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, -239
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load i32, i32* @stderr, align 4
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %248 = load i8**, i8*** @fnames, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 0
  %250 = load i8*, i8** %249, align 8
  %251 = load i64, i64* @rpos, align 8
  %252 = call i32 (i32, i8*, ...) @fprintf(i32 %246, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %247, i8* %250, i64 %251)
  br label %261

253:                                              ; preds = %240, %235
  %254 = call i32 (...) @do_merge()
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UserMod, align 8
  %256 = icmp ne %struct.TYPE_5__* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UserMod, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  store i32 -239, i32* %259, align 4
  br label %260

260:                                              ; preds = %257, %253
  br label %261

261:                                              ; preds = %260, %245
  br label %268

262:                                              ; preds = %231, %228
  %263 = load i32, i32* @users_dropped, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* @users_dropped, align 4
  %265 = load i32, i32* @stderr, align 4
  %266 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %267 = call i32 (i32, i8*, ...) @fprintf(i32 %265, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %262, %261
  br label %225

269:                                              ; preds = %225
  %270 = load i32, i32* @verbosity, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, i32* @stderr, align 4
  %274 = call i32 (i32, i8*, ...) @fprintf(i32 %273, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %275

275:                                              ; preds = %272, %269
  %276 = load i32, i32* @MAIL_INDEX_BLOCK_MAGIC, align 4
  store i32 %276, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 3), align 8
  store i32 0, i32* %6, align 4
  br label %277

277:                                              ; preds = %325, %275
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @PRIME, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %328

281:                                              ; preds = %277
  %282 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @UserModHeaders, align 8
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %282, i64 %284
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  store %struct.TYPE_5__* %286, %struct.TYPE_5__** @UserMod, align 8
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UserMod, align 8
  %288 = icmp ne %struct.TYPE_5__* %287, null
  br i1 %288, label %289, label %324

289:                                              ; preds = %281
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UserMod, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, -239
  br i1 %293, label %294, label %324

294:                                              ; preds = %289
  %295 = load i32*, i32** @Users, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %300 = load i32, i32* @users_added, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* @users_added, align 4
  %302 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %294
  %305 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %306 = load i32, i32* @MAX_USER_ID, align 4
  %307 = icmp ult i32 %305, %306
  br i1 %307, label %308, label %317

308:                                              ; preds = %304
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 2), align 8
  store i64 0, i64* @CurH, align 8
  store i64 0, i64* @CurL, align 8
  %309 = load i32, i32* @verbosity, align 4
  %310 = icmp sgt i32 %309, 1
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load i32, i32* @stderr, align 4
  %313 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %314 = call i32 (i32, i8*, ...) @fprintf(i32 %312, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %313)
  br label %315

315:                                              ; preds = %311, %308
  %316 = call i32 (...) @do_merge()
  br label %323

317:                                              ; preds = %304, %294
  %318 = load i32, i32* @users_dropped, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* @users_dropped, align 4
  %320 = load i32, i32* @stderr, align 4
  %321 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @User, i32 0, i32 0), align 8
  %322 = call i32 (i32, i8*, ...) @fprintf(i32 %320, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i32 %321)
  br label %323

323:                                              ; preds = %317, %315
  br label %324

324:                                              ; preds = %323, %289, %281
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %6, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %6, align 4
  br label %277

328:                                              ; preds = %277
  %329 = call i32 (...) @flush_out()
  %330 = load i32, i32* @verbosity, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %339

332:                                              ; preds = %328
  %333 = load i32, i32* @stderr, align 4
  %334 = load i8**, i8*** @fnames, align 8
  %335 = getelementptr inbounds i8*, i8** %334, i64 2
  %336 = load i8*, i8** %335, align 8
  %337 = load i64, i64* @wpos, align 8
  %338 = call i32 (i32, i8*, ...) @fprintf(i32 %333, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* %336, i64 %337)
  br label %339

339:                                              ; preds = %332, %328
  %340 = load i64*, i64** @fd, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 2
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @close(i64 %342)
  %344 = load i32, i32* @M_cnt, align 4
  %345 = sub nsw i32 %344, 1
  %346 = call i32 @my_sort(i32 0, i32 %345)
  store i32 0, i32* %6, align 4
  br label %347

347:                                              ; preds = %362, %339
  %348 = load i32, i32* %6, align 4
  %349 = load i32, i32* @M_cnt, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %365

351:                                              ; preds = %347
  %352 = load i32**, i32*** @MetaP, align 8
  %353 = load i32, i32* %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32*, i32** %352, i64 %354
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** @MetaB, align 8
  %359 = load i32, i32* %6, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  store i32 %357, i32* %361, align 4
  br label %362

362:                                              ; preds = %351
  %363 = load i32, i32* %6, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %6, align 4
  br label %347

365:                                              ; preds = %347
  %366 = load i64*, i64** @fd, align 8
  %367 = getelementptr inbounds i64, i64* %366, i64 4
  %368 = load i64, i64* %367, align 8
  %369 = load i32*, i32** @MetaB, align 8
  %370 = load i32, i32* @M_cnt, align 4
  %371 = sext i32 %370 to i64
  %372 = mul i64 %371, 4
  %373 = trunc i64 %372 to i32
  %374 = call i32 @write(i64 %368, i32* %369, i32 %373)
  store i32 %374, i32* %6, align 4
  %375 = load i32, i32* %6, align 4
  %376 = sext i32 %375 to i64
  %377 = load i32, i32* @M_cnt, align 4
  %378 = sext i32 %377 to i64
  %379 = mul i64 %378, 4
  %380 = icmp eq i64 %376, %379
  %381 = zext i1 %380 to i32
  %382 = call i32 @assert(i32 %381)
  %383 = load i64*, i64** @fd, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 4
  %385 = load i64, i64* %384, align 8
  %386 = call i32 @close(i64 %385)
  %387 = load i32, i32* @verbosity, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %399

389:                                              ; preds = %365
  %390 = load i32, i32* @stderr, align 4
  %391 = load i32, i32* @M_cnt, align 4
  %392 = load i32, i32* @M_cnt, align 4
  %393 = sext i32 %392 to i64
  %394 = mul i64 %393, 4
  %395 = load i8**, i8*** @fnames, align 8
  %396 = getelementptr inbounds i8*, i8** %395, i64 4
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 (i32, i8*, ...) @fprintf(i32 %390, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i32 %391, i64 %394, i8* %397)
  br label %399

399:                                              ; preds = %389, %365
  %400 = load i64*, i64** @fd, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 1
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @log_cutoff_pos, align 8
  %404 = load i32, i32* @SEEK_SET, align 4
  %405 = call i64 @lseek(i64 %402, i64 %403, i32 %404)
  %406 = icmp sge i64 %405, 0
  %407 = zext i1 %406 to i32
  %408 = call i32 @assert(i32 %407)
  br label %409

409:                                              ; preds = %430, %399
  %410 = load i64*, i64** @fd, align 8
  %411 = getelementptr inbounds i64, i64* %410, i64 1
  %412 = load i64, i64* %411, align 8
  %413 = load i32*, i32** @obuff, align 8
  %414 = load i32, i32* @FILE_BUFFER_SIZE, align 4
  %415 = call i32 @read(i64 %412, i32* %413, i32 %414)
  store i32 %415, i32* %6, align 4
  %416 = load i64*, i64** @fd, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 3
  %418 = load i64, i64* %417, align 8
  %419 = load i32*, i32** @obuff, align 8
  %420 = load i32, i32* %6, align 4
  %421 = call i32 @write(i64 %418, i32* %419, i32 %420)
  %422 = load i32, i32* %6, align 4
  %423 = icmp eq i32 %421, %422
  %424 = zext i1 %423 to i32
  %425 = call i32 @assert(i32 %424)
  %426 = load i32, i32* %6, align 4
  %427 = sext i32 %426 to i64
  %428 = load i64, i64* @log_wpos, align 8
  %429 = add nsw i64 %428, %427
  store i64 %429, i64* @log_wpos, align 8
  br label %430

430:                                              ; preds = %409
  %431 = load i32, i32* %6, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %409, label %433

433:                                              ; preds = %430
  %434 = load i64*, i64** @fd, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 3
  %436 = load i64, i64* %435, align 8
  %437 = call i32 @close(i64 %436)
  %438 = load i32, i32* @verbosity, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %452

440:                                              ; preds = %433
  %441 = load i32, i32* @stderr, align 4
  %442 = load i64, i64* @log_wpos, align 8
  %443 = load i8**, i8*** @fnames, align 8
  %444 = getelementptr inbounds i8*, i8** %443, i64 1
  %445 = load i8*, i8** %444, align 8
  %446 = load i64, i64* @log_cutoff_pos, align 8
  %447 = load i8**, i8*** @fnames, align 8
  %448 = getelementptr inbounds i8*, i8** %447, i64 3
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 (i32, i8*, ...) @fprintf(i32 %441, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.18, i64 0, i64 0), i64 %442, i8* %445, i64 %446, i8* %449)
  %451 = call i32 (...) @output_stats()
  br label %452

452:                                              ; preds = %440, %433
  store i32 0, i32* %3, align 4
  br label %453

453:                                              ; preds = %452, %136, %114, %92, %43, %18
  %454 = load i32, i32* %3, align 4
  ret i32 %454
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open_file(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @time(i32) #1

declare dso_local i64 @get_utime(i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @set_log_data(i64, i32) #1

declare dso_local i32 @replay_log(i32) #1

declare dso_local i32 @dyn_purge_all_deleted_messages(...) #1

declare dso_local i64 @load_next_user(...) #1

declare dso_local %struct.TYPE_5__* @dyn_user_header(i32, i32) #1

declare dso_local i32 @do_merge(...) #1

declare dso_local i32 @flush_out(...) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @my_sort(i32, i32) #1

declare dso_local i32 @write(i64, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i64, i64, i32) #1

declare dso_local i32 @read(i64, i32*, i32) #1

declare dso_local i32 @output_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
