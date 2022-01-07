; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-log-split.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-log-split.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"hvu:m:s:t:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@copy_rem = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
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

10:                                               ; preds = %42, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %43

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %42 [
    i32 118, label %17
    i32 104, label %18
    i32 117, label %20
    i32 109, label %22
    i32 115, label %36
    i32 116, label %39
  ]

17:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %42

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %226

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @username, align 8
  br label %42

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
  br label %226

35:                                               ; preds = %29
  br label %42

36:                                               ; preds = %15
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i64 @atoll(i8* %37)
  store i64 %38, i64* @jump_log_pos, align 8
  br label %42

39:                                               ; preds = %15
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i64 @atoll(i8* %40)
  store i64 %41, i64* @log_limit_pos, align 8
  br label %42

42:                                               ; preds = %15, %39, %36, %35, %20, %17
  br label %10

43:                                               ; preds = %10
  %44 = load i32, i32* @optind, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @optind, align 4
  %49 = add nsw i32 %48, 2
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %43
  %53 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %226

54:                                               ; preds = %47
  %55 = load i64, i64* @log_limit_pos, align 8
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i64, i64* @jump_log_pos, align 8
  %59 = load i64, i64* @log_limit_pos, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* @stderr, align 4
  %63 = load i64, i64* @jump_log_pos, align 8
  %64 = load i64, i64* @log_limit_pos, align 8
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %64)
  store i32 2, i32* %3, align 4
  br label %226

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i8*, i8** @username, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i8*, i8** @username, align 8
  %72 = call i64 @change_user(i8* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8*, i8** @username, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i8*, i8** @username, align 8
  br label %81

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i8* [ %79, %78 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %80 ]
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  store i32 1, i32* %3, align 4
  br label %226

84:                                               ; preds = %70, %67
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* @optind, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** @binlogname, align 8
  %91 = call i64 @engine_preload_filelist(i8* %89, i8* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %84
  %94 = load i32, i32* @stderr, align 4
  %95 = load i8*, i8** @binlogname, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i8*, i8** @binlogname, align 8
  br label %105

99:                                               ; preds = %93
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* @optind, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  br label %105

105:                                              ; preds = %99, %97
  %106 = phi i8* [ %98, %97 ], [ %104, %99 ]
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %84
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %111 = load i64, i64* @jump_log_pos, align 8
  %112 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %110, i64 %111)
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** @Binlog, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %114 = icmp ne %struct.TYPE_7__* %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @stderr, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %119, i64 0)
  %121 = call i32 @exit(i32 1) #3
  unreachable

122:                                              ; preds = %109
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** @binlogname, align 8
  %128 = load i64, i64* @verbosity, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %122
  %131 = load i32, i32* @stderr, align 4
  %132 = load i8*, i8** @binlogname, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %132, i32 %137)
  br label %139

139:                                              ; preds = %130, %122
  %140 = call i32 (...) @clear_log()
  %141 = load i64, i64* @jump_log_pos, align 8
  %142 = call i32 @init_log_data(i64 %141, i32 0, i32 0)
  %143 = load i64, i64* @jump_log_pos, align 8
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = call i32 @init_hints_data(i32 0)
  br label %147

147:                                              ; preds = %145, %139
  %148 = load i32, i32* @optind, align 4
  %149 = add nsw i32 %148, 1
  %150 = load i32, i32* %4, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %179

152:                                              ; preds = %147
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* @optind, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %153, i64 %156
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** @targ_fname, align 8
  %159 = load i8*, i8** @targ_fname, align 8
  %160 = load i32, i32* @O_WRONLY, align 4
  %161 = load i32, i32* @O_APPEND, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @O_CREAT, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @open(i8* %159, i32 %164, i32 420)
  store i32 %165, i32* @targ_fd, align 4
  %166 = load i32, i32* @targ_fd, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %152
  %169 = load i32, i32* @stderr, align 4
  %170 = load i8*, i8** @targ_fname, align 8
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %170)
  store i32 1, i32* %3, align 4
  br label %226

172:                                              ; preds = %152
  %173 = load i32, i32* @targ_fd, align 4
  %174 = load i32, i32* @SEEK_END, align 4
  %175 = call i64 @lseek(i32 %173, i32 0, i32 %174)
  store i64 %175, i64* @targ_orig_size, align 8
  %176 = load i64, i64* @targ_orig_size, align 8
  %177 = icmp sgt i64 %176, 0
  %178 = zext i1 %177 to i32
  store i32 %178, i32* @targ_existed, align 4
  br label %180

179:                                              ; preds = %147
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %180

180:                                              ; preds = %179, %172
  %181 = call i32 @replay_log(i32 0, i32 1)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* @stderr, align 4
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %187 = call i32 @exit(i32 1) #3
  unreachable

188:                                              ; preds = %180
  %189 = load i64, i64* @log_limit_pos, align 8
  %190 = icmp sge i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %188
  %192 = load i64, i64* @log_readto_pos, align 8
  %193 = load i64, i64* @log_limit_pos, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load i32, i32* @stderr, align 4
  %197 = load i64, i64* @log_readto_pos, align 8
  %198 = load i64, i64* @log_limit_pos, align 8
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i64 %197, i64 %198)
  %200 = call i32 @exit(i32 1) #3
  unreachable

201:                                              ; preds = %191, %188
  %202 = call i32 (...) @flush_out()
  %203 = load i32, i32* @targ_fd, align 4
  %204 = icmp ne i32 %203, 1
  br i1 %204, label %205, label %217

205:                                              ; preds = %201
  %206 = load i32, i32* @targ_fd, align 4
  %207 = call i64 @fdatasync(i32 %206)
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load i32, i32* @stderr, align 4
  %211 = load i8*, i8** @targ_fname, align 8
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %211)
  %213 = call i32 @exit(i32 1) #3
  unreachable

214:                                              ; preds = %205
  %215 = load i32, i32* @targ_fd, align 4
  %216 = call i32 @close(i32 %215)
  br label %217

217:                                              ; preds = %214, %201
  %218 = load i64, i64* @verbosity, align 8
  %219 = icmp sgt i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = call i32 (...) @output_stats()
  br label %222

222:                                              ; preds = %220, %217
  %223 = load i32, i32* @stderr, align 4
  %224 = load i64, i64* @log_readto_pos, align 8
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 %224)
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %222, %168, %81, %61, %52, %33, %18
  %227 = load i32, i32* %3, align 4
  ret i32 %227
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

declare dso_local i32 @init_hints_data(i32) #1

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
