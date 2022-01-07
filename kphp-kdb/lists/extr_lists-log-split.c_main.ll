; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.lev_crc32 = type { i32, i32, i32, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"fhvu:m:s:t:M:F\00", align 1
@filter_member_fan = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@skip_rotate = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@copy_rem = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@log_limit_pos = common dso_local global i32 0, align 4
@keep_log_limit_pos = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"firstint\00", align 1
@SPLIT_FIRSTINT = common dso_local global i32 0, align 4
@split_mode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"liked\00", align 1
@SPLIT_LIKED = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"fix member_fans, fan_members mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"member_fans\00", align 1
@member_fans_want_write = common dso_local global i32 0, align 4
@want_write = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"fan_members\00", align 1
@fan_members_want_write = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [92 x i8] c"binlogname should starts from member_fans of fan_members when command line switch -F used.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"fatal: log start position %lld after stop position %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@binlogname = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_9__* null, align 8
@Binlog = common dso_local global %struct.TYPE_8__* null, align 8
@.str.12 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@targ_orig_size = common dso_local global i64 0, align 8
@targ_existed = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@immediate_exit = common dso_local global i32 0, align 4
@list_id_ints = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [42 x i8] c"fatal: cannot parse first LEV_START entry\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"replaying binlog file %s (size %lld) from log position %lld\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@log_readto_pos = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [56 x i8] c"fatal: binlog read up to position %lld instead of %lld\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Writing CRC32 to the end of target binlog.\0A\00", align 1
@LEV_CRC32 = common dso_local global i32 0, align 4
@last_timestamp = common dso_local global i32 0, align 4
@wr_bytes = common dso_local global i32 0, align 4
@wr_crc32_complement = common dso_local global i32 0, align 4
@wr_rec = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lev_crc32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  br label %12

12:                                               ; preds = %66, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %67

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %64 [
    i32 70, label %19
    i32 118, label %20
    i32 102, label %23
    i32 104, label %24
    i32 117, label %26
    i32 109, label %28
    i32 115, label %42
    i32 116, label %45
    i32 77, label %48
  ]

19:                                               ; preds = %17
  store i32 1, i32* @filter_member_fan, align 4
  br label %66

20:                                               ; preds = %17
  %21 = load i64, i64* @verbosity, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @verbosity, align 8
  br label %66

23:                                               ; preds = %17
  store i32 1, i32* @skip_rotate, align 4
  br label %66

24:                                               ; preds = %17
  %25 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %356

26:                                               ; preds = %17
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** @username, align 8
  br label %66

28:                                               ; preds = %17
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @copy_rem, i32* @copy_mod)
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @copy_rem, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @copy_rem, align 4
  %37 = load i32, i32* @copy_mod, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %32, %28
  %40 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %356

41:                                               ; preds = %35
  br label %66

42:                                               ; preds = %17
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @atoll(i8* %43)
  store i32 %44, i32* @jump_log_pos, align 4
  br label %66

45:                                               ; preds = %17
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @atoll(i8* %46)
  store i32 %47, i32* @log_limit_pos, align 4
  store i32 %47, i32* @keep_log_limit_pos, align 4
  br label %66

48:                                               ; preds = %17
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @SPLIT_FIRSTINT, align 4
  store i32 %53, i32* @split_mode, align 4
  br label %63

54:                                               ; preds = %48
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @SPLIT_LIKED, align 4
  store i32 %59, i32* @split_mode, align 4
  br label %62

60:                                               ; preds = %54
  %61 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %356

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %52
  br label %66

64:                                               ; preds = %17
  %65 = call i32 @assert(i32 0)
  store i32 2, i32* %3, align 4
  br label %356

66:                                               ; preds = %63, %45, %42, %41, %26, %23, %20, %19
  br label %12

67:                                               ; preds = %12
  %68 = load i32, i32* @optind, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @optind, align 4
  %73 = add nsw i32 %72, 2
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %67
  %77 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %356

78:                                               ; preds = %71
  %79 = load i32, i32* @filter_member_fan, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %78
  %82 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* @optind, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strrchr(i8* %87, i8 signext 47)
  store i8* %88, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %81
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* @optind, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  br label %100

97:                                               ; preds = %81
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i8* [ %96, %91 ], [ %99, %97 ]
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @strncmp(i8* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @member_fans_want_write, align 4
  store i32 %106, i32* @want_write, align 4
  br label %117

107:                                              ; preds = %100
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @strncmp(i8* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @fan_members_want_write, align 4
  store i32 %112, i32* @want_write, align 4
  br label %116

113:                                              ; preds = %107
  %114 = call i32 @kprintf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.7, i64 0, i64 0))
  %115 = call i32 @exit(i32 1) #3
  unreachable

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %105
  br label %118

