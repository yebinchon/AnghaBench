; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-log-split.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-log-split.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"hvu:m:s:t:D\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@copy_rem = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i64 0, align 8
@log_limit_pos = common dso_local global i64 0, align 8
@keep_log_limit_pos = common dso_local global i64 0, align 8
@disable_crc32 = common dso_local global i32 0, align 4
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
@.str.13 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

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

10:                                               ; preds = %43, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %43 [
    i32 118, label %17
    i32 104, label %18
    i32 117, label %20
    i32 109, label %22
    i32 115, label %36
    i32 116, label %39
    i32 68, label %42
  ]

17:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %43

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %224

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @username, align 8
  br label %43

22:                                               ; preds = %15
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @copy_rem, i32* @copy_mod)
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @copy_rem, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @copy_rem, align 4
  %31 = load i32, i32* @copy_mod, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %26, %22
  %34 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %224

35:                                               ; preds = %29
  br label %43

36:                                               ; preds = %15
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i64 @atoll(i8* %37)
  store i64 %38, i64* @jump_log_pos, align 8
  br label %43

39:                                               ; preds = %15
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i64 @atoll(i8* %40)
  store i64 %41, i64* @log_limit_pos, align 8
  store i64 %41, i64* @keep_log_limit_pos, align 8
  br label %43

42:                                               ; preds = %15
  store i32 3, i32* @disable_crc32, align 4
  br label %43

43:                                               ; preds = %15, %42, %39, %36, %35, %20, %17
  br label %10

44:                                               ; preds = %10
  %45 = load i32, i32* @optind, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @optind, align 4
  %50 = add nsw i32 %49, 2
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %44
  %54 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %224

55:                                               ; preds = %48
  %56 = load i64, i64* @log_limit_pos, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i64, i64* @jump_log_pos, align 8
  %60 = load i64, i64* @log_limit_pos, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @stderr, align 4
  %64 = load i64, i64* @jump_log_pos, align 8
  %65 = load i64, i64* @log_limit_pos, align 8
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %64, i64 %65)
  store i32 2, i32* %3, align 4
  br label %224

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i8*, i8** @username, align 8
  %70 = call i64 @change_user(i8* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8*, i8** @username, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i8*, i8** @username, align 8
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i8* [ %77, %76 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %78 ]
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  store i32 1, i32* %3, align 4
  br label %224

82:                                               ; preds = %68
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* @optind, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** @binlogname, align 8
  %89 = call i64 @engine_preload_filelist(i8* %87, i8* %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %82
  %92 = load i32, i32* @stderr, align 4
  %93 = load i8*, i8** @binlogname, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i8*, i8** @binlogname, align 8
  br label %103

97:                                               ; preds = %91
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* @optind, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  br label %103

103:                                              ; preds = %97, %95
  %104 = phi i8* [ %96, %95 ], [ %102, %97 ]
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  %106 = call i32 @exit(i32 1) #3
  unreachable

107:                                              ; preds = %82
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %109 = load i64, i64* @jump_log_pos, align 8
  %110 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %108, i64 %109)
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** @Binlog, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %112 = icmp ne %struct.TYPE_7__* %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @stderr, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i64, i64* @jump_log_pos, align 8
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %117, i64 %118)
  %120 = call i32 @exit(i32 1) #3
  unreachable

121:                                              ; preds = %107
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** @binlogname, align 8
  %127 = load i64, i64* @verbosity, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %121
  %130 = load i32, i32* @stderr, align 4
  %131 = load i8*, i8** @binlogname, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %131, i32 %136)
  br label %138

138:                                              ; preds = %129, %121
  %139 = call i32 (...) @clear_log()
  %140 = load i64, i64* @jump_log_pos, align 8
  %141 = call i32 @init_log_data(i64 %140, i32 0, i32 0)
  %142 = load i64, i64* @jump_log_pos, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = call i32 @init_search_data(i32 0)
  br label %146

146:                                              ; preds = %144, %138
  %147 = load i32, i32* @optind, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %4, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %178

151:                                              ; preds = %146
  %152 = load i8**, i8*** %5, align 8
  %153 = load i32, i32* @optind, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %152, i64 %155
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** @targ_fname, align 8
  %158 = load i8*, i8** @targ_fname, align 8
  %159 = load i32, i32* @O_WRONLY, align 4
  %160 = load i32, i32* @O_APPEND, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @O_CREAT, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @open(i8* %158, i32 %163, i32 420)
  store i32 %164, i32* @targ_fd, align 4
  %165 = load i32, i32* @targ_fd, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %151
  %168 = load i32, i32* @stderr, align 4
  %169 = load i8*, i8** @targ_fname, align 8
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %169)
  store i32 1, i32* %3, align 4
  br label %224

171:                                              ; preds = %151
  %172 = load i32, i32* @targ_fd, align 4
  %173 = load i32, i32* @SEEK_END, align 4
  %174 = call i64 @lseek(i32 %172, i32 0, i32 %173)
  store i64 %174, i64* @targ_orig_size, align 8
  %175 = load i64, i64* @targ_orig_size, align 8
  %176 = icmp sgt i64 %175, 0
  %177 = zext i1 %176 to i32
  store i32 %177, i32* @targ_existed, align 4
  br label %179

178:                                              ; preds = %146
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %179

179:                                              ; preds = %178, %171
  %180 = call i32 @replay_log(i32 0, i32 1)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32, i32* @stderr, align 4
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %186 = call i32 @exit(i32 1) #3
  unreachable

187:                                              ; preds = %179
  %188 = load i64, i64* @log_limit_pos, align 8
  %189 = icmp sge i64 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %187
  %191 = load i64, i64* @log_readto_pos, align 8
  %192 = load i64, i64* @log_limit_pos, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i32, i32* @stderr, align 4
  %196 = load i64, i64* @log_readto_pos, align 8
  %197 = load i64, i64* @log_limit_pos, align 8
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i64 %196, i64 %197)
  %199 = call i32 @exit(i32 1) #3
  unreachable

200:                                              ; preds = %190, %187
  %201 = call i32 (...) @flush_out()
  %202 = load i32, i32* @targ_fd, align 4
  %203 = icmp ne i32 %202, 1
  br i1 %203, label %204, label %216

204:                                              ; preds = %200
  %205 = load i32, i32* @targ_fd, align 4
  %206 = call i64 @fdatasync(i32 %205)
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i32, i32* @stderr, align 4
  %210 = load i8*, i8** @targ_fname, align 8
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %210)
  %212 = call i32 @exit(i32 1) #3
  unreachable

213:                                              ; preds = %204
  %214 = load i32, i32* @targ_fd, align 4
  %215 = call i32 @close(i32 %214)
  br label %216

216:                                              ; preds = %213, %200
  %217 = load i64, i64* @verbosity, align 8
  %218 = icmp sgt i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = call i32 (...) @output_stats()
  br label %221

221:                                              ; preds = %219, %216
  %222 = call i32 (...) @log_cur_pos()
  %223 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %222)
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %221, %167, %79, %62, %53, %33, %18
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i64 @atoll(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @init_search_data(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @flush_out(...) #1

declare dso_local i64 @fdatasync(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @output_stats(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
