; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.buff_file = type { i8*, i32, i32, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"a:f:iStqspehu:mvyUGL:T:Z:\00", align 1
@passes = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@binlogname = common dso_local global i8* null, align 8
@search_enabled = common dso_local global i32 0, align 4
@history_enabled = common dso_local global i32 0, align 4
@msg_date_sort = common dso_local global i32 0, align 4
@use_stemmer = common dso_local global i32 0, align 4
@word_split_utf8 = common dso_local global i32 0, align 4
@hashtags_enabled = common dso_local global i32 0, align 4
@searchtags_enabled = common dso_local global i32 0, align 4
@ignore_delete_first_messages = common dso_local global i32 0, align 4
@preserve_legacy_ids = common dso_local global i32 0, align 4
@max_nd_freq = common dso_local global i32 0, align 4
@MAX_NONDICT_FREQ = common dso_local global i32 0, align 4
@force_pm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@dynamic_data_buffer_size = common dso_local global i64 0, align 8
@temp_binlog_directory = common dso_local global i8* null, align 8
@log_limit_pos = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@MAX_USER_MESSAGES = common dso_local global i32 0, align 4
@Messages = common dso_local global i8* null, align 8
@peer_id_index = common dso_local global i8* null, align 8
@legacy_id_index = common dso_local global i8* null, align 8
@PRIME = common dso_local global i32 0, align 4
@Words = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@NotWords = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_16__* null, align 8
@Binlog = common dso_local global %struct.TYPE_15__* null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"fatal: cannot find binlog for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@binlog_load_time = common dso_local global i32 0, align 4
@process_message0 = common dso_local global i32 0, align 4
@process_message = common dso_local global i32 0, align 4
@adjust_message0 = common dso_local global i32 0, align 4
@adjust_message = common dso_local global i32 0, align 4
@change_extra_mask0 = common dso_local global i32 0, align 4
@change_extra_mask = common dso_local global i32 0, align 4
@delete_first_messages0 = common dso_local global i32 0, align 4
@delete_first_messages = common dso_local global i32 0, align 4
@replace_message_text0 = common dso_local global i32 0, align 4
@replace_message_text = common dso_local global i32 0, align 4
@log_readto_pos = common dso_local global i32 0, align 4
@binlog_loaded_size = common dso_local global i32 0, align 4
@log_crc32_complement = common dso_local global i32 0, align 4
@log_limit_crc32 = common dso_local global i32 0, align 4
@last_global_id = common dso_local global i32 0, align 4
@last_global_id0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@.str.8 = private unnamed_addr constant [95 x i8] c"replay binlog file: done, pos=%lld, last_global_id=%d, alloc_mem=%ld out of %ld, time %.06lfs\0A\00", align 1
@log_pos = common dso_local global i64 0, align 8
@dyn_cur = common dso_local global i64 0, align 8
@dyn_first = common dso_local global i64 0, align 8
@dyn_last = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [55 x i8] c"%ld bytes available for indexing, will need %d passes\0A\00", align 1
@engine_snapshot_replica = common dso_local global %struct.TYPE_14__* null, align 8
@newidxname = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [45 x i8] c"cannot write index: cannot compute its name\0A\00", align 1
@fd = common dso_local global i32* null, align 8
@F_WRLCK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"running splitting pass to create temporary files\0A\00", align 1
@text_split_replay_logevent = common dso_local global i32 0, align 4
@replay_logevent = common dso_local global i32 0, align 4
@text_replay_logevent = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [76 x i8] c"replay binlog file (pass %d): done, alloc_mem=%ld out of %ld, time %.06lfs\0A\00", align 1
@pass = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [60 x i8] c"last global id mismatch: original pass %d, current pass %d\0A\00", align 1
@pass_min_uid = common dso_local global i32* null, align 8
@cur_min_uid = common dso_local global i32 0, align 4
@cur_max_uid = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"starting pass #%d, uid %d..%d\0A\00", align 1
@temp_file = common dso_local global %struct.buff_file* null, align 8
@binlog_zipped = common dso_local global i64 0, align 8
@threshold_msg = common dso_local global i8* null, align 8
@process_message1 = common dso_local global i32 0, align 4
@adjust_message1 = common dso_local global i32 0, align 4
@change_extra_mask1 = common dso_local global i32 0, align 4
@delete_first_messages1 = common dso_local global i32 0, align 4
@replace_message_text1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [79 x i8] c"replay binlog file %s (pass %d): done, alloc_mem=%ld out of %ld, time %.06lfs\0A\00", align 1
@max_uid = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [42 x i8] c"cannot rename new index file from %s: %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca %struct.buff_file*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (...) @set_debug_handlers()
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  br label %14

14:                                               ; preds = %98, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %99

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %98 [
    i32 101, label %21
    i32 118, label %22
    i32 104, label %25
    i32 117, label %27
    i32 97, label %29
    i32 105, label %31
    i32 121, label %32
    i32 115, label %33
    i32 83, label %34
    i32 85, label %35
    i32 116, label %36
    i32 113, label %37
    i32 71, label %38
    i32 112, label %39
    i32 102, label %40
    i32 109, label %51
    i32 90, label %52
    i32 84, label %88
    i32 76, label %95
  ]

21:                                               ; preds = %19
  store i32 -1, i32* @passes, align 4
  br label %22

22:                                               ; preds = %19, %21
  %23 = load i64, i64* @verbosity, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @verbosity, align 8
  br label %98

25:                                               ; preds = %19
  %26 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %669

27:                                               ; preds = %19
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** @username, align 8
  br label %98

29:                                               ; preds = %19
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** @binlogname, align 8
  br label %98

31:                                               ; preds = %19
  store i32 1, i32* @search_enabled, align 4
  br label %98

32:                                               ; preds = %19
  store i32 1, i32* @history_enabled, align 4
  br label %98

33:                                               ; preds = %19
  store i32 1, i32* @msg_date_sort, align 4
  br label %98

34:                                               ; preds = %19
  store i32 1, i32* @use_stemmer, align 4
  br label %98

35:                                               ; preds = %19
  store i32 1, i32* @word_split_utf8, align 4
  br label %98

36:                                               ; preds = %19
  store i32 1, i32* @hashtags_enabled, align 4
  br label %98

37:                                               ; preds = %19
  store i32 1, i32* @searchtags_enabled, align 4
  br label %98

38:                                               ; preds = %19
  store i32 1, i32* @ignore_delete_first_messages, align 4
  br label %98

39:                                               ; preds = %19
  store i32 1, i32* @preserve_legacy_ids, align 4
  br label %98

40:                                               ; preds = %19
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @atoi(i8* %41)
  store i32 %42, i32* @max_nd_freq, align 4
  %43 = load i32, i32* @max_nd_freq, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @max_nd_freq, align 4
  %47 = icmp sgt i32 %46, 100
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @MAX_NONDICT_FREQ, align 4
  store i32 %49, i32* @max_nd_freq, align 4
  br label %50

50:                                               ; preds = %48, %45
  br label %98

51:                                               ; preds = %19
  store i32 1, i32* @force_pm, align 4
  br label %98

52:                                               ; preds = %19
  store i8 0, i8* %7, align 1
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 @sscanf(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %8, i8* %7)
  %55 = icmp sge i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i8, i8* %7, align 1
  %59 = sext i8 %58 to i32
  %60 = or i32 %59, 32
  switch i32 %60, label %73 [
    i32 107, label %61
    i32 109, label %64
    i32 103, label %67
    i32 116, label %70
  ]

61:                                               ; preds = %52
  %62 = load i64, i64* %8, align 8
  %63 = shl i64 %62, 10
  store i64 %63, i64* %8, align 8
  br label %79

64:                                               ; preds = %52
  %65 = load i64, i64* %8, align 8
  %66 = shl i64 %65, 20
  store i64 %66, i64* %8, align 8
  br label %79

67:                                               ; preds = %52
  %68 = load i64, i64* %8, align 8
  %69 = shl i64 %68, 30
  store i64 %69, i64* %8, align 8
  br label %79

70:                                               ; preds = %52
  %71 = load i64, i64* %8, align 8
  %72 = shl i64 %71, 40
  store i64 %72, i64* %8, align 8
  br label %79

73:                                               ; preds = %52
  %74 = load i8, i8* %7, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 32
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  br label %79

79:                                               ; preds = %73, %70, %67, %64, %61
  %80 = load i64, i64* %8, align 8
  %81 = icmp sge i64 %80, 1048576
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i64, i64* %8, align 8
  %84 = icmp sle i64 %83, 21474836480
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i64, i64* %8, align 8
  store i64 %86, i64* @dynamic_data_buffer_size, align 8
  br label %87

87:                                               ; preds = %85, %82, %79
  br label %98

88:                                               ; preds = %19
  %89 = load i8*, i8** @optarg, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = icmp slt i32 %90, 120
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i8*, i8** @optarg, align 8
  store i8* %93, i8** @temp_binlog_directory, align 8
  br label %94

94:                                               ; preds = %92, %88
  br label %98

95:                                               ; preds = %19
  %96 = load i8*, i8** @optarg, align 8
  %97 = call i32 @atoll(i8* %96)
  store i32 %97, i32* @log_limit_pos, align 4
  br label %98

98:                                               ; preds = %19, %95, %94, %87, %51, %50, %39, %38, %37, %36, %35, %34, %33, %32, %31, %29, %27, %22
  br label %14

99:                                               ; preds = %14
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @optind, align 4
  %102 = add nsw i32 %101, 1
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @use_stemmer, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* @search_enabled, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107, %99
  %111 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %669

112:                                              ; preds = %107, %104
  %113 = load i8*, i8** @username, align 8
  %114 = call i64 @change_user(i8* %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i32, i32* @stderr, align 4
  %118 = load i8*, i8** @username, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i8*, i8** @username, align 8
  br label %123

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i8* [ %121, %120 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %122 ]
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %124)
  %126 = call i32 @exit(i32 1) #3
  unreachable

127:                                              ; preds = %112
  %128 = load i32, i32* @search_enabled, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  store i32 0, i32* @searchtags_enabled, align 4
  store i32 0, i32* @hashtags_enabled, align 4
  br label %131

131:                                              ; preds = %130, %127
  %132 = call i32 (...) @init_is_letter()
  %133 = load i32, i32* @hashtags_enabled, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 (...) @enable_is_letter_sigils()
  br label %137

137:                                              ; preds = %135, %131
  %138 = load i32, i32* @searchtags_enabled, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (...) @enable_search_tag_sigil()
  br label %142

142:                                              ; preds = %140, %137
  %143 = call i32 (...) @init_letter_freq()
  %144 = load i32, i32* @use_stemmer, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 (...) @stem_init()
  br label %148

148:                                              ; preds = %146, %142
  %149 = call i32 (...) @init_dyn_data()
  %150 = load i32, i32* @MAX_USER_MESSAGES, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 8, %151
  %153 = trunc i64 %152 to i32
  %154 = call i8* @malloc(i32 %153)
  store i8* %154, i8** @Messages, align 8
  %155 = load i32, i32* @MAX_USER_MESSAGES, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 4, %156
  %158 = mul i64 %157, 2
  %159 = trunc i64 %158 to i32
  %160 = call i8* @malloc(i32 %159)
  store i8* %160, i8** @peer_id_index, align 8
  %161 = load i32, i32* @MAX_USER_MESSAGES, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 4, %162
  %164 = mul i64 %163, 3
  %165 = trunc i64 %164 to i32
  %166 = call i8* @malloc(i32 %165)
  store i8* %166, i8** @legacy_id_index, align 8
  %167 = load i8*, i8** @Messages, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %148
  %170 = load i8*, i8** @peer_id_index, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i8*, i8** @legacy_id_index, align 8
  %174 = icmp ne i8* %173, null
  br label %175

175:                                              ; preds = %172, %169, %148
  %176 = phi i1 [ false, %169 ], [ false, %148 ], [ %174, %172 ]
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load i32, i32* @PRIME, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 8
  %182 = trunc i64 %181 to i32
  %183 = call i8* @malloc(i32 %182)
  store i8* %183, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @Words, i32 0, i32 0), align 8
  %184 = load i32, i32* @PRIME, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %185, 8
  %187 = trunc i64 %186 to i32
  %188 = call i8* @malloc(i32 %187)
  store i8* %188, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @NotWords, i32 0, i32 0), align 8
  %189 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @Words, i32 0, i32 0), align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %175
  %192 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @NotWords, i32 0, i32 0), align 8
  %193 = icmp ne i8* %192, null
  br label %194

