; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/examples/extr_example.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/examples/extr_example.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i64 }
%struct.TYPE_10__ = type { i8*, i64, i32, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@__const.main.timeout = private unnamed_addr constant %struct.timeval { i32 1, i32 500000 }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Connection error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Connection error: can't allocate redis context\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PING: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"SET %s %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"SET: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"SET %b %b\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"SET (binary API): %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"GET foo\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"GET foo: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"INCR counter\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"INCR counter: %lld\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"DEL mylist\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"LPUSH mylist element-%s\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"LRANGE mylist 0 -1\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"%u) %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca [64 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i8* [ %18, %15 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %19 ]
  store i8* %21, i8** %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @atoi(i8* %27)
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ %28, %24 ], [ 6379, %29 ]
  store i32 %31, i32* %10, align 4
  %32 = bitcast %struct.timeval* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.timeval* @__const.main.timeout to i8*), i64 8, i1 false)
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = bitcast %struct.timeval* %11 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call %struct.TYPE_11__* @redisConnectWithTimeout(i8* %33, i32 %34, i64 %36)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %7, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = icmp eq %struct.TYPE_11__* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40, %30
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = call i32 @redisFree(%struct.TYPE_11__* %53)
  br label %57

55:                                               ; preds = %45
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %48
  %58 = call i32 @exit(i32 1) #4
  unreachable

59:                                               ; preds = %40
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = call %struct.TYPE_10__* (%struct.TYPE_11__*, i8*, ...) @redisCommand(%struct.TYPE_11__* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %8, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = call i32 @freeReplyObject(%struct.TYPE_10__* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = call %struct.TYPE_10__* (%struct.TYPE_11__*, i8*, ...) @redisCommand(%struct.TYPE_11__* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %8, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = call i32 @freeReplyObject(%struct.TYPE_10__* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = call %struct.TYPE_10__* (%struct.TYPE_11__*, i8*, ...) @redisCommand(%struct.TYPE_11__* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 5)
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %8, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = call i32 @freeReplyObject(%struct.TYPE_10__* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = call %struct.TYPE_10__* (%struct.TYPE_11__*, i8*, ...) @redisCommand(%struct.TYPE_11__* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %8, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = call i32 @freeReplyObject(%struct.TYPE_10__* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = call %struct.TYPE_10__* (%struct.TYPE_11__*, i8*, ...) @redisCommand(%struct.TYPE_11__* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %8, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = call i32 @freeReplyObject(%struct.TYPE_10__* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = call %struct.TYPE_10__* (%struct.TYPE_11__*, i8*, ...) @redisCommand(%struct.TYPE_11__* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %8, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = call i32 @freeReplyObject(%struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = call %struct.TYPE_10__* (%struct.TYPE_11__*, i8*, ...) @redisCommand(%struct.TYPE_11__* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %8, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = call i32 @freeReplyObject(%struct.TYPE_10__* %110)
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %124, %59
  %113 = load i32, i32* %6, align 4
  %114 = icmp ult i32 %113, 10
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @snprintf(i8* %116, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %121 = call %struct.TYPE_10__* (%struct.TYPE_11__*, i8*, ...) @redisCommand(%struct.TYPE_11__* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* %120)
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %8, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = call i32 @freeReplyObject(%struct.TYPE_10__* %122)
  br label %124

124:                                              ; preds = %115
  %125 = load i32, i32* %6, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %112

127:                                              ; preds = %112
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = call %struct.TYPE_10__* (%struct.TYPE_11__*, i8*, ...) @redisCommand(%struct.TYPE_11__* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  store %struct.TYPE_10__* %129, %struct.TYPE_10__** %8, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %154, %135
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %146, i64 %148
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %143, i8* %152)
  br label %154

154:                                              ; preds = %142
  %155 = load i32, i32* %6, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %136

157:                                              ; preds = %136
  br label %158

158:                                              ; preds = %157, %127
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = call i32 @freeReplyObject(%struct.TYPE_10__* %159)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %162 = call i32 @redisFree(%struct.TYPE_11__* %161)
  ret i32 0
}

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_11__* @redisConnectWithTimeout(i8*, i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @redisFree(%struct.TYPE_11__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.TYPE_10__* @redisCommand(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_10__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
