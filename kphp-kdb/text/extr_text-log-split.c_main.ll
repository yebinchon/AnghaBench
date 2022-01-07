; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"hvu:g:m:s:t:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@copy_rem = common dso_local global i32 0, align 4
@copy_mod = common dso_local global i32 0, align 4
@map_filename = common dso_local global i8* null, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@log_limit_pos = common dso_local global i64 0, align 8
@keep_log_limit_pos = common dso_local global i64 0, align 8
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
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %44 [
    i32 118, label %17
    i32 104, label %18
    i32 117, label %20
    i32 109, label %22
    i32 103, label %36
    i32 115, label %38
    i32 116, label %41
  ]

17:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %44

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %228

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @username, align 8
  br label %44

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
  br label %228

35:                                               ; preds = %29
  br label %44

36:                                               ; preds = %15
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** @map_filename, align 8
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
  store i64 %43, i64* @keep_log_limit_pos, align 8
  br label %44

44:                                               ; preds = %15, %41, %38, %36, %35, %20, %17
  br label %10

45:                                               ; preds = %10
  %46 = load i32, i32* @optind, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @optind, align 4
  %51 = add nsw i32 %50, 2
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %45
  %55 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %228

56:                                               ; preds = %49
  %57 = load i64, i64* @log_limit_pos, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i64, i64* @jump_log_pos, align 8
  %61 = load i64, i64* @log_limit_pos, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @stderr, align 4
  %65 = load i64, i64* @jump_log_pos, align 8
  %66 = load i64, i64* @log_limit_pos, align 8
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %66)
  store i32 2, i32* %3, align 4
  br label %228

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i8*, i8** @username, align 8
  %71 = call i64 @change_user(i8* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8*, i8** @username, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i8*, i8** @username, align 8
  br label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i8* [ %78, %77 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %79 ]
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  store i32 1, i32* %3, align 4
  br label %228

83:                                               ; preds = %69
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* @optind, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** @binlogname, align 8
  %90 = call i64 @engine_preload_filelist(i8* %88, i8* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %83
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8*, i8** @binlogname, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i8*, i8** @binlogname, align 8
  br label %104

98:                                               ; preds = %92
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* @optind, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  br label %104

104:                                              ; preds = %98, %96
  %105 = phi i8* [ %97, %96 ], [ %103, %98 ]
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  %107 = call i32 @exit(i32 1) #3
  unreachable

108:                                              ; preds = %83
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %110 = load i64, i64* @jump_log_pos, align 8
  %111 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %109, i64 %110)
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** @Binlog, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %113 = icmp ne %struct.TYPE_7__* %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @stderr, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i64, i64* @jump_log_pos, align 8
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %118, i64 %119)
  %121 = call i32 @exit(i32 1) #3
  unreachable

122:                                              ; preds = %108
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
  %146 = call i32 @init_text_data(i32 0)
  br label %147

147:                                              ; preds = %145, %139
  %148 = load i8*, i8** @map_filename, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 (...) @load_map()
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i32, i32* @optind, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %4, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %152
  %158 = load i8**, i8*** %5, align 8
  %159 = load i32, i32* @optind, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %158, i64 %161
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** @targ_fname, align 8
  %164 = load i8*, i8** @targ_fname, align 8
  %165 = load i32, i32* @O_WRONLY, align 4
  %166 = load i32, i32* @O_APPEND, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @O_CREAT, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @open(i8* %164, i32 %169, i32 420)
  store i32 %170, i32* @targ_fd, align 4
  %171 = load i32, i32* @targ_fd, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %157
  %174 = load i32, i32* @stderr, align 4
  %175 = load i8*, i8** @targ_fname, align 8
  %176 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %175)
  store i32 1, i32* %3, align 4
  br label %228

177:                                              ; preds = %157
  %178 = load i32, i32* @targ_fd, align 4
  %179 = load i32, i32* @SEEK_END, align 4
  %180 = call i64 @lseek(i32 %178, i32 0, i32 %179)
  store i64 %180, i64* @targ_orig_size, align 8
  %181 = load i64, i64* @targ_orig_size, align 8
  %182 = icmp sgt i64 %181, 0
  %183 = zext i1 %182 to i32
  store i32 %183, i32* @targ_existed, align 4
  br label %185

184:                                              ; preds = %152
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %185

185:                                              ; preds = %184, %177
  %186 = call i32 @replay_log(i32 0, i32 1)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* @stderr, align 4
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %192 = call i32 @exit(i32 1) #3
  unreachable

193:                                              ; preds = %185
  %194 = load i64, i64* @log_limit_pos, align 8
  %195 = icmp sge i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %193
  %197 = load i64, i64* @log_readto_pos, align 8
  %198 = load i64, i64* @log_limit_pos, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i32, i32* @stderr, align 4
  %202 = load i64, i64* @log_readto_pos, align 8
  %203 = load i64, i64* @log_limit_pos, align 8
  %204 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i64 %202, i64 %203)
  %205 = call i32 @exit(i32 1) #3
  unreachable

206:                                              ; preds = %196, %193
  %207 = call i32 (...) @flush_out()
  %208 = load i32, i32* @targ_fd, align 4
  %209 = icmp ne i32 %208, 1
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = load i32, i32* @targ_fd, align 4
  %212 = call i64 @fdatasync(i32 %211)
  %213 = icmp slt i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load i32, i32* @stderr, align 4
  %216 = load i8*, i8** @targ_fname, align 8
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %215, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %216)
  %218 = call i32 @exit(i32 1) #3
  unreachable

219:                                              ; preds = %210
  %220 = load i32, i32* @targ_fd, align 4
  %221 = call i32 @close(i32 %220)
  br label %222

222:                                              ; preds = %219, %206
  %223 = load i64, i64* @verbosity, align 8
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i32 (...) @output_stats()
  br label %227

227:                                              ; preds = %225, %222
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %227, %173, %80, %63, %54, %33, %18
  %229 = load i32, i32* %3, align 4
  ret i32 %229
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

declare dso_local i32 @init_text_data(i32) #1

declare dso_local i32 @load_map(...) #1

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
