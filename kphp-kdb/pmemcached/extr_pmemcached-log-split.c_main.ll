; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-log-split.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-log-split.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"hfvu:m:s:t:z:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@skip_rotate = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@copy_rem = common dso_local global i64 0, align 8
@copy_mod = common dso_local global i64 0, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@log_limit_pos = common dso_local global i64 0, align 8
@split_mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"fatal: unsupported split mode: %s\0A\00", align 1
@hash_key_fits = common dso_local global i32 0, align 4
@fits = common dso_local global i32* null, align 8
@firstint_fits = common dso_local global i32 0, align 4
@dot_fits = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"fatal: log start position %lld after stop position %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@binlogname = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_8__* null, align 8
@Binlog = common dso_local global %struct.TYPE_7__* null, align 8
@.str.7 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@targ_orig_size = common dso_local global i64 0, align 8
@targ_existed = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [56 x i8] c"fatal: binlog read up to position %lld instead of %lld\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

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

10:                                               ; preds = %55, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %56

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %55 [
    i32 118, label %17
    i32 102, label %18
    i32 104, label %19
    i32 117, label %21
    i32 109, label %23
    i32 115, label %37
    i32 116, label %40
    i32 122, label %43
  ]

17:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %55

18:                                               ; preds = %15
  store i32 1, i32* @skip_rotate, align 4
  br label %55

19:                                               ; preds = %15
  %20 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %241

21:                                               ; preds = %15
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** @username, align 8
  br label %55

23:                                               ; preds = %15
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i32 @sscanf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* @copy_rem, i64* @copy_mod)
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @copy_rem, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @copy_rem, align 8
  %32 = load i64, i64* @copy_mod, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %27, %23
  %35 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %241

36:                                               ; preds = %30
  br label %55

37:                                               ; preds = %15
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i64 @atoll(i8* %38)
  store i64 %39, i64* @jump_log_pos, align 8
  br label %55

40:                                               ; preds = %15
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i64 @atoll(i8* %41)
  store i64 %42, i64* @log_limit_pos, align 8
  br label %55

43:                                               ; preds = %15
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @get_split_mode(i8* %44)
  store i32 %45, i32* @split_mode, align 4
  %46 = load i32, i32* @split_mode, align 4
  switch i32 %46, label %54 [
    i32 128, label %47
    i32 129, label %51
    i32 130, label %52
    i32 131, label %53
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 2, i32* %3, align 4
  br label %241

51:                                               ; preds = %43
  store i32* @hash_key_fits, i32** @fits, align 8
  br label %54

52:                                               ; preds = %43
  store i32* @firstint_fits, i32** @fits, align 8
  br label %54

53:                                               ; preds = %43
  store i32* @dot_fits, i32** @fits, align 8
  br label %54

54:                                               ; preds = %43, %53, %52, %51
  br label %55

55:                                               ; preds = %15, %54, %40, %37, %36, %21, %18, %17
  br label %10

56:                                               ; preds = %10
  %57 = load i64, i64* @copy_mod, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %241

61:                                               ; preds = %56
  %62 = load i32, i32* @optind, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @optind, align 4
  %67 = add nsw i32 %66, 2
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65, %61
  %71 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %241

72:                                               ; preds = %65
  %73 = load i64, i64* @log_limit_pos, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i64, i64* @jump_log_pos, align 8
  %77 = load i64, i64* @log_limit_pos, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* @stderr, align 4
  %81 = load i64, i64* @jump_log_pos, align 8
  %82 = load i64, i64* @log_limit_pos, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %81, i64 %82)
  store i32 2, i32* %3, align 4
  br label %241

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i8*, i8** @username, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load i8*, i8** @username, align 8
  %90 = call i64 @change_user(i8* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8*, i8** @username, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i8*, i8** @username, align 8
  br label %99

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i8* [ %97, %96 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %98 ]
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  store i32 1, i32* %3, align 4
  br label %241

102:                                              ; preds = %88, %85
  %103 = load i8**, i8*** %5, align 8
  %104 = load i32, i32* @optind, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** @binlogname, align 8
  %109 = call i64 @engine_preload_filelist(i8* %107, i8* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %102
  %112 = load i32, i32* @stderr, align 4
  %113 = load i8*, i8** @binlogname, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i8*, i8** @binlogname, align 8
  br label %123

117:                                              ; preds = %111
  %118 = load i8**, i8*** %5, align 8
  %119 = load i32, i32* @optind, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  br label %123

123:                                              ; preds = %117, %115
  %124 = phi i8* [ %116, %115 ], [ %122, %117 ]
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %124)
  %126 = call i32 @exit(i32 1) #3
  unreachable

127:                                              ; preds = %102
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %129 = load i64, i64* @jump_log_pos, align 8
  %130 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %128, i64 %129)
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** @Binlog, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %132 = icmp ne %struct.TYPE_7__* %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @stderr, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %137, i64 0)
  %139 = call i32 @exit(i32 1) #3
  unreachable