118:                                              ; preds = %117, %78
  %119 = load i32, i32* @log_limit_pos, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32, i32* @jump_log_pos, align 4
  %123 = load i32, i32* @log_limit_pos, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i32, i32* @stderr, align 4
  %127 = load i32, i32* @jump_log_pos, align 4
  %128 = load i32, i32* @log_limit_pos, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 %127, i32 %128)
  store i32 2, i32* %3, align 4
  br label %356

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %118
  %132 = load i8*, i8** @username, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %148

134:                                              ; preds = %131
  %135 = load i8*, i8** @username, align 8
  %136 = call i64 @change_user(i8* %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i32, i32* @stderr, align 4
  %140 = load i8*, i8** @username, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i8*, i8** @username, align 8
  br label %145

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i8* [ %143, %142 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %144 ]
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %146)
  store i32 1, i32* %3, align 4
  br label %356

148:                                              ; preds = %134, %131
  %149 = load i8**, i8*** %5, align 8
  %150 = load i32, i32* @optind, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** @binlogname, align 8
  %155 = call i64 @engine_preload_filelist(i8* %153, i8* %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %148
  %158 = load i32, i32* @stderr, align 4
  %159 = load i8*, i8** @binlogname, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i8*, i8** @binlogname, align 8
  br label %169

163:                                              ; preds = %157
  %164 = load i8**, i8*** %5, align 8
  %165 = load i32, i32* @optind, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  br label %169

169:                                              ; preds = %163, %161
  %170 = phi i8* [ %162, %161 ], [ %168, %163 ]
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %170)
  %172 = call i32 @exit(i32 1) #3
  unreachable

173:                                              ; preds = %148
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %175 = call %struct.TYPE_8__* @open_binlog(%struct.TYPE_9__* %174, i32 0)
  store %struct.TYPE_8__* %175, %struct.TYPE_8__** @Binlog, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %177 = icmp ne %struct.TYPE_8__* %176, null
  br i1 %177, label %185, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* @stderr, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i8* %182, i64 0)
  %184 = call i32 @exit(i32 1) #3
  unreachable

185:                                              ; preds = %173
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** @binlogname, align 8
  %191 = load i64, i64* @verbosity, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load i32, i32* @stderr, align 4
  %195 = load i8*, i8** @binlogname, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* %195, i32 %200)
  br label %202

202:                                              ; preds = %193, %185
  %203 = call i32 (...) @clear_log()
  %204 = call i32 @init_log_data(i32 0, i32 0, i32 0)
  %205 = load i32, i32* @optind, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* %4, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %236

209:                                              ; preds = %202
  %210 = load i8**, i8*** %5, align 8
  %211 = load i32, i32* @optind, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %210, i64 %213
  %215 = load i8*, i8** %214, align 8
  store i8* %215, i8** @targ_fname, align 8
  %216 = load i8*, i8** @targ_fname, align 8
  %217 = load i32, i32* @O_WRONLY, align 4
  %218 = load i32, i32* @O_APPEND, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @O_CREAT, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @open(i8* %216, i32 %221, i32 420)
  store i32 %222, i32* @targ_fd, align 4
  %223 = load i32, i32* @targ_fd, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %209
  %226 = load i32, i32* @stderr, align 4
  %227 = load i8*, i8** @targ_fname, align 8
  %228 = call i32 (i32, i8*, ...) @fprintf(i32 %226, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %227)
  store i32 1, i32* %3, align 4
  br label %356

229:                                              ; preds = %209
  %230 = load i32, i32* @targ_fd, align 4
  %231 = load i32, i32* @SEEK_END, align 4
  %232 = call i64 @lseek(i32 %230, i32 0, i32 %231)
  store i64 %232, i64* @targ_orig_size, align 8
  %233 = load i64, i64* @targ_orig_size, align 8
  %234 = icmp sgt i64 %233, 0
  %235 = zext i1 %234 to i32
  store i32 %235, i32* @targ_existed, align 4
  br label %237

236:                                              ; preds = %202
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %237

237:                                              ; preds = %236, %229
  %238 = load i32, i32* @jump_log_pos, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %287

240:                                              ; preds = %237
  store i32 256, i32* @log_limit_pos, align 4
  store i32 1, i32* @immediate_exit, align 4
  %241 = call i32 @replay_log(i32 0, i32 1)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* @list_id_ints, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %240
  %245 = load i32, i32* @stderr, align 4
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %247 = call i32 @exit(i32 1) #3
  unreachable

248:                                              ; preds = %240
  %249 = load i32, i32* @keep_log_limit_pos, align 4
  store i32 %249, i32* @log_limit_pos, align 4
  store i32 0, i32* @immediate_exit, align 4
  %250 = call i32 (...) @clear_log()
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %252 = call i32 @close_binlog(%struct.TYPE_8__* %251, i32 1)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @Binlog, align 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %254 = load i32, i32* @jump_log_pos, align 4
  %255 = call %struct.TYPE_8__* @open_binlog(%struct.TYPE_9__* %253, i32 %254)
  store %struct.TYPE_8__* %255, %struct.TYPE_8__** @Binlog, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %257 = icmp ne %struct.TYPE_8__* %256, null
  br i1 %257, label %266, label %258

