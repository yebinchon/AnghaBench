; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-log-split.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-log-split.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"C:LS:hm:s:t:u:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@output_cache_id = common dso_local global i8* null, align 8
@write_local_copies_logevents = common dso_local global i32 0, align 4
@start_timestamp = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"start_timestamps could be after current time\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@copy_rem = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i64 0, align 8
@log_limit_pos = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unimplemented option -%c\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"fatal: log start position %lld after stop position %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@binlogname = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_8__* null, align 8
@Binlog = common dso_local global %struct.TYPE_7__* null, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@targ_orig_size = common dso_local global i64 0, align 8
@targ_existed = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"You couldn't specify '-C %d' and existed target together.\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"fatal: binlog read up to position %lld instead of %lld\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

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

10:                                               ; preds = %62, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %63

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %56 [
    i32 67, label %17
    i32 76, label %20
    i32 83, label %21
    i32 104, label %31
    i32 109, label %33
    i32 115, label %47
    i32 116, label %50
    i32 117, label %53
    i32 118, label %55
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i8* @atoi(i8* %18)
  store i8* %19, i8** @output_cache_id, align 8
  br label %62

20:                                               ; preds = %15
  store i32 0, i32* @write_local_copies_logevents, align 4
  br label %62

21:                                               ; preds = %15
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i8* @atoi(i8* %22)
  store i8* %23, i8** @start_timestamp, align 8
  %24 = load i8*, i8** @start_timestamp, align 8
  %25 = call i8* @time(i32* null)
  %26 = icmp ugt i8* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %21
  br label %62

31:                                               ; preds = %15
  %32 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %237

33:                                               ; preds = %15
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* @copy_rem, i32* @copy_mod)
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @copy_rem, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @copy_rem, align 4
  %42 = load i32, i32* @copy_mod, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %37, %33
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %40
  br label %62

47:                                               ; preds = %15
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i64 @atoll(i8* %48)
  store i64 %49, i64* @jump_log_pos, align 8
  br label %62

50:                                               ; preds = %15
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i64 @atoll(i8* %51)
  store i64 %52, i64* @log_limit_pos, align 8
  br label %62

53:                                               ; preds = %15
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** @username, align 8
  br label %62

55:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %62

56:                                               ; preds = %15
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* %6, align 4
  %59 = trunc i32 %58 to i8
  %60 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8 signext %59)
  %61 = call i32 @exit(i32 1) #3
  unreachable

62:                                               ; preds = %55, %53, %50, %47, %46, %30, %20, %17
  br label %10

63:                                               ; preds = %10
  %64 = load i32, i32* @optind, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @optind, align 4
  %69 = add nsw i32 %68, 2
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %63
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i64, i64* @log_limit_pos, align 8
  %76 = icmp sge i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i64, i64* @jump_log_pos, align 8
  %79 = load i64, i64* @log_limit_pos, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* @jump_log_pos, align 8
  %83 = load i64, i64* @log_limit_pos, align 8
  %84 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %82, i64 %83)
  store i32 2, i32* %3, align 4
  br label %237

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i8*, i8** @username, align 8
  %88 = call i64 @change_user(i8* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i8*, i8** @username, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i8*, i8** @username, align 8
  br label %96

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i8* [ %94, %93 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %95 ]
  %98 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  store i32 1, i32* %3, align 4
  br label %237

99:                                               ; preds = %86
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* @optind, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** @binlogname, align 8
  %106 = call i64 @engine_preload_filelist(i8* %104, i8* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %99
  %109 = load i8*, i8** @binlogname, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i8*, i8** @binlogname, align 8
  br label %119

113:                                              ; preds = %108
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* @optind, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  br label %119

119:                                              ; preds = %113, %111
  %120 = phi i8* [ %112, %111 ], [ %118, %113 ]
  %121 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %120)
  %122 = call i32 @exit(i32 1) #3
  unreachable

123:                                              ; preds = %99
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %125 = load i64, i64* @jump_log_pos, align 8
  %126 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %124, i64 %125)
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** @Binlog, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %128 = icmp ne %struct.TYPE_7__* %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %132, i64 0)
  %134 = call i32 @exit(i32 1) #3
  unreachable

