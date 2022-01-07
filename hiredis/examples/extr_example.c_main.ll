; ModuleID = '/home/carl/AnghaBench/hiredis/examples/extr_example.c_main.c'
source_filename = "/home/carl/AnghaBench/hiredis/examples/extr_example.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_11__ = type { i8*, i64, i32, %struct.TYPE_10__**, i32 }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Will connect to unix socket @%s\0A\00", align 1
@__const.main.timeout = private unnamed_addr constant %struct.timeval { i32 1, i32 500000 }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Connection error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Connection error: can't allocate redis context\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"PING: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SET %s %s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"SET: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"SET %b %b\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"SET (binary API): %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"GET foo\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"GET foo: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"INCR counter\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"INCR counter: %lld\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"DEL mylist\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"LPUSH mylist element-%s\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"LRANGE mylist 0 -1\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [8 x i8] c"%u) %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca [64 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i8* [ %19, %16 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %20 ]
  store i8* %22, i8** %10, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 117
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 85
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %25
  store i32 1, i32* %7, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %32
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @atoi(i8* %49)
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi i32 [ %50, %46 ], [ 6379, %51 ]
  store i32 %53, i32* %11, align 4
  %54 = bitcast %struct.timeval* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 bitcast (%struct.timeval* @__const.main.timeout to i8*), i64 8, i1 false)
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast %struct.timeval* %12 to i64*
  %60 = load i64, i64* %59, align 4
  %61 = call %struct.TYPE_12__* @redisConnectUnixWithTimeout(i8* %58, i64 %60)
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %8, align 8
  br label %68

62:                                               ; preds = %52
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = bitcast %struct.timeval* %12 to i64*
  %66 = load i64, i64* %65, align 4
  %67 = call %struct.TYPE_12__* @redisConnectWithTimeout(i8* %63, i32 %64, i64 %66)
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %8, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = icmp eq %struct.TYPE_12__* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71, %68
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = icmp ne %struct.TYPE_12__* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = call i32 @redisFree(%struct.TYPE_12__* %84)
  br label %88

86:                                               ; preds = %76
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %79
  %89 = call i32 @exit(i32 1) #4
  unreachable

90:                                               ; preds = %71
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = call %struct.TYPE_11__* (%struct.TYPE_12__*, i8*, ...) @redisCommand(%struct.TYPE_12__* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %9, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = call i32 @freeReplyObject(%struct.TYPE_11__* %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = call %struct.TYPE_11__* (%struct.TYPE_12__*, i8*, ...) @redisCommand(%struct.TYPE_12__* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %9, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = call i32 @freeReplyObject(%struct.TYPE_11__* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = call %struct.TYPE_11__* (%struct.TYPE_12__*, i8*, ...) @redisCommand(%struct.TYPE_12__* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5)
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %9, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %114 = call i32 @freeReplyObject(%struct.TYPE_11__* %113)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %116 = call %struct.TYPE_11__* (%struct.TYPE_12__*, i8*, ...) @redisCommand(%struct.TYPE_12__* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %9, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %122 = call i32 @freeReplyObject(%struct.TYPE_11__* %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %124 = call %struct.TYPE_11__* (%struct.TYPE_12__*, i8*, ...) @redisCommand(%struct.TYPE_12__* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %9, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = call i32 @freeReplyObject(%struct.TYPE_11__* %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = call %struct.TYPE_11__* (%struct.TYPE_12__*, i8*, ...) @redisCommand(%struct.TYPE_12__* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %9, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %138 = call i32 @freeReplyObject(%struct.TYPE_11__* %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %140 = call %struct.TYPE_11__* (%struct.TYPE_12__*, i8*, ...) @redisCommand(%struct.TYPE_12__* %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %9, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %142 = call i32 @freeReplyObject(%struct.TYPE_11__* %141)
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %155, %90
  %144 = load i32, i32* %6, align 4
  %145 = icmp ult i32 %144, 10
  br i1 %145, label %146, label %158

146:                                              ; preds = %143
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @snprintf(i8* %147, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %152 = call %struct.TYPE_11__* (%struct.TYPE_12__*, i8*, ...) @redisCommand(%struct.TYPE_12__* %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* %151)
  store %struct.TYPE_11__* %152, %struct.TYPE_11__** %9, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %154 = call i32 @freeReplyObject(%struct.TYPE_11__* %153)
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %6, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %143

158:                                              ; preds = %143
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = call %struct.TYPE_11__* (%struct.TYPE_12__*, i8*, ...) @redisCommand(%struct.TYPE_12__* %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %9, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %189

166:                                              ; preds = %158
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %185, %166
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ult i32 %168, %171
  br i1 %172, label %173, label %188

173:                                              ; preds = %167
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %177, i64 %179
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 %174, i8* %183)
  br label %185

185:                                              ; preds = %173
  %186 = load i32, i32* %6, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %167

188:                                              ; preds = %167
  br label %189

189:                                              ; preds = %188, %158
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %191 = call i32 @freeReplyObject(%struct.TYPE_11__* %190)
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %193 = call i32 @redisFree(%struct.TYPE_12__* %192)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_12__* @redisConnectUnixWithTimeout(i8*, i64) #1

declare dso_local %struct.TYPE_12__* @redisConnectWithTimeout(i8*, i32, i64) #1

declare dso_local i32 @redisFree(%struct.TYPE_12__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.TYPE_11__* @redisCommand(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_11__*) #1

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