194:                                              ; preds = %191, %175
  %195 = phi i1 [ false, %175 ], [ %193, %191 ]
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* @optind, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** @binlogname, align 8
  %204 = call i64 @engine_preload_filelist(i8* %202, i8* %203)
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %194
  %207 = load i32, i32* @stderr, align 4
  %208 = load i8*, i8** @binlogname, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i8*, i8** @binlogname, align 8
  br label %218

212:                                              ; preds = %206
  %213 = load i8**, i8*** %5, align 8
  %214 = load i32, i32* @optind, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  br label %218

218:                                              ; preds = %212, %210
  %219 = phi i8* [ %211, %210 ], [ %217, %212 ]
  %220 = call i32 (i32, i8*, ...) @fprintf(i32 %207, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %219)
  %221 = call i32 @exit(i32 1) #3
  unreachable

222:                                              ; preds = %194
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** @engine_replica, align 8
  %224 = call %struct.TYPE_15__* @open_binlog(%struct.TYPE_16__* %223, i32 0)
  store %struct.TYPE_15__* %224, %struct.TYPE_15__** @Binlog, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %226 = icmp ne %struct.TYPE_15__* %225, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %222
  %228 = load i32, i32* @stderr, align 4
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** @engine_replica, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %231)
  %233 = call i32 @exit(i32 1) #3
  unreachable

