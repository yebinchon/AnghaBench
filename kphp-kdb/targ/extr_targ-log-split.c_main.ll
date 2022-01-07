; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"fhvu:m:s:t:q:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@skip_rotate = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@split_quotient = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@copy_rem = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@log_limit_pos = common dso_local global i32 0, align 4
@keep_log_limit_pos = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"fatal: log start position %lld after stop position %lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@binlogname = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_9__* null, align 8
@Binlog = common dso_local global %struct.TYPE_8__* null, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@targ_orig_size = common dso_local global i64 0, align 8
@targ_existed = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@immediate_exit = common dso_local global i32 0, align 4
@disable_crc32 = common dso_local global i32 0, align 4
@split_mod = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"fatal: cannot parse first LEV_START entry\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"replaying binlog file %s (size %lld) from log position %lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@log_readto_pos = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"fatal: binlog read up to position %lld instead of %lld\0A\00", align 1
@MAX_AD_ID = common dso_local global i32 0, align 4
@Views = common dso_local global i64* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

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

10:                                               ; preds = %48, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %48 [
    i32 118, label %17
    i32 102, label %20
    i32 104, label %21
    i32 117, label %23
    i32 113, label %25
    i32 109, label %28
    i32 115, label %42
    i32 116, label %45
  ]

17:                                               ; preds = %15
  %18 = load i64, i64* @verbosity, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @verbosity, align 8
  br label %48

20:                                               ; preds = %15
  store i32 1, i32* @skip_rotate, align 4
  br label %48

21:                                               ; preds = %15
  %22 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %304

23:                                               ; preds = %15
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** @username, align 8
  br label %48

25:                                               ; preds = %15
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @atoi(i8* %26)
  store i32 %27, i32* @split_quotient, align 4
  br label %48

28:                                               ; preds = %15
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
  br label %304

41:                                               ; preds = %35
  br label %48

42:                                               ; preds = %15
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @atoll(i8* %43)
  store i32 %44, i32* @jump_log_pos, align 4
  br label %48

45:                                               ; preds = %15
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @atoll(i8* %46)
  store i32 %47, i32* @log_limit_pos, align 4
  store i32 %47, i32* @keep_log_limit_pos, align 4
  br label %48

48:                                               ; preds = %15, %45, %42, %41, %25, %23, %20, %17
  br label %10

49:                                               ; preds = %10
  %50 = load i32, i32* @optind, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @optind, align 4
  %55 = add nsw i32 %54, 2
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @copy_mod, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58, %53, %49
  %62 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %304

63:                                               ; preds = %58
  %64 = load i32, i32* @split_quotient, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* @copy_mod, align 4
  %68 = load i32, i32* @split_quotient, align 4
  %69 = srem i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %304

73:                                               ; preds = %66, %63
  %74 = load i32, i32* @log_limit_pos, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* @jump_log_pos, align 4
  %78 = load i32, i32* @log_limit_pos, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* @jump_log_pos, align 4
  %83 = load i32, i32* @log_limit_pos, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  store i32 2, i32* %3, align 4
  br label %304

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i8*, i8** @username, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i8*, i8** @username, align 8
  %91 = call i64 @change_user(i8* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i32, i32* @stderr, align 4
  %95 = load i8*, i8** @username, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i8*, i8** @username, align 8
  br label %100

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i8* [ %98, %97 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %99 ]
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  store i32 1, i32* %3, align 4
  br label %304

103:                                              ; preds = %89, %86
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* @optind, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** @binlogname, align 8
  %110 = call i64 @engine_preload_filelist(i8* %108, i8* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %103
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** @binlogname, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i8*, i8** @binlogname, align 8
  br label %124

118:                                              ; preds = %112
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* @optind, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  br label %124

124:                                              ; preds = %118, %116
  %125 = phi i8* [ %117, %116 ], [ %123, %118 ]
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %125)
  %127 = call i32 @exit(i32 1) #3
  unreachable

128:                                              ; preds = %103
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %130 = call %struct.TYPE_8__* @open_binlog(%struct.TYPE_9__* %129, i32 0)
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** @Binlog, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %132 = icmp ne %struct.TYPE_8__* %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* @stderr, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %137, i64 0)
  %139 = call i32 @exit(i32 1) #3
  unreachable

140:                                              ; preds = %128
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** @binlogname, align 8
  %146 = load i64, i64* @verbosity, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %140
  %149 = load i32, i32* @stderr, align 4
  %150 = load i8*, i8** @binlogname, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %150, i32 %155)
  br label %157

157:                                              ; preds = %148, %140
  %158 = call i32 (...) @clear_log()
  %159 = call i32 @init_log_data(i32 0, i32 0, i32 0)
  %160 = load i32, i32* @optind, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* %4, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %191

164:                                              ; preds = %157
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* @optind, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** @targ_fname, align 8
  %171 = load i8*, i8** @targ_fname, align 8
  %172 = load i32, i32* @O_WRONLY, align 4
  %173 = load i32, i32* @O_APPEND, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @O_CREAT, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @open(i8* %171, i32 %176, i32 420)
  store i32 %177, i32* @targ_fd, align 4
  %178 = load i32, i32* @targ_fd, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %164
  %181 = load i32, i32* @stderr, align 4
  %182 = load i8*, i8** @targ_fname, align 8
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %182)
  store i32 1, i32* %3, align 4
  br label %304

