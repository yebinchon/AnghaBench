; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@now = common dso_local global i8* null, align 8
@index_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mf-index\00", align 1
@binlog_readed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"memory-limit\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"<memory-limit> sets maximal size of used memory not including zmemory in mebibytes\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"suggestions-file-name\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"<suggestions-file-name> name of file with precalculated suggestions\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"new-index-name\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"<new-index-name> new name for index\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"disable-crc32\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"sets disable_crc32 to 3\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"generate-dump\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"generate dump to use in mf-merge-files\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"index-mode\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"run in index mode\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"lock-memory\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"lock paged memory\00", align 1
@mf_parse_option = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"index_mode = %d\0A\00", align 1
@dynamic_data_buffer_size = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@maxconn = common dso_local global i32 0, align 4
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@indexname = common dso_local global i8* null, align 8
@index_load_time = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@port = common dso_local global i32 0, align 4
@settings_addr = common dso_local global i32 0, align 4
@backlog = common dso_local global i32 0, align 4
@sfd = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@interactive = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@binlogname = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@newindexname = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@binlog_fname_buff = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@newindex_fname_buff = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [24 x i8] c"opening binlog file %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"binlog file %s opened %lld %d\0A\00", align 1
@fsize = common dso_local global i64* null, align 8
@fd = common dso_local global i32* null, align 8
@log_ts_interval = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [71 x i8] c"log seek (jump_log_pos = %lld, jump_log_ts = %d, jump_log_crc32 = %u)\0A\00", align 1
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@binlog_loaded_size = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@.str.30 = private unnamed_addr constant [76 x i8] c"replay binlog file: done, pos=%lld, alloc_mem=%ld out of %ld, time %.06lfs\0A\00", align 1
@log_pos = common dso_local global i32 0, align 4
@dyn_cur = common dso_local global i64 0, align 8
@dyn_first = common dso_local global i64 0, align 8
@dyn_last = common dso_local global i64 0, align 8
@stats_buff = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@binlog_disabled = common dso_local global i32 0, align 4
@start_time = common dso_local global i8* null, align 8
@suggname = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @set_debug_handlers()
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  %12 = call i8* @time(i32* null)
  store i8* %12, i8** @now, align 8
  store i32 0, i32* @index_mode, align 4
  %13 = load i8*, i8** @progname, align 8
  %14 = call i32* @strstr(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* @index_mode, align 4
  br label %17

17:                                               ; preds = %16, %2
  store i32 0, i32* @binlog_readed, align 4
  %18 = call i32 @remove_parse_option(i32 66)
  %19 = call i32 @remove_parse_option(i32 204)
  %20 = load i32, i32* @required_argument, align 4
  %21 = call i32 @parse_option(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32* null, i8 signext 109, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @required_argument, align 4
  %23 = call i32 @parse_option(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32* null, i8 signext 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @required_argument, align 4
  %25 = call i32 @parse_option(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %24, i32* null, i8 signext 119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32, i32* @no_argument, align 4
  %27 = call i32 @parse_option(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %26, i32* null, i8 signext 68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i32, i32* @no_argument, align 4
  %29 = call i32 @parse_option(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %28, i32* null, i8 signext 101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %30 = load i32, i32* @index_mode, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %17
  %33 = load i32, i32* @no_argument, align 4
  %34 = call i32 @parse_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %33, i32* null, i8 signext 105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %17
  %36 = load i32, i32* @no_argument, align 4
  %37 = call i32 @parse_option(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %36, i32* null, i8 signext 107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* @mf_parse_option, align 4
  %41 = call i32 @parse_engine_options_long(i32 %38, i8** %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @optind, align 4
  %44 = add nsw i32 %43, 1
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %346

48:                                               ; preds = %35
  %49 = call i32 @init_files(i32 5)
  %50 = load i64, i64* @verbosity, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* @index_mode, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  store i32 65536, i32* @dynamic_data_buffer_size, align 4
  %57 = call i32 (...) @init_dyn_data()
  %58 = load i8*, i8** @username, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @maxconn, align 4
  %62 = load i32, i32* @MAX_CONNECTIONS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = call i64 (...) @geteuid()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1000, i32* @maxconn, align 4
  br label %68

68:                                               ; preds = %67, %64, %60, %56
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* @optind, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** @indexname, align 8
  %74 = call i32 (...) @mytime()
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* @index_load_time, align 4
  %76 = load i8*, i8** @indexname, align 8
  %77 = call i32 @init_all(i8* %76)
  %78 = call i32 (...) @mytime()
  %79 = load i32, i32* @index_load_time, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* @index_load_time, align 4
  %81 = load i32, i32* @maxconn, align 4
  %82 = add nsw i32 %81, 16
  %83 = call i64 @raise_file_rlimit(i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %68
  %86 = load i32, i32* @stderr, align 4
  %87 = load i32, i32* @maxconn, align 4
  %88 = add nsw i32 %87, 16
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %88)
  %90 = call i32 @exit(i32 1) #3
  unreachable

91:                                               ; preds = %68
  %92 = load i32, i32* @index_mode, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @port, align 4
  %96 = load i32, i32* @settings_addr, align 4
  %97 = load i32, i32* @backlog, align 4
  %98 = call i64 @server_socket(i32 %95, i32 %96, i32 %97, i32 0)
  store i64 %98, i64* @sfd, align 8
  %99 = load i64, i64* @sfd, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* @port, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %103)
  %105 = call i32 @exit(i32 1) #3
  unreachable

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %91
  %108 = call i32 @aes_load_pwd_file(i32* null)
  %109 = load i8*, i8** @username, align 8
  %110 = call i64 @change_user(i8* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load i32, i32* @interactive, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8*, i8** @username, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i8*, i8** @username, align 8
  br label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), %121 ]
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i8* %123)
  %125 = call i32 @exit(i32 1) #3
  unreachable

126:                                              ; preds = %112, %107
  %127 = load i8*, i8** @binlogname, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** @binlogname, align 8
  br label %130

130:                                              ; preds = %129, %126
  %131 = load i8*, i8** @newindexname, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** @newindexname, align 8
  br label %134

134:                                              ; preds = %133, %130
  %135 = load i8*, i8** @binlogname, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 46
  br i1 %139, label %140, label %165

140:                                              ; preds = %134
  %141 = load i32, i32* @optind, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %140
  %145 = load i8*, i8** @binlogname, align 8
  %146 = call i32 @strlen(i8* %145)
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* @optind, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = add nsw i32 %146, %152
  %154 = icmp slt i32 %153, 250
  br i1 %154, label %155, label %165

155:                                              ; preds = %144
  %156 = load i8*, i8** @binlog_fname_buff, align 8
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* @optind, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** @binlogname, align 8
  %163 = call i32 @sprintf(i8* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %161, i8* %162)
  %164 = load i8*, i8** @binlog_fname_buff, align 8
  store i8* %164, i8** @binlogname, align 8
  br label %165

165:                                              ; preds = %155, %144, %140, %134
  %166 = load i8*, i8** @newindexname, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 46
  br i1 %170, label %171, label %196

171:                                              ; preds = %165
  %172 = load i32, i32* @optind, align 4
  %173 = load i32, i32* %4, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %171
  %176 = load i8*, i8** @newindexname, align 8
  %177 = call i32 @strlen(i8* %176)
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* @optind, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @strlen(i8* %182)
  %184 = add nsw i32 %177, %183
  %185 = icmp slt i32 %184, 250
  br i1 %185, label %186, label %196

186:                                              ; preds = %175
  %187 = load i8*, i8** @newindex_fname_buff, align 8
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32, i32* @optind, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** @newindexname, align 8
  %194 = call i32 @sprintf(i8* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %192, i8* %193)
  %195 = load i8*, i8** @newindex_fname_buff, align 8
  store i8* %195, i8** @newindexname, align 8
  br label %196

196:                                              ; preds = %186, %175, %171, %165
  %197 = load i64, i64* @verbosity, align 8
  %198 = icmp sgt i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32, i32* @stderr, align 4
  %201 = load i8*, i8** @binlogname, align 8
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %199, %196
  %204 = load i8*, i8** @binlogname, align 8
  %205 = call i32 @open_file(i32 2, i8* %204, i32 -1)
  %206 = load i64, i64* @verbosity, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = load i32, i32* @stderr, align 4
  %210 = load i8*, i8** @binlogname, align 8
  %211 = load i64*, i64** @fsize, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 2
  %213 = load i64, i64* %212, align 8
  %214 = load i32*, i32** @fd, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i8* %210, i64 %213, i32 %216)
  br label %218

218:                                              ; preds = %208, %203
  store i32 3, i32* @log_ts_interval, align 4
  %219 = load i64*, i64** @fsize, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %335

223:                                              ; preds = %218
  %224 = load i32*, i32** @fd, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = icmp sge i32 %226, 0
  br i1 %227, label %228, label %335

228:                                              ; preds = %223
  %229 = load i64, i64* @verbosity, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %228
  %232 = load i32, i32* @stderr, align 4
  %233 = load i8*, i8** @binlogname, align 8
  %234 = load i64*, i64** @fsize, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 2
  %236 = load i64, i64* %235, align 8
  %237 = call i32 (i32, i8*, ...) @fprintf(i32 %232, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i8* %233, i64 %236)
  br label %238

238:                                              ; preds = %231, %228
  %239 = call i32 (...) @mytime()
  store i32 %239, i32* @binlog_load_time, align 4
  %240 = call i32 (...) @clear_log()
  %241 = load i32*, i32** @fd, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = load i64*, i64** @fsize, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 2
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @set_log_data(i32 %243, i64 %246)
  %248 = load i32, i32* @jump_log_pos, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %238
  %251 = load i64, i64* @verbosity, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load i32, i32* @stderr, align 4
  %255 = load i32, i32* @jump_log_pos, align 4
  %256 = load i32, i32* @jump_log_ts, align 4
  %257 = load i32, i32* @jump_log_crc32, align 4
  %258 = call i32 (i32, i8*, ...) @fprintf(i32 %254, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %253, %250
  %260 = load i32, i32* @jump_log_pos, align 4
  %261 = load i32, i32* @jump_log_ts, align 4
  %262 = load i32, i32* @jump_log_crc32, align 4
  %263 = call i32 @log_seek(i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %259, %238
  %265 = load i64, i64* @verbosity, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* @stderr, align 4
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %268, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %264
  %271 = call i32 @replay_log(i32 0, i32 1)
  store i32 %271, i32* %6, align 4
  %272 = load i64, i64* @verbosity, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  %275 = load i32, i32* @stderr, align 4
  %276 = call i32 (i32, i8*, ...) @fprintf(i32 %275, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  br label %277

277:                                              ; preds = %274, %270
  %278 = call i32 (...) @mytime()
  %279 = load i32, i32* @binlog_load_time, align 4
  %280 = sub nsw i32 %278, %279
  store i32 %280, i32* @binlog_load_time, align 4
  %281 = load i64*, i64** @fsize, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 2
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* @binlog_loaded_size, align 8
  %284 = load i32, i32* %6, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %277
  %287 = load i32, i32* @stderr, align 4
  %288 = call i32 (i32, i8*, ...) @fprintf(i32 %287, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0))
  %289 = call i32 @exit(i32 1) #3
  unreachable

290:                                              ; preds = %277
  %291 = load i64, i64* @verbosity, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %290
  %294 = load i32, i32* @stderr, align 4
  %295 = load i32, i32* @log_pos, align 4
  %296 = load i64, i64* @dyn_cur, align 8
  %297 = load i64, i64* @dyn_first, align 8
  %298 = sub nsw i64 %296, %297
  %299 = load i64, i64* @dyn_last, align 8
  %300 = load i64, i64* @dyn_first, align 8
  %301 = sub nsw i64 %299, %300
  %302 = load i32, i32* @binlog_load_time, align 4
  %303 = call i32 (i32, i8*, ...) @fprintf(i32 %294, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.30, i64 0, i64 0), i32 %295, i64 %298, i64 %301, i32 %302)
  br label %304

304:                                              ; preds = %293, %290
  %305 = load i32, i32* @index_mode, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %323

307:                                              ; preds = %304
  %308 = load i8*, i8** @newindexname, align 8
  %309 = call i32 @save_index(i8* %308)
  %310 = load i64, i64* @verbosity, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %307
  %313 = call i32 (...) @mf_prepare_stats()
  store i32 %313, i32* %7, align 4
  %314 = load i8*, i8** @stats_buff, align 8
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  store i8 0, i8* %317, align 1
  %318 = load i32, i32* @stderr, align 4
  %319 = load i8*, i8** @stats_buff, align 8
  %320 = call i32 (i32, i8*, ...) @fprintf(i32 %318, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* %319)
  br label %321

321:                                              ; preds = %312, %307
  %322 = call i32 (...) @free_all()
  store i32 0, i32* %3, align 4
  br label %346

323:                                              ; preds = %304
  %324 = load i32, i32* @binlog_disabled, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %334, label %326

326:                                              ; preds = %323
  %327 = call i32 (...) @clear_read_log()
  %328 = load i32*, i32** @fd, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 2
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @close(i32 %330)
  %332 = load i32*, i32** @fd, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  store i32 -1, i32* %333, align 4
  br label %334

334:                                              ; preds = %326, %323
  br label %335

335:                                              ; preds = %334, %223, %218
  store i32 1, i32* @binlog_readed, align 4
  %336 = call i32 (...) @clear_write_log()
  %337 = call i8* @time(i32* null)
  store i8* %337, i8** @start_time, align 8
  %338 = load i32*, i32** @suggname, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %340, label %343

340:                                              ; preds = %335
  %341 = load i32*, i32** @suggname, align 8
  %342 = call i32 @load_suggestions(i32* %341)
  br label %343

343:                                              ; preds = %340, %335
  %344 = call i32 (...) @start_server()
  %345 = call i32 (...) @free_all()
  store i32 0, i32* %3, align 4
  br label %346

346:                                              ; preds = %343, %321, %46
  %347 = load i32, i32* %3, align 4
  ret i32 %347
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i8* @time(i32*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @remove_parse_option(i32) #1

declare dso_local i32 @parse_option(i8*, i32, i32*, i8 signext, i8*) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @init_files(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @init_all(i8*) #1

declare dso_local i64 @raise_file_rlimit(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i32, i32, i32, i32) #1

declare dso_local i32 @aes_load_pwd_file(i32*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @open_file(i32, i8*, i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @set_log_data(i32, i64) #1

declare dso_local i32 @log_seek(i32, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @save_index(i8*) #1

declare dso_local i32 @mf_prepare_stats(...) #1

declare dso_local i32 @free_all(...) #1

declare dso_local i32 @clear_read_log(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @clear_write_log(...) #1

declare dso_local i32 @load_suggestions(i32*) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