234:                                              ; preds = %222
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  store i8* %239, i8** @binlogname, align 8
  %240 = load i64, i64* @verbosity, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %234
  %243 = load i32, i32* @stderr, align 4
  %244 = load i8*, i8** @binlogname, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %244, i32 %249)
  br label %251

251:                                              ; preds = %242, %234
  %252 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %253 = call i32 @get_utime(i32 %252)
  store i32 %253, i32* @binlog_load_time, align 4
  %254 = call i32 (...) @clear_log()
  %255 = call i32 @init_log_data(i32 0, i32 0, i32 0)
  %256 = load i32, i32* @process_message0, align 4
  store i32 %256, i32* @process_message, align 4
  %257 = load i32, i32* @adjust_message0, align 4
  store i32 %257, i32* @adjust_message, align 4
  %258 = load i32, i32* @change_extra_mask0, align 4
  store i32 %258, i32* @change_extra_mask, align 4
  %259 = load i32, i32* @delete_first_messages0, align 4
  store i32 %259, i32* @delete_first_messages, align 4
  %260 = load i32, i32* @replace_message_text0, align 4
  store i32 %260, i32* @replace_message_text, align 4
  %261 = call i32 @replay_log(i32 0, i32 1)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %263 = call i32 @get_utime(i32 %262)
  %264 = load i32, i32* @binlog_load_time, align 4
  %265 = sub nsw i32 %263, %264
  store i32 %265, i32* @binlog_load_time, align 4
  %266 = load i32, i32* @log_readto_pos, align 4
  store i32 %266, i32* @binlog_loaded_size, align 4
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %268 = call i32 @close_binlog(%struct.TYPE_15__* %267, i32 1)
  %269 = load i32, i32* @log_limit_pos, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %251
  %272 = load i32, i32* @log_readto_pos, align 4
  %273 = load i32, i32* @log_limit_pos, align 4
  %274 = icmp eq i32 %272, %273
  br label %275

