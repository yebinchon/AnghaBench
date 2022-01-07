; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-log-split.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-log-split.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"hvu:m:s:t:p\00", align 1
@positive_counter_fits = common dso_local global i32 0, align 4
@fits = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@copy_rem = common dso_local global i64 0, align 8
@copy_mod = common dso_local global i64 0, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@log_limit_pos = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"fatal: log start position %lld after stop position %lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@binlogname = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_8__* null, align 8
@Binlog = common dso_local global %struct.TYPE_7__* null, align 8
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
@.str.10 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [56 x i8] c"fatal: binlog read up to position %lld instead of %lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

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

10:                                               ; preds = %44, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %44 [
    i32 112, label %17
    i32 118, label %19
    i32 104, label %20
    i32 117, label %22
    i32 109, label %24
    i32 115, label %38
    i32 116, label %41
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @positive_counter_fits, align 4
  store i32 %18, i32* @fits, align 4
  br label %44

19:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %44

20:                                               ; preds = %15
  %21 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %230

22:                                               ; preds = %15
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @username, align 8
  br label %44

24:                                               ; preds = %15
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* @copy_rem, i64* @copy_mod)
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @copy_rem, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @copy_rem, align 8
  %33 = load i64, i64* @copy_mod, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %28, %24
  %36 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %230

37:                                               ; preds = %31
  br label %44

38:                                               ; preds = %15
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i64 @atoll(i8* %39)
  store i64 %40, i64* @jump_log_pos, align 8
  br label %44

41:                                               ; preds = %15
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i64 @atoll(i8* %42)
  store i64 %43, i64* @log_limit_pos, align 8
  br label %44

44:                                               ; preds = %15, %41, %38, %37, %22, %19, %17
  br label %10

45:                                               ; preds = %10
  %46 = load i64, i64* @copy_mod, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %230

50:                                               ; preds = %45
  %51 = load i32, i32* @optind, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @optind, align 4
  %56 = add nsw i32 %55, 2
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %50
  %60 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %230

61:                                               ; preds = %54
  %62 = load i64, i64* @log_limit_pos, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i64, i64* @jump_log_pos, align 8
  %66 = load i64, i64* @log_limit_pos, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @stderr, align 4
  %70 = load i64, i64* @jump_log_pos, align 8
  %71 = load i64, i64* @log_limit_pos, align 8
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %70, i64 %71)
  store i32 2, i32* %3, align 4
  br label %230

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i8*, i8** @username, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i8*, i8** @username, align 8
  %79 = call i64 @change_user(i8* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8*, i8** @username, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i8*, i8** @username, align 8
  br label %88

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i8* [ %86, %85 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %87 ]
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  store i32 1, i32* %3, align 4
  br label %230

91:                                               ; preds = %77, %74
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* @optind, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** @binlogname, align 8
  %98 = call i64 @engine_preload_filelist(i8* %96, i8* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %91
  %101 = load i32, i32* @stderr, align 4
  %102 = load i8*, i8** @binlogname, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i8*, i8** @binlogname, align 8
  br label %112

106:                                              ; preds = %100
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* @optind, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  br label %112

112:                                              ; preds = %106, %104
  %113 = phi i8* [ %105, %104 ], [ %111, %106 ]
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  %115 = call i32 @exit(i32 1) #3
  unreachable

116:                                              ; preds = %91
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %118 = load i64, i64* @jump_log_pos, align 8
  %119 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %117, i64 %118)
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** @Binlog, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %121 = icmp ne %struct.TYPE_7__* %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @stderr, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %126, i64 0)
  %128 = call i32 @exit(i32 1) #3
  unreachable

129:                                              ; preds = %116
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** @binlogname, align 8
  %135 = load i64, i64* @verbosity, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %129
  %138 = load i32, i32* @stderr, align 4
  %139 = load i8*, i8** @binlogname, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %139, i32 %144)
  br label %146

146:                                              ; preds = %137, %129
  %147 = call i32 (...) @clear_log()
  %148 = load i64, i64* @jump_log_pos, align 8
  %149 = call i32 @init_log_data(i64 %148, i32 0, i32 0)
  %150 = load i64, i64* @jump_log_pos, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = call i32 @init_stats_data(i32 0)
  br label %154

154:                                              ; preds = %152, %146
  %155 = load i32, i32* @optind, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* %4, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %186

159:                                              ; preds = %154
  %160 = load i8**, i8*** %5, align 8
  %161 = load i32, i32* @optind, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** @targ_fname, align 8
  %166 = load i8*, i8** @targ_fname, align 8
  %167 = load i32, i32* @O_WRONLY, align 4
  %168 = load i32, i32* @O_APPEND, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @O_CREAT, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @open(i8* %166, i32 %171, i32 420)
  store i32 %172, i32* @targ_fd, align 4
  %173 = load i32, i32* @targ_fd, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %159
  %176 = load i32, i32* @stderr, align 4
  %177 = load i8*, i8** @targ_fname, align 8
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %177)
  store i32 1, i32* %3, align 4
  br label %230

179:                                              ; preds = %159
  %180 = load i32, i32* @targ_fd, align 4
  %181 = load i32, i32* @SEEK_END, align 4
  %182 = call i64 @lseek(i32 %180, i32 0, i32 %181)
  store i64 %182, i64* @targ_orig_size, align 8
  %183 = load i64, i64* @targ_orig_size, align 8
  %184 = icmp sgt i64 %183, 0
  %185 = zext i1 %184 to i32
  store i32 %185, i32* @targ_existed, align 4
  br label %187

186:                                              ; preds = %154
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %187

187:                                              ; preds = %186, %179
  %188 = call i32 @replay_log(i32 0, i32 1)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32, i32* @stderr, align 4
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %194 = call i32 @exit(i32 1) #3
  unreachable

195:                                              ; preds = %187
  %196 = load i64, i64* @log_limit_pos, align 8
  %197 = icmp sge i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i64, i64* @log_readto_pos, align 8
  %200 = load i64, i64* @log_limit_pos, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = load i32, i32* @stderr, align 4
  %204 = load i64, i64* @log_readto_pos, align 8
  %205 = load i64, i64* @log_limit_pos, align 8
  %206 = call i32 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i64 %204, i64 %205)
  %207 = call i32 @exit(i32 1) #3
  unreachable

208:                                              ; preds = %198, %195
  %209 = call i32 (...) @flush_out()
  %210 = load i32, i32* @targ_fd, align 4
  %211 = icmp ne i32 %210, 1
  br i1 %211, label %212, label %224

212:                                              ; preds = %208
  %213 = load i32, i32* @targ_fd, align 4
  %214 = call i64 @fdatasync(i32 %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load i32, i32* @stderr, align 4
  %218 = load i8*, i8** @targ_fname, align 8
  %219 = call i32 (i32, i8*, ...) @fprintf(i32 %217, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %218)
  %220 = call i32 @exit(i32 1) #3
  unreachable

221:                                              ; preds = %212
  %222 = load i32, i32* @targ_fd, align 4
  %223 = call i32 @close(i32 %222)
  br label %224

224:                                              ; preds = %221, %208
  %225 = load i64, i64* @verbosity, align 8
  %226 = icmp sgt i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = call i32 (...) @output_stats()
  br label %229

229:                                              ; preds = %227, %224
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %229, %175, %88, %68, %59, %48, %35, %20
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i64 @atoll(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @init_stats_data(i32) #1

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