140:                                              ; preds = %127
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** @binlogname, align 8
  %146 = load i64, i64* @verbosity, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %140
  %149 = load i32, i32* @stderr, align 4
  %150 = load i8*, i8** @binlogname, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %150, i32 %155)
  br label %157

157:                                              ; preds = %148, %140
  %158 = call i32 (...) @clear_log()
  %159 = load i64, i64* @jump_log_pos, align 8
  %160 = call i32 @init_log_data(i64 %159, i32 0, i32 0)
  %161 = load i64, i64* @jump_log_pos, align 8
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = call i32 @init_pmemcached_data(i32 0)
  br label %165

165:                                              ; preds = %163, %157
  %166 = load i32, i32* @optind, align 4
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* %4, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %197

170:                                              ; preds = %165
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* @optind, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %171, i64 %174
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** @targ_fname, align 8
  %177 = load i8*, i8** @targ_fname, align 8
  %178 = load i32, i32* @O_WRONLY, align 4
  %179 = load i32, i32* @O_APPEND, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @O_CREAT, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @open(i8* %177, i32 %182, i32 420)
  store i32 %183, i32* @targ_fd, align 4
  %184 = load i32, i32* @targ_fd, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %170
  %187 = load i32, i32* @stderr, align 4
  %188 = load i8*, i8** @targ_fname, align 8
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %188)
  store i32 1, i32* %3, align 4
  br label %241

190:                                              ; preds = %170
  %191 = load i32, i32* @targ_fd, align 4
  %192 = load i32, i32* @SEEK_END, align 4
  %193 = call i64 @lseek(i32 %191, i32 0, i32 %192)
  store i64 %193, i64* @targ_orig_size, align 8
  %194 = load i64, i64* @targ_orig_size, align 8
  %195 = icmp sgt i64 %194, 0
  %196 = zext i1 %195 to i32
  store i32 %196, i32* @targ_existed, align 4
  br label %198

197:                                              ; preds = %165
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %198

198:                                              ; preds = %197, %190
  %199 = call i32 @replay_log(i32 0, i32 1)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* @stderr, align 4
  %204 = call i32 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %205 = call i32 @exit(i32 1) #3
  unreachable

206:                                              ; preds = %198
  %207 = load i64, i64* @log_limit_pos, align 8
  %208 = icmp sge i64 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  %210 = load i64, i64* @log_readto_pos, align 8
  %211 = load i64, i64* @log_limit_pos, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load i32, i32* @stderr, align 4
  %215 = load i64, i64* @log_readto_pos, align 8
  %216 = load i64, i64* @log_limit_pos, align 8
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i64 %215, i64 %216)
  %218 = call i32 @exit(i32 1) #3
  unreachable

219:                                              ; preds = %209, %206
  %220 = call i32 (...) @flush_out()
  %221 = load i32, i32* @targ_fd, align 4
  %222 = icmp ne i32 %221, 1
  br i1 %222, label %223, label %235

223:                                              ; preds = %219
  %224 = load i32, i32* @targ_fd, align 4
  %225 = call i64 @fdatasync(i32 %224)
  %226 = icmp slt i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load i32, i32* @stderr, align 4
  %229 = load i8*, i8** @targ_fname, align 8
  %230 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %229)
  %231 = call i32 @exit(i32 1) #3
  unreachable

232:                                              ; preds = %223
  %233 = load i32, i32* @targ_fd, align 4
  %234 = call i32 @close(i32 %233)
  br label %235

235:                                              ; preds = %232, %219
  %236 = load i64, i64* @verbosity, align 8
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = call i32 (...) @output_stats()
  br label %240

240:                                              ; preds = %238, %235
  store i32 0, i32* %3, align 4
  br label %241

241:                                              ; preds = %240, %186, %99, %79, %70, %59, %47, %34, %19
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i64 @atoll(i8*) #1

declare dso_local i32 @get_split_mode(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @init_pmemcached_data(i32) #1

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