135:                                              ; preds = %123
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** @binlogname, align 8
  %141 = load i8*, i8** @binlogname, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %141, i32 %146)
  %148 = call i32 (...) @clear_log()
  %149 = load i64, i64* @jump_log_pos, align 8
  %150 = call i32 @init_log_data(i64 %149, i32 0, i32 0)
  %151 = load i64, i64* @jump_log_pos, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %135
  %154 = call i32 @init_cache_data(i32 0)
  br label %155

155:                                              ; preds = %153, %135
  %156 = load i32, i32* @optind, align 4
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %4, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %186

160:                                              ; preds = %155
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* @optind, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %161, i64 %164
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** @targ_fname, align 8
  %167 = load i8*, i8** @targ_fname, align 8
  %168 = load i32, i32* @O_WRONLY, align 4
  %169 = load i32, i32* @O_APPEND, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @O_CREAT, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @open(i8* %167, i32 %172, i32 420)
  store i32 %173, i32* @targ_fd, align 4
  %174 = load i32, i32* @targ_fd, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %160
  %177 = load i8*, i8** @targ_fname, align 8
  %178 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %177)
  store i32 1, i32* %3, align 4
  br label %237

179:                                              ; preds = %160
  %180 = load i32, i32* @targ_fd, align 4
  %181 = load i32, i32* @SEEK_END, align 4
  %182 = call i64 @lseek(i32 %180, i32 0, i32 %181)
  store i64 %182, i64* @targ_orig_size, align 8
  %183 = load i64, i64* @targ_orig_size, align 8
  %184 = icmp sgt i64 %183, 0
  %185 = zext i1 %184 to i32
  store i32 %185, i32* @targ_existed, align 4
  br label %187

186:                                              ; preds = %155
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %187

187:                                              ; preds = %186, %179
  %188 = load i8*, i8** @output_cache_id, align 8
  %189 = icmp ugt i8* %188, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load i32, i32* @targ_existed, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i8*, i8** @output_cache_id, align 8
  %195 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i8* %194)
  %196 = call i32 @exit(i32 1) #3
  unreachable

197:                                              ; preds = %190, %187
  %198 = call i32 @replay_log(i32 0, i32 1)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %203 = call i32 @exit(i32 1) #3
  unreachable

204:                                              ; preds = %197
  %205 = load i64, i64* @log_limit_pos, align 8
  %206 = icmp sge i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i64, i64* @log_readto_pos, align 8
  %209 = load i64, i64* @log_limit_pos, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load i64, i64* @log_readto_pos, align 8
  %213 = load i64, i64* @log_limit_pos, align 8
  %214 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i64 %212, i64 %213)
  %215 = call i32 @exit(i32 1) #3
  unreachable

216:                                              ; preds = %207, %204
  %217 = call i32 (...) @flush_out()
  %218 = load i32, i32* @targ_fd, align 4
  %219 = icmp ne i32 %218, 1
  br i1 %219, label %220, label %231

220:                                              ; preds = %216
  %221 = load i32, i32* @targ_fd, align 4
  %222 = call i64 @fdatasync(i32 %221)
  %223 = icmp slt i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i8*, i8** @targ_fname, align 8
  %226 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %225)
  %227 = call i32 @exit(i32 1) #3
  unreachable

228:                                              ; preds = %220
  %229 = load i32, i32* @targ_fd, align 4
  %230 = call i32 @close(i32 %229)
  br label %231

231:                                              ; preds = %228, %216
  %232 = load i64, i64* @verbosity, align 8
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i32 (...) @output_stats()
  br label %236

236:                                              ; preds = %234, %231
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %236, %176, %96, %81, %31
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @time(i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i64 @atoll(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @init_cache_data(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

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
