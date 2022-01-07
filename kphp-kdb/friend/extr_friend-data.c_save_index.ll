; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_save_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_save_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@engine_snapshot_replica = common dso_local global %struct.TYPE_8__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot write index: cannot compute its name\0A\00", align 1
@jump_log_pos = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"skipping generation of new snapshot %s for position %lld: snapshot for this position already exists\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"creating index %s at log position %lld\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@newidx_fd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot create new index file %s: %m\0A\00", align 1
@reverse_friends_mode = common dso_local global i64 0, align 8
@FRIEND_INDEX_MAGIC = common dso_local global i32 0, align 4
@REVERSE_FRIEND_INDEX_MAGIC = common dso_local global i32 0, align 4
@log_read_until = common dso_local global i32 0, align 4
@log_crc32_complement = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@tot_users = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Written header\0A\00", align 1
@MAX_USERS = common dso_local global i32 0, align 4
@User = common dso_local global %struct.TYPE_9__** null, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Writing user %d (real %d)\0A\00", align 1
@rev_friends = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"writing index done\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"cannot rename new index file from %s: %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_snapshot_replica, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_snapshot_replica, align 8
  %12 = call i32 (...) @log_cur_pos()
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_snapshot_replica, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @get_new_snapshot_name(%struct.TYPE_8__* %11, i32 %12, i32 %15)
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %17
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %20
  %31 = call i32 (...) @log_cur_pos()
  %32 = load i32, i32* @jump_log_pos, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @jump_log_pos, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37)
  store i32 0, i32* %2, align 4
  br label %227

39:                                               ; preds = %30
  %40 = load i32, i32* @verbosity, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (...) @log_cur_pos()
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @O_CREAT, align 4
  %50 = load i32, i32* @O_TRUNC, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @O_WRONLY, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @O_EXCL, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @open(i8* %48, i32 %55, i32 432)
  store i64 %56, i64* @newidx_fd, align 8
  %57 = load i64, i64* @newidx_fd, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %47
  %65 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 36)
  %66 = load i64, i64* @reverse_friends_mode, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @FRIEND_INDEX_MAGIC, align 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 8
  store i32 %69, i32* %70, align 4
  br label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @REVERSE_FRIEND_INDEX_MAGIC, align 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = call i32 @time(i32* null)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 7
  store i32 %75, i32* %76, align 4
  %77 = call i32 (...) @log_cur_pos()
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @log_read_until, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = call i32 (...) @relax_write_log_crc32()
  br label %87

85:                                               ; preds = %74
  %86 = call i32 @relax_log_crc32(i32 0)
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i32, i32* @log_crc32_complement, align 4
  %89 = xor i32 %88, -1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @log_split_min, align 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @log_split_max, align 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @log_split_mod, align 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @tot_users, align 4
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = call i32 @write_seek(i32 0)
  %100 = call i32 @writeout(%struct.TYPE_7__* %5, i32 36)
  %101 = load i32, i32* @verbosity, align 4
  %102 = icmp sge i32 %101, 2
  br i1 %102, label %103, label %106

103:                                              ; preds = %87
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %87
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %182, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @MAX_USERS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %185

111:                                              ; preds = %107
  %112 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %112, i64 %114
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = icmp ne %struct.TYPE_9__* %116, null
  br i1 %117, label %118, label %181

118:                                              ; preds = %111
  %119 = load i32, i32* @verbosity, align 4
  %120 = icmp sge i32 %119, 3
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* @stderr, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @writeout_int(i32 %129)
  %131 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %131, i64 %133
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 5
  %137 = call i32 @writeout(%struct.TYPE_7__* %136, i32 8)
  %138 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %138, i64 %140
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  %144 = call i32 @writeout(%struct.TYPE_7__* %143, i32 144)
  %145 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %145, i64 %147
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dump_tree(i32 %151)
  %153 = load i64, i64* @reverse_friends_mode, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %180, label %155

155:                                              ; preds = %126
  %156 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %156, i64 %158
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @dump_tree(i32 %162)
  %164 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %164, i64 %166
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dump_tree(i32 %170)
  %172 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %172, i64 %174
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dump_privacy_tree(i32 %178)
  br label %180

180:                                              ; preds = %155, %126
  br label %181

181:                                              ; preds = %180, %111
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %107

185:                                              ; preds = %107
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @tot_users, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load i64, i64* @reverse_friends_mode, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load i32, i32* @rev_friends, align 4
  %195 = call i32 @dump_rev_friends(i32 %194)
  br label %196

196:                                              ; preds = %193, %185
  %197 = call i32 (...) @flushout()
  %198 = load i64, i64* @newidx_fd, align 8
  %199 = call i64 @fsync(i64 %198)
  %200 = icmp sge i64 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i64, i64* @newidx_fd, align 8
  %204 = call i64 @close(i64 %203)
  %205 = icmp sge i64 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load i32, i32* @verbosity, align 4
  %209 = icmp sge i32 %208, 3
  br i1 %209, label %210, label %213

210:                                              ; preds = %196
  %211 = load i32, i32* @stderr, align 4
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %196
  %214 = load i8*, i8** %4, align 8
  %215 = call i64 @rename_temporary_snapshot(i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = load i32, i32* @stderr, align 4
  %219 = load i8*, i8** %4, align 8
  %220 = call i32 (i32, i8*, ...) @fprintf(i32 %218, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %219)
  %221 = load i8*, i8** %4, align 8
  %222 = call i32 @unlink(i8* %221)
  %223 = call i32 @exit(i32 1) #3
  unreachable

224:                                              ; preds = %213
  %225 = load i8*, i8** %4, align 8
  %226 = call i32 @print_snapshot_name(i8* %225)
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %224, %34
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i8* @get_new_snapshot_name(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @relax_write_log_crc32(...) #1

declare dso_local i32 @relax_log_crc32(i32) #1

declare dso_local i32 @write_seek(i32) #1

declare dso_local i32 @writeout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @writeout_int(i32) #1

declare dso_local i32 @dump_tree(i32) #1

declare dso_local i32 @dump_privacy_tree(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dump_rev_friends(i32) #1

declare dso_local i32 @flushout(...) #1

declare dso_local i64 @fsync(i64) #1

declare dso_local i64 @close(i64) #1

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