258:                                              ; preds = %248
  %259 = load i32, i32* @stderr, align 4
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = load i32, i32* @jump_log_pos, align 4
  %264 = call i32 (i32, i8*, ...) @fprintf(i32 %259, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i8* %262, i32 %263)
  %265 = call i32 @exit(i32 1) #3
  unreachable

266:                                              ; preds = %248
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  store i8* %271, i8** @binlogname, align 8
  %272 = load i64, i64* @verbosity, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = load i32, i32* @stderr, align 4
  %276 = load i8*, i8** @binlogname, align 8
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @jump_log_pos, align 4
  %283 = call i32 (i32, i8*, ...) @fprintf(i32 %275, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0), i8* %276, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %274, %266
  %285 = load i32, i32* @jump_log_pos, align 4
  %286 = call i32 @init_log_data(i32 %285, i32 0, i32 0)
  br label %287

287:                                              ; preds = %284, %237
  %288 = call i32 @replay_log(i32 0, i32 1)
  store i32 %288, i32* %6, align 4
  %289 = load i32, i32* %6, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = load i32, i32* @stderr, align 4
  %293 = call i32 (i32, i8*, ...) @fprintf(i32 %292, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %294 = call i32 @exit(i32 1) #3
  unreachable

295:                                              ; preds = %287
  %296 = load i32, i32* @log_limit_pos, align 4
  %297 = icmp sge i32 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %295
  %299 = load i32, i32* @log_readto_pos, align 4
  %300 = load i32, i32* @log_limit_pos, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %308

302:                                              ; preds = %298
  %303 = load i32, i32* @stderr, align 4
  %304 = load i32, i32* @log_readto_pos, align 4
  %305 = load i32, i32* @log_limit_pos, align 4
  %306 = call i32 (i32, i8*, ...) @fprintf(i32 %303, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 %304, i32 %305)
  %307 = call i32 @exit(i32 1) #3
  unreachable

308:                                              ; preds = %298, %295
  %309 = load i64, i64* @targ_orig_size, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %334, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* @jump_log_pos, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %334, label %314

314:                                              ; preds = %311
  %315 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0))
  %316 = call %struct.lev_crc32* @write_alloc(i32 20)
  store %struct.lev_crc32* %316, %struct.lev_crc32** %8, align 8
  %317 = load i32, i32* @LEV_CRC32, align 4
  %318 = load %struct.lev_crc32*, %struct.lev_crc32** %8, align 8
  %319 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %318, i32 0, i32 3
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* @last_timestamp, align 4
  %321 = load %struct.lev_crc32*, %struct.lev_crc32** %8, align 8
  %322 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %321, i32 0, i32 2
  store i32 %320, i32* %322, align 4
  %323 = load i32, i32* @wr_bytes, align 4
  %324 = load %struct.lev_crc32*, %struct.lev_crc32** %8, align 8
  %325 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %324, i32 0, i32 0
  store i32 %323, i32* %325, align 4
  %326 = load i32, i32* @wr_crc32_complement, align 4
  %327 = xor i32 %326, -1
  %328 = load %struct.lev_crc32*, %struct.lev_crc32** %8, align 8
  %329 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* @wr_bytes, align 4
  %331 = add nsw i32 %330, 20
  store i32 %331, i32* @wr_bytes, align 4
  %332 = load i32, i32* @wr_rec, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* @wr_rec, align 4
  br label %334

334:                                              ; preds = %314, %311, %308
  %335 = call i32 (...) @flush_out()
  %336 = load i32, i32* @targ_fd, align 4
  %337 = icmp ne i32 %336, 1
  br i1 %337, label %338, label %350

338:                                              ; preds = %334
  %339 = load i32, i32* @targ_fd, align 4
  %340 = call i64 @fdatasync(i32 %339)
  %341 = icmp slt i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %338
  %343 = load i32, i32* @stderr, align 4
  %344 = load i8*, i8** @targ_fname, align 8
  %345 = call i32 (i32, i8*, ...) @fprintf(i32 %343, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %344)
  %346 = call i32 @exit(i32 1) #3
  unreachable

347:                                              ; preds = %338
  %348 = load i32, i32* @targ_fd, align 4
  %349 = call i32 @close(i32 %348)
  br label %350

350:                                              ; preds = %347, %334
  %351 = load i64, i64* @verbosity, align 8
  %352 = icmp sgt i64 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  %354 = call i32 (...) @output_stats()
  br label %355

355:                                              ; preds = %353, %350
  store i32 0, i32* %3, align 4
  br label %356

356:                                              ; preds = %355, %225, %145, %125, %76, %64, %60, %39, %24
  %357 = load i32, i32* %3, align 4
  ret i32 %357
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @kprintf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @open_binlog(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i32, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @close_binlog(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.lev_crc32* @write_alloc(i32) #1

declare dso_local i32 @flush_out(...) #1

declare dso_local i64 @fdatasync(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @output_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