184:                                              ; preds = %164
  %185 = load i32, i32* @targ_fd, align 4
  %186 = load i32, i32* @SEEK_END, align 4
  %187 = call i64 @lseek(i32 %185, i32 0, i32 %186)
  store i64 %187, i64* @targ_orig_size, align 8
  %188 = load i64, i64* @targ_orig_size, align 8
  %189 = icmp sgt i64 %188, 0
  %190 = zext i1 %189 to i32
  store i32 %190, i32* @targ_existed, align 4
  br label %192

191:                                              ; preds = %157
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %192

192:                                              ; preds = %191, %184
  %193 = load i32, i32* @jump_log_pos, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %242

195:                                              ; preds = %192
  store i32 256, i32* @log_limit_pos, align 4
  store i32 1, i32* @immediate_exit, align 4
  store i32 3, i32* @disable_crc32, align 4
  %196 = call i32 @replay_log(i32 0, i32 1)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* @split_mod, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* @stderr, align 4
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %202 = call i32 @exit(i32 1) #3
  unreachable

203:                                              ; preds = %195
  %204 = load i32, i32* @keep_log_limit_pos, align 4
  store i32 %204, i32* @log_limit_pos, align 4
  store i32 0, i32* @immediate_exit, align 4
  %205 = call i32 (...) @clear_log()
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %207 = call i32 @close_binlog(%struct.TYPE_8__* %206, i32 1)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @Binlog, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %209 = load i32, i32* @jump_log_pos, align 4
  %210 = call %struct.TYPE_8__* @open_binlog(%struct.TYPE_9__* %208, i32 %209)
  store %struct.TYPE_8__* %210, %struct.TYPE_8__** @Binlog, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %212 = icmp ne %struct.TYPE_8__* %211, null
  br i1 %212, label %221, label %213

213:                                              ; preds = %203
  %214 = load i32, i32* @stderr, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* @jump_log_pos, align 4
  %219 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %217, i32 %218)
  %220 = call i32 @exit(i32 1) #3
  unreachable

221:                                              ; preds = %203
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  store i8* %226, i8** @binlogname, align 8
  %227 = load i64, i64* @verbosity, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %221
  %230 = load i32, i32* @stderr, align 4
  %231 = load i8*, i8** @binlogname, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @jump_log_pos, align 4
  %238 = call i32 (i32, i8*, ...) @fprintf(i32 %230, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i8* %231, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %229, %221
  %240 = load i32, i32* @jump_log_pos, align 4
  %241 = call i32 @init_log_data(i32 %240, i32 0, i32 0)
  br label %242

242:                                              ; preds = %239, %192
  store i32 3, i32* @disable_crc32, align 4
  %243 = call i32 @replay_log(i32 0, i32 1)
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* %6, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load i32, i32* @stderr, align 4
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %249 = call i32 @exit(i32 1) #3
  unreachable

250:                                              ; preds = %242
  %251 = load i32, i32* @log_limit_pos, align 4
  %252 = icmp sge i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %250
  %254 = load i32, i32* @log_readto_pos, align 4
  %255 = load i32, i32* @log_limit_pos, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load i32, i32* @stderr, align 4
  %259 = load i32, i32* @log_readto_pos, align 4
  %260 = load i32, i32* @log_limit_pos, align 4
  %261 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 %259, i32 %260)
  %262 = call i32 @exit(i32 1) #3
  unreachable

263:                                              ; preds = %253, %250
  store i32 0, i32* %6, align 4
  br label %264

264:                                              ; preds = %279, %263
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* @MAX_AD_ID, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %282

268:                                              ; preds = %264
  %269 = load i64*, i64** @Views, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %269, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = load i32, i32* %6, align 4
  %277 = call i32 @flush_views(i32 %276)
  br label %278

278:                                              ; preds = %275, %268
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %6, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %6, align 4
  br label %264

282:                                              ; preds = %264
  %283 = call i32 (...) @flush_out()
  %284 = load i32, i32* @targ_fd, align 4
  %285 = icmp ne i32 %284, 1
  br i1 %285, label %286, label %298

286:                                              ; preds = %282
  %287 = load i32, i32* @targ_fd, align 4
  %288 = call i64 @fdatasync(i32 %287)
  %289 = icmp slt i64 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %286
  %291 = load i32, i32* @stderr, align 4
  %292 = load i8*, i8** @targ_fname, align 8
  %293 = call i32 (i32, i8*, ...) @fprintf(i32 %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %292)
  %294 = call i32 @exit(i32 1) #3
  unreachable

295:                                              ; preds = %286
  %296 = load i32, i32* @targ_fd, align 4
  %297 = call i32 @close(i32 %296)
  br label %298

298:                                              ; preds = %295, %282
  %299 = load i64, i64* @verbosity, align 8
  %300 = icmp sgt i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = call i32 (...) @output_stats()
  br label %303

303:                                              ; preds = %301, %298
  store i32 0, i32* %3, align 4
  br label %304

304:                                              ; preds = %303, %180, %100, %80, %71, %61, %39, %21
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_8__* @open_binlog(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i32, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @close_binlog(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @flush_views(i32) #1

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
