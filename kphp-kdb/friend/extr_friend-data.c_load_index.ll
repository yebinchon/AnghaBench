; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_load_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_load_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i64, i64, i64 }

@jump_log_ts = common dso_local global i64 0, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@jump_log_crc32 = common dso_local global i64 0, align 8
@idx_fd = common dso_local global i32 0, align 4
@reverse_friends_mode = common dso_local global i64 0, align 8
@REVERSE_FRIEND_INDEX_MAGIC = common dso_local global i64 0, align 8
@FRIEND_INDEX_MAGIC = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"index file is not for friends-engine. Magic = %x.\0A\00", align 1
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@tot_users = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"reading user %d of %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unexpected end of file\00", align 1
@MAX_USERS = common dso_local global i32 0, align 4
@User = common dso_local global %struct.TYPE_9__** null, align 8
@rptr = common dso_local global i64 0, align 8
@rbytes = common dso_local global i64 0, align 8
@rev_friends = common dso_local global i32 0, align 4
@wptr = common dso_local global i64 0, align 8
@friends_replay_logevent = common dso_local global i32 0, align 4
@replay_logevent = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [116 x i8] c"Index loaded. %lld bytes for friends, %lld for friend requests, %lld for time friend requests and %lld for privacy\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_index(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* @jump_log_ts, align 8
  store i64 0, i64* @jump_log_pos, align 8
  store i64 0, i64* @jump_log_crc32, align 8
  store i32 0, i32* %2, align 4
  br label %207

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @idx_fd, align 4
  %19 = load i32, i32* @idx_fd, align 4
  %20 = call i32 @read(i32 %19, %struct.TYPE_8__* %4, i32 48)
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 48
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* @reverse_friends_mode, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REVERSE_FRIEND_INDEX_MAGIC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %27, %15
  %33 = load i64, i64* @reverse_friends_mode, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FRIEND_INDEX_MAGIC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %32
  %41 = load i32, i32* @stderr, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %43)
  store i32 -1, i32* %2, align 4
  br label %207

45:                                               ; preds = %35, %27
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* @jump_log_ts, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* @jump_log_pos, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* @jump_log_crc32, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* @log_split_min, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* @log_split_max, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* @log_split_mod, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* @tot_users, align 4
  %60 = call i32 (...) @clearin()
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %182, %45
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @tot_users, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %185

65:                                               ; preds = %61
  %66 = load i32, i32* @verbosity, align 4
  %67 = icmp sge i32 %66, 3
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* @tot_users, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %65
  %75 = call i8* @readin(i32 156)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 @assert(i32 0)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** %10, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  %86 = call i32 @readadv(i32 4)
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  store i8* %88, i8** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @MAX_USERS, align 4
  %94 = icmp slt i32 %92, %93
  br label %95

95:                                               ; preds = %91, %82
  %96 = phi i1 [ false, %82 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = call %struct.TYPE_9__* @zmalloc0(i32 4)
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %100, i64 %102
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %103, align 8
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %104, i64 %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 5
  %110 = load i64, i64* @rptr, align 8
  %111 = call i32 @memcpy(i32* %109, i64 %110, i32 8)
  %112 = call i32 @readadv(i32 8)
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 8
  store i8* %114, i8** %10, align 8
  %115 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %115, i64 %117
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  %121 = load i64, i64* @rptr, align 8
  %122 = call i32 @memcpy(i32* %120, i64 %121, i32 144)
  %123 = call i32 @readadv(i32 144)
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 144
  store i8* %125, i8** %10, align 8
  %126 = load i64, i64* @rbytes, align 8
  %127 = load i64, i64* %6, align 8
  %128 = sub nsw i64 %127, %126
  store i64 %128, i64* %6, align 8
  %129 = call i8* (...) @read_tree()
  %130 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %130, i64 %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  store i8* %129, i8** %135, align 8
  %136 = load i64, i64* @rbytes, align 8
  %137 = load i64, i64* %6, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* @reverse_friends_mode, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %181, label %141

141:                                              ; preds = %95
  %142 = load i64, i64* @rbytes, align 8
  %143 = load i64, i64* %7, align 8
  %144 = sub nsw i64 %143, %142
  store i64 %144, i64* %7, align 8
  %145 = call i8* (...) @read_tree()
  %146 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %146, i64 %148
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  store i8* %145, i8** %151, align 8
  %152 = load i64, i64* @rbytes, align 8
  %153 = load i64, i64* %7, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %7, align 8
  %155 = load i64, i64* @rbytes, align 8
  %156 = load i64, i64* %8, align 8
  %157 = sub nsw i64 %156, %155
  store i64 %157, i64* %8, align 8
  %158 = call i8* (...) @read_tree()
  %159 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %159, i64 %161
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i8* %158, i8** %164, align 8
  %165 = load i64, i64* @rbytes, align 8
  %166 = load i64, i64* %8, align 8
  %167 = add nsw i64 %166, %165
  store i64 %167, i64* %8, align 8
  %168 = load i64, i64* @rbytes, align 8
  %169 = load i64, i64* %9, align 8
  %170 = sub nsw i64 %169, %168
  store i64 %170, i64* %9, align 8
  %171 = call i32 (...) @read_privacy()
  %172 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %172, i64 %174
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  store i32 %171, i32* %177, align 8
  %178 = load i64, i64* @rbytes, align 8
  %179 = load i64, i64* %9, align 8
  %180 = add nsw i64 %179, %178
  store i64 %180, i64* %9, align 8
  br label %181

181:                                              ; preds = %141, %95
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %61

185:                                              ; preds = %61
  %186 = load i64, i64* @reverse_friends_mode, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = call i32 (...) @read_rev_friends()
  store i32 %189, i32* @rev_friends, align 4
  br label %190

190:                                              ; preds = %188, %185
  %191 = load i64, i64* @rptr, align 8
  %192 = load i64, i64* @wptr, align 8
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load i32, i32* @friends_replay_logevent, align 4
  store i32 %196, i32* @replay_logevent, align 4
  %197 = load i32, i32* @verbosity, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %190
  %200 = load i32, i32* @stderr, align 4
  %201 = load i64, i64* %6, align 8
  %202 = load i64, i64* %7, align 8
  %203 = load i64, i64* %8, align 8
  %204 = load i64, i64* %9, align 8
  %205 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i64 0, i64 0), i64 %201, i64 %202, i64 %203, i64 %204)
  br label %206

206:                                              ; preds = %199, %190
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %40, %14
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @clearin(...) #1

declare dso_local i8* @readin(i32) #1

declare dso_local i32 @readadv(i32) #1

declare dso_local %struct.TYPE_9__* @zmalloc0(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i8* @read_tree(...) #1

declare dso_local i32 @read_privacy(...) #1

declare dso_local i32 @read_rev_friends(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