275:                                              ; preds = %271, %251
  %276 = phi i1 [ true, %251 ], [ %274, %271 ]
  %277 = zext i1 %276 to i32
  %278 = call i32 @assert(i32 %277)
  %279 = load i32, i32* @log_readto_pos, align 4
  store i32 %279, i32* @log_limit_pos, align 4
  %280 = load i32, i32* @log_crc32_complement, align 4
  %281 = xor i32 %280, -1
  store i32 %281, i32* @log_limit_crc32, align 4
  %282 = load i32, i32* @last_global_id, align 4
  store i32 %282, i32* @last_global_id0, align 4
  %283 = load i32, i32* %6, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %275
  %286 = load i32, i32* @stderr, align 4
  %287 = call i32 (i32, i8*, ...) @fprintf(i32 %286, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %288 = call i32 @exit(i32 1) #3
  unreachable

289:                                              ; preds = %275
  %290 = load i64, i64* @verbosity, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %304

292:                                              ; preds = %289
  %293 = load i32, i32* @stderr, align 4
  %294 = load i64, i64* @log_pos, align 8
  %295 = load i32, i32* @last_global_id, align 4
  %296 = load i64, i64* @dyn_cur, align 8
  %297 = load i64, i64* @dyn_first, align 8
  %298 = sub nsw i64 %296, %297
  %299 = load i64, i64* @dyn_last, align 8
  %300 = load i64, i64* @dyn_first, align 8
  %301 = sub nsw i64 %299, %300
  %302 = load i32, i32* @binlog_load_time, align 4
  %303 = call i32 (i32, i8*, ...) @fprintf(i32 %293, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.8, i64 0, i64 0), i64 %294, i32 %295, i64 %298, i64 %301, i32 %302)
  br label %304

304:                                              ; preds = %292, %289
  %305 = load i32, i32* @search_enabled, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %304
  %308 = load i64, i64* @verbosity, align 8
  %309 = icmp sgt i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  %311 = call i32 (...) @test_word_hashes()
  br label %312

312:                                              ; preds = %310, %307, %304
  %313 = call i32 (...) @prepare_extra_mask()
  %314 = call i32 (...) @count_sublists()
  %315 = call i32 (...) @build_model()
  %316 = load i32, i32* @passes, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = call i32 (...) @output_stats()
  store i32 0, i32* %3, align 4
  br label %669

320:                                              ; preds = %312
  %321 = call i32 (...) @estimate_needed_passes()
  store i32 %321, i32* @passes, align 4
  %322 = load i64, i64* @verbosity, align 8
  %323 = icmp sgt i64 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %320
  %325 = load i32, i32* @stderr, align 4
  %326 = load i64, i64* @dyn_last, align 8
  %327 = load i64, i64* @dyn_cur, align 8
  %328 = sub nsw i64 %326, %327
  %329 = load i32, i32* @passes, align 4
  %330 = call i32 (i32, i8*, ...) @fprintf(i32 %325, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i64 %328, i32 %329)
  br label %331

331:                                              ; preds = %324, %320
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_snapshot_replica, align 8
  %333 = icmp ne %struct.TYPE_14__* %332, null
  br i1 %333, label %334, label %346

334:                                              ; preds = %331
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_snapshot_replica, align 8
  %336 = call i64 @update_replica(%struct.TYPE_14__* %335, i32 1)
  %337 = icmp sgt i64 %336, 0
  %338 = zext i1 %337 to i32
  %339 = call i32 @assert(i32 %338)
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_snapshot_replica, align 8
  %341 = call i32 (...) @log_cur_pos()
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_snapshot_replica, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i8* @get_new_snapshot_name(%struct.TYPE_14__* %340, i32 %341, i32 %344)
  store i8* %345, i8** @newidxname, align 8
  br label %346

346:                                              ; preds = %334, %331
  %347 = load i8*, i8** @newidxname, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  %350 = load i8*, i8** @newidxname, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 0
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 45
  br i1 %354, label %355, label %359

