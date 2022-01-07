; ModuleID = '/home/carl/AnghaBench/hiredis/examples/extr_example-ssl.c_main.c'
source_filename = "/home/carl/AnghaBench/hiredis/examples/extr_example-ssl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_14__ = type { i8*, i64, i32, %struct.TYPE_13__**, i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_15__ = type { %struct.timeval*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Usage: %s <host> <port> <cert> <key> [ca]\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@__const.main.tv = private unnamed_addr constant %struct.timeval { i32 1, i32 500000 }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Connection error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Connection error: can't allocate redis context\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sni\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Couldn't initialize SSL!\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"PING: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"SET %s %s\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SET: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"SET %b %b\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SET (binary API): %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"GET foo\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"GET foo: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"INCR counter\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"INCR counter: %lld\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"DEL mylist\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"LPUSH mylist element-%s\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"LRANGE mylist 0 -1\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"%u) %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.timeval, align 4
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca [64 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @exit(i32 1) #4
  unreachable

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %32 ]
  store i8* %34, i8** %9, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %11, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 4
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %12, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 4
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 5
  %50 = load i8*, i8** %49, align 8
  br label %52

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i8* [ %50, %47 ], [ null, %51 ]
  store i8* %53, i8** %13, align 8
  %54 = bitcast %struct.timeval* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 bitcast (%struct.timeval* @__const.main.tv to i8*), i64 8, i1 false)
  %55 = bitcast %struct.TYPE_15__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %55, i8 0, i64 16, i1 false)
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @REDIS_OPTIONS_SET_TCP(%struct.TYPE_15__* %15, i8* %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store %struct.timeval* %14, %struct.timeval** %59, align 8
  %60 = call %struct.TYPE_16__* @redisConnectWithOptions(%struct.TYPE_15__* %15)
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %7, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = icmp eq %struct.TYPE_16__* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %52
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63, %52
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = icmp ne %struct.TYPE_16__* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = call i32 @redisFree(%struct.TYPE_16__* %76)
  br label %80

78:                                               ; preds = %68
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %71
  %81 = call i32 @exit(i32 1) #4
  unreachable

82:                                               ; preds = %63
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i64 @redisSecureConnection(%struct.TYPE_16__* %83, i8* %84, i8* %85, i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i64, i64* @REDIS_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = call i32 @redisFree(%struct.TYPE_16__* %96)
  %98 = call i32 @exit(i32 1) #4
  unreachable

99:                                               ; preds = %82
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = call %struct.TYPE_14__* (%struct.TYPE_16__*, i8*, ...) @redisCommand(%struct.TYPE_16__* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %8, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = call i32 @freeReplyObject(%struct.TYPE_14__* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = call %struct.TYPE_14__* (%struct.TYPE_16__*, i8*, ...) @redisCommand(%struct.TYPE_16__* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %8, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = call i32 @freeReplyObject(%struct.TYPE_14__* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %117 = call %struct.TYPE_14__* (%struct.TYPE_16__*, i8*, ...) @redisCommand(%struct.TYPE_16__* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 5)
  store %struct.TYPE_14__* %117, %struct.TYPE_14__** %8, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = call i32 @freeReplyObject(%struct.TYPE_14__* %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = call %struct.TYPE_14__* (%struct.TYPE_16__*, i8*, ...) @redisCommand(%struct.TYPE_16__* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %8, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* %128)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = call i32 @freeReplyObject(%struct.TYPE_14__* %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = call %struct.TYPE_14__* (%struct.TYPE_16__*, i8*, ...) @redisCommand(%struct.TYPE_16__* %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  store %struct.TYPE_14__* %133, %struct.TYPE_14__** %8, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %139 = call i32 @freeReplyObject(%struct.TYPE_14__* %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %141 = call %struct.TYPE_14__* (%struct.TYPE_16__*, i8*, ...) @redisCommand(%struct.TYPE_16__* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  store %struct.TYPE_14__* %141, %struct.TYPE_14__** %8, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %144)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %147 = call i32 @freeReplyObject(%struct.TYPE_14__* %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %149 = call %struct.TYPE_14__* (%struct.TYPE_16__*, i8*, ...) @redisCommand(%struct.TYPE_16__* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  store %struct.TYPE_14__* %149, %struct.TYPE_14__** %8, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = call i32 @freeReplyObject(%struct.TYPE_14__* %150)
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %164, %99
  %153 = load i32, i32* %6, align 4
  %154 = icmp ult i32 %153, 10
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @snprintf(i8* %156, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %157)
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %161 = call %struct.TYPE_14__* (%struct.TYPE_16__*, i8*, ...) @redisCommand(%struct.TYPE_16__* %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* %160)
  store %struct.TYPE_14__* %161, %struct.TYPE_14__** %8, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %163 = call i32 @freeReplyObject(%struct.TYPE_14__* %162)
  br label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %6, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %152

167:                                              ; preds = %152
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %169 = call %struct.TYPE_14__* (%struct.TYPE_16__*, i8*, ...) @redisCommand(%struct.TYPE_16__* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  store %struct.TYPE_14__* %169, %struct.TYPE_14__** %8, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %198

175:                                              ; preds = %167
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %194, %175
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ult i32 %177, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %176
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %186, i64 %188
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %183, i8* %192)
  br label %194

194:                                              ; preds = %182
  %195 = load i32, i32* %6, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %176

197:                                              ; preds = %176
  br label %198

198:                                              ; preds = %197, %167
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %200 = call i32 @freeReplyObject(%struct.TYPE_14__* %199)
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %202 = call i32 @redisFree(%struct.TYPE_16__* %201)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @REDIS_OPTIONS_SET_TCP(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local %struct.TYPE_16__* @redisConnectWithOptions(%struct.TYPE_15__*) #1

declare dso_local i32 @redisFree(%struct.TYPE_16__*) #1

declare dso_local i64 @redisSecureConnection(%struct.TYPE_16__*, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_14__* @redisCommand(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_14__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