355:                                              ; preds = %349, %346
  %356 = load i32, i32* @stderr, align 4
  %357 = call i32 (i32, i8*, ...) @fprintf(i32 %356, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %358 = call i32 @exit(i32 1) #3
  unreachable

359:                                              ; preds = %349
  %360 = load i8*, i8** @newidxname, align 8
  %361 = call i32 @open_file(i32 0, i8* %360, i32 1)
  %362 = load i32*, i32** @fd, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 0
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @F_WRLCK, align 4
  %366 = call i64 @lock_whole_file(i32 %364, i32 %365)
  %367 = icmp sgt i64 %366, 0
  %368 = zext i1 %367 to i32
  %369 = call i32 @assert(i32 %368)
  %370 = call i32 (...) @write_header0()
  %371 = call i32 (...) @write_sublists_descr()
  %372 = call i32 (...) @write_dictionaries()
  %373 = call i32 (...) @prepare_user_directory()
  %374 = call i32 (...) @prepare_pass_splitting()
  %375 = load i8*, i8** @temp_binlog_directory, align 8
  %376 = icmp ne i8* %375, null
  br i1 %376, label %377, label %472

377:                                              ; preds = %359
  %378 = load i64, i64* @verbosity, align 8
  %379 = icmp sgt i64 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load i32, i32* @stderr, align 4
  %382 = call i32 (i32, i8*, ...) @fprintf(i32 %381, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  br label %383

383:                                              ; preds = %380, %377
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** @engine_replica, align 8
  %385 = call %struct.TYPE_15__* @open_binlog(%struct.TYPE_16__* %384, i32 0)
  store %struct.TYPE_15__* %385, %struct.TYPE_15__** @Binlog, align 8
  %386 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %387 = icmp ne %struct.TYPE_15__* %386, null
  br i1 %387, label %395, label %388

388:                                              ; preds = %383
  %389 = load i32, i32* @stderr, align 4
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** @engine_replica, align 8
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 0
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 (i32, i8*, ...) @fprintf(i32 %389, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %392)
  %394 = call i32 @exit(i32 1) #3
  unreachable

395:                                              ; preds = %383
  %396 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  store i8* %400, i8** @binlogname, align 8
  %401 = load i64, i64* @verbosity, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %412

403:                                              ; preds = %395
  %404 = load i32, i32* @stderr, align 4
  %405 = load i8*, i8** @binlogname, align 8
  %406 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = call i32 (i32, i8*, ...) @fprintf(i32 %404, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %405, i32 %410)
  br label %412

412:                                              ; preds = %403, %395
  %413 = call i32 @dyn_mark(i32 0)
  %414 = call i32 (...) @open_temp_files()
  %415 = call i32 (...) @clear_log()
  %416 = call i32 @init_log_data(i32 0, i32 0, i32 0)
  %417 = load i32, i32* @text_split_replay_logevent, align 4
  store i32 %417, i32* @replay_logevent, align 4
  store i32 0, i32* @last_global_id, align 4
  %418 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %419 = call i32 @get_utime(i32 %418)
  store i32 %419, i32* @binlog_load_time, align 4
  %420 = call i32 @replay_log(i32 0, i32 1)
  store i32 %420, i32* %6, align 4
  %421 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %422 = call i32 @get_utime(i32 %421)
  %423 = load i32, i32* @binlog_load_time, align 4
  %424 = sub nsw i32 %422, %423
  store i32 %424, i32* @binlog_load_time, align 4
  %425 = load i32, i32* @text_replay_logevent, align 4
  store i32 %425, i32* @replay_logevent, align 4
  %426 = load i32, i32* %6, align 4
  %427 = icmp slt i32 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %412
  %429 = load i32, i32* @stderr, align 4
  %430 = call i32 (i32, i8*, ...) @fprintf(i32 %429, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %431 = call i32 @exit(i32 1) #3
  unreachable

432:                                              ; preds = %412
  %433 = load i64, i64* @verbosity, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %446

435:                                              ; preds = %432
  %436 = load i32, i32* @stderr, align 4
  %437 = load i32, i32* @pass, align 4
  %438 = load i64, i64* @dyn_cur, align 8
  %439 = load i64, i64* @dyn_first, align 8
  %440 = sub nsw i64 %438, %439
  %441 = load i64, i64* @dyn_last, align 8
  %442 = load i64, i64* @dyn_first, align 8
  %443 = sub nsw i64 %441, %442
  %444 = load i32, i32* @binlog_load_time, align 4
  %445 = call i32 (i32, i8*, ...) @fprintf(i32 %436, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0), i32 %437, i64 %440, i64 %443, i32 %444)
  br label %446

446:                                              ; preds = %435, %432
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %448 = call i32 @close_binlog(%struct.TYPE_15__* %447, i32 1)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** @Binlog, align 8
  %449 = load i32, i32* @last_global_id, align 4
  %450 = load i32, i32* @last_global_id0, align 4
  %451 = icmp ne i32 %449, %450
  br i1 %451, label %452, label %457

452:                                              ; preds = %446
  %453 = load i32, i32* @stderr, align 4
  %454 = load i32, i32* @last_global_id0, align 4
  %455 = load i32, i32* @last_global_id, align 4
  %456 = call i32 (i32, i8*, ...) @fprintf(i32 %453, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i32 %454, i32 %455)
  br label %457

457:                                              ; preds = %452, %446
  %458 = load i32, i32* @log_limit_crc32, align 4
  %459 = load i32, i32* @log_crc32_complement, align 4
  %460 = xor i32 %459, -1
  %461 = icmp eq i32 %458, %460
  br i1 %461, label %462, label %466

462:                                              ; preds = %457
  %463 = load i32, i32* @last_global_id, align 4
  %464 = load i32, i32* @last_global_id0, align 4
  %465 = icmp eq i32 %463, %464
  br label %466

466:                                              ; preds = %462, %457
  %467 = phi i1 [ false, %457 ], [ %465, %462 ]
  %468 = zext i1 %467 to i32
  %469 = call i32 @assert(i32 %468)
  %470 = call i32 (...) @tmp_flush_all()
  %471 = call i32 @dyn_release(i32 0)
  br label %472

472:                                              ; preds = %466, %359
  store i32 1, i32* @pass, align 4
  br label %473

473:                                              ; preds = %622, %472
  %474 = load i32, i32* @pass, align 4
  %475 = load i32, i32* @passes, align 4
  %476 = icmp sle i32 %474, %475
  br i1 %476, label %477, label %625

477:                                              ; preds = %473
  store %struct.buff_file* null, %struct.buff_file** %9, align 8
  %478 = load i32*, i32** @pass_min_uid, align 8
  %479 = load i32, i32* @pass, align 4
  %480 = sub nsw i32 %479, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %478, i64 %481
  %483 = load i32, i32* %482, align 4
  store i32 %483, i32* @cur_min_uid, align 4
  %484 = load i32*, i32** @pass_min_uid, align 8
  %485 = load i32, i32* @pass, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32, i32* %487, align 4
  store i32 %488, i32* @cur_max_uid, align 4
  %489 = load i64, i64* @verbosity, align 8
  %490 = icmp sgt i64 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %477
  %492 = call i32 (...) @output_stats()
  %493 = load i32, i32* @stderr, align 4
  %494 = load i32, i32* @pass, align 4
  %495 = load i32, i32* @cur_min_uid, align 4
  %496 = load i32, i32* @cur_max_uid, align 4
  %497 = call i32 (i32, i8*, ...) @fprintf(i32 %493, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %494, i32 %495, i32 %496)
  br label %498

498:                                              ; preds = %491, %477
  %499 = load i8*, i8** @temp_binlog_directory, align 8
  %500 = icmp ne i8* %499, null
  br i1 %500, label %533, label %501

501:                                              ; preds = %498
  %502 = load %struct.TYPE_16__*, %struct.TYPE_16__** @engine_replica, align 8
  %503 = call %struct.TYPE_15__* @open_binlog(%struct.TYPE_16__* %502, i32 0)
  store %struct.TYPE_15__* %503, %struct.TYPE_15__** @Binlog, align 8
  %504 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %505 = icmp ne %struct.TYPE_15__* %504, null
  br i1 %505, label %513, label %506

506:                                              ; preds = %501
  %507 = load i32, i32* @stderr, align 4
  %508 = load %struct.TYPE_16__*, %struct.TYPE_16__** @engine_replica, align 8
  %509 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %508, i32 0, i32 0
  %510 = load i8*, i8** %509, align 8
  %511 = call i32 (i32, i8*, ...) @fprintf(i32 %507, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %510)
  %512 = call i32 @exit(i32 1) #3
  unreachable

513:                                              ; preds = %501
  %514 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %515 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %514, i32 0, i32 0
  %516 = load %struct.TYPE_13__*, %struct.TYPE_13__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %516, i32 0, i32 0
  %518 = load i8*, i8** %517, align 8
  store i8* %518, i8** @binlogname, align 8
  %519 = load i64, i64* @verbosity, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %530

521:                                              ; preds = %513
  %522 = load i32, i32* @stderr, align 4
  %523 = load i8*, i8** @binlogname, align 8
  %524 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %525 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %524, i32 0, i32 0
  %526 = load %struct.TYPE_13__*, %struct.TYPE_13__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 8
  %529 = call i32 (i32, i8*, ...) @fprintf(i32 %522, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %523, i32 %528)
  br label %530

530:                                              ; preds = %521, %513
  %531 = call i32 (...) @clear_log()
  %532 = call i32 @init_log_data(i32 0, i32 0, i32 0)
  br label %551

533:                                              ; preds = %498
  %534 = load %struct.buff_file*, %struct.buff_file** @temp_file, align 8
  %535 = load i32, i32* @pass, align 4
  %536 = sub nsw i32 %535, 1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %534, i64 %537
  store %struct.buff_file* %538, %struct.buff_file** %9, align 8
  %539 = call i32 (...) @clear_log()
  store i64 0, i64* @binlog_zipped, align 8
  %540 = load %struct.buff_file*, %struct.buff_file** %9, align 8
  %541 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %540, i32 0, i32 0
  %542 = load i8*, i8** %541, align 8
  store i8* %542, i8** @binlogname, align 8
  %543 = load %struct.buff_file*, %struct.buff_file** %9, align 8
  %544 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %543, i32 0, i32 3
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.buff_file*, %struct.buff_file** %9, align 8
  %547 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 4
  %549 = call i32 @set_log_data(i32 %545, i32 %548)
  %550 = call i32 @log_seek(i32 0, i32 0, i32 0)
  store i32 -1, i32* @log_limit_pos, align 4
  br label %551

551:                                              ; preds = %533, %530
  %552 = call i32 @dyn_mark(i32 0)
  store i32 0, i32* @last_global_id, align 4
  store i8* inttoptr (i64 -1 to i8*), i8** @threshold_msg, align 8
  %553 = load i32, i32* @process_message1, align 4
  store i32 %553, i32* @process_message, align 4
  %554 = load i32, i32* @adjust_message1, align 4
  store i32 %554, i32* @adjust_message, align 4
  %555 = load i32, i32* @change_extra_mask1, align 4
  store i32 %555, i32* @change_extra_mask, align 4
  %556 = load i32, i32* @delete_first_messages1, align 4
  store i32 %556, i32* @delete_first_messages, align 4
  %557 = load i32, i32* @replace_message_text1, align 4
  store i32 %557, i32* @replace_message_text, align 4
  %558 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %559 = call i32 @get_utime(i32 %558)
  store i32 %559, i32* @binlog_load_time, align 4
  %560 = call i32 @replay_log(i32 0, i32 1)
  store i32 %560, i32* %6, align 4
  %561 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %562 = call i32 @get_utime(i32 %561)
  %563 = load i32, i32* @binlog_load_time, align 4
  %564 = sub nsw i32 %562, %563
  store i32 %564, i32* @binlog_load_time, align 4
  %565 = load i32, i32* %6, align 4
  %566 = icmp slt i32 %565, 0
  br i1 %566, label %567, label %572

567:                                              ; preds = %551
  %568 = load i32, i32* @stderr, align 4
  %569 = call i32 (i32, i8*, ...) @fprintf(i32 %568, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %570 = call i32 @close_temp_files(i32 3)
  %571 = call i32 @exit(i32 1) #3
  unreachable

572:                                              ; preds = %551
  %573 = load i64, i64* @verbosity, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %587

575:                                              ; preds = %572
  %576 = load i32, i32* @stderr, align 4
  %577 = load i8*, i8** @binlogname, align 8
  %578 = load i32, i32* @pass, align 4
  %579 = load i64, i64* @dyn_cur, align 8
  %580 = load i64, i64* @dyn_first, align 8
  %581 = sub nsw i64 %579, %580
  %582 = load i64, i64* @dyn_last, align 8
  %583 = load i64, i64* @dyn_first, align 8
  %584 = sub nsw i64 %582, %583
  %585 = load i32, i32* @binlog_load_time, align 4
  %586 = call i32 (i32, i8*, ...) @fprintf(i32 %576, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.15, i64 0, i64 0), i8* %577, i32 %578, i64 %581, i64 %584, i32 %585)
  br label %587

587:                                              ; preds = %575, %572
  %588 = load i8*, i8** @temp_binlog_directory, align 8
  %589 = icmp ne i8* %588, null
  br i1 %589, label %599, label %590

590:                                              ; preds = %587
  %591 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Binlog, align 8
  %592 = call i32 @close_binlog(%struct.TYPE_15__* %591, i32 1)
  %593 = load i32, i32* @log_limit_crc32, align 4
  %594 = load i32, i32* @log_crc32_complement, align 4
  %595 = xor i32 %594, -1
  %596 = icmp eq i32 %593, %595
  %597 = zext i1 %596 to i32
  %598 = call i32 @assert(i32 %597)
  br label %605

599:                                              ; preds = %587
  %600 = load i32, i32* @log_crc32_complement, align 4
  %601 = xor i32 %600, -1
  %602 = load %struct.buff_file*, %struct.buff_file** %9, align 8
  %603 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %602, i32 0, i32 1
  store i32 %601, i32* %603, align 8
  %604 = call i32 @assert(i32 %601)
  br label %605

605:                                              ; preds = %599, %590
  %606 = call i32 (...) @process_loaded_messages()
  %607 = call i32 @dyn_release(i32 0)
  %608 = load i32, i32* @last_global_id, align 4
  %609 = load i32, i32* @last_global_id0, align 4
  %610 = icmp ne i32 %608, %609
  br i1 %610, label %611, label %616

611:                                              ; preds = %605
  %612 = load i32, i32* @stderr, align 4
  %613 = load i32, i32* @last_global_id0, align 4
  %614 = load i32, i32* @last_global_id, align 4
  %615 = call i32 (i32, i8*, ...) @fprintf(i32 %612, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i32 %613, i32 %614)
  br label %616

616:                                              ; preds = %611, %605
  %617 = load i32, i32* @last_global_id, align 4
  %618 = load i32, i32* @last_global_id0, align 4
  %619 = icmp eq i32 %617, %618
  %620 = zext i1 %619 to i32
  %621 = call i32 @assert(i32 %620)
  br label %622

622:                                              ; preds = %616
  %623 = load i32, i32* @pass, align 4
  %624 = add nsw i32 %623, 1
  store i32 %624, i32* @pass, align 4
  br label %473

625:                                              ; preds = %473
  %626 = load i8*, i8** @temp_binlog_directory, align 8
  %627 = icmp ne i8* %626, null
  br i1 %627, label %628, label %630

628:                                              ; preds = %625
  %629 = call i32 @close_temp_files(i32 3)
  br label %630

630:                                              ; preds = %628, %625
  %631 = load i32, i32* @cur_max_uid, align 4
  %632 = load i32, i32* @max_uid, align 4
  %633 = add nsw i32 %632, 1
  %634 = icmp eq i32 %631, %633
  %635 = zext i1 %634 to i32
  %636 = call i32 @assert(i32 %635)
  %637 = call i32 (...) @write_user_directory()
  %638 = call i32 (...) @write_header1()
  %639 = call i32 (...) @flushout()
  %640 = load i32*, i32** @fd, align 8
  %641 = getelementptr inbounds i32, i32* %640, i64 0
  %642 = load i32, i32* %641, align 4
  %643 = call i64 @fsync(i32 %642)
  %644 = icmp sge i64 %643, 0
  %645 = zext i1 %644 to i32
  %646 = call i32 @assert(i32 %645)
  %647 = load i32*, i32** @fd, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 0
  %649 = load i32, i32* %648, align 4
  %650 = call i32 @close(i32 %649)
  %651 = load i8*, i8** @newidxname, align 8
  %652 = call i64 @rename_temporary_snapshot(i8* %651)
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %661

654:                                              ; preds = %630
  %655 = load i32, i32* @stderr, align 4
  %656 = load i8*, i8** @newidxname, align 8
  %657 = call i32 (i32, i8*, ...) @fprintf(i32 %655, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i8* %656)
  %658 = load i8*, i8** @newidxname, align 8
  %659 = call i32 @unlink(i8* %658)
  %660 = call i32 @exit(i32 1) #3
  unreachable

661:                                              ; preds = %630
  %662 = load i64, i64* @verbosity, align 8
  %663 = icmp sgt i64 %662, 0
  br i1 %663, label %664, label %666

664:                                              ; preds = %661
  %665 = call i32 (...) @output_stats()
  br label %666

666:                                              ; preds = %664, %661
  %667 = load i8*, i8** @newidxname, align 8
  %668 = call i32 @print_snapshot_name(i8* %667)
  store i32 0, i32* %3, align 4
  br label %669

669:                                              ; preds = %666, %318, %110, %25
  %670 = load i32, i32* %3, align 4
  ret i32 %670
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_is_letter(...) #1

declare dso_local i32 @enable_is_letter_sigils(...) #1

declare dso_local i32 @enable_search_tag_sigil(...) #1

declare dso_local i32 @init_letter_freq(...) #1

declare dso_local i32 @stem_init(...) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @open_binlog(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i32, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @close_binlog(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @test_word_hashes(...) #1

declare dso_local i32 @prepare_extra_mask(...) #1

declare dso_local i32 @count_sublists(...) #1

declare dso_local i32 @build_model(...) #1

declare dso_local i32 @output_stats(...) #1

declare dso_local i32 @estimate_needed_passes(...) #1

declare dso_local i64 @update_replica(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @get_new_snapshot_name(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i32 @open_file(i32, i8*, i32) #1

declare dso_local i64 @lock_whole_file(i32, i32) #1

declare dso_local i32 @write_header0(...) #1

declare dso_local i32 @write_sublists_descr(...) #1

declare dso_local i32 @write_dictionaries(...) #1

declare dso_local i32 @prepare_user_directory(...) #1

declare dso_local i32 @prepare_pass_splitting(...) #1

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local i32 @open_temp_files(...) #1

declare dso_local i32 @tmp_flush_all(...) #1

declare dso_local i32 @dyn_release(i32) #1

declare dso_local i32 @set_log_data(i32, i32) #1

declare dso_local i32 @log_seek(i32, i32, i32) #1

declare dso_local i32 @close_temp_files(i32) #1

declare dso_local i32 @process_loaded_messages(...) #1

declare dso_local i32 @write_user_directory(...) #1

declare dso_local i32 @write_header1(...) #1

declare dso_local i32 @flushout(...) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @rename_temporary_snapshot(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @print_snapshot_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
