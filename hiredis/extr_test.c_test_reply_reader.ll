; ModuleID = '/home/carl/AnghaBench/hiredis/extr_test.c_test_reply_reader.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_test.c_test_reply_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Error handling in reply parser: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"@foo\0D\0A\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Protocol error, got \22@\22 as reply type byte\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Memory cleanup in reply parser: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"*2\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"$5\0D\0Ahello\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Set error on nested multi bulks with depth > 7: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"*1\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"No support for\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Correctly parses LLONG_MAX: \00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c":9223372036854775807\0D\0A\00", align 1
@REDIS_OK = common dso_local global i32 0, align 4
@REDIS_REPLY_INTEGER = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [29 x i8] c"Set error when > LLONG_MAX: \00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c":9223372036854775808\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Bad integer value\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Correctly parses LLONG_MIN: \00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c":-9223372036854775808\0D\0A\00", align 1
@LLONG_MIN = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [29 x i8] c"Set error when < LLONG_MIN: \00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c":-9223372036854775809\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Set error when array < -1: \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"*-2\0D\0A+asdf\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Multi-bulk length out of range\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Set error when bulk < -1: \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"$-2\0D\0Aasdf\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Bulk string length out of range\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Works with NULL functions for reply: \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"+OK\0D\0A\00", align 1
@REDIS_REPLY_STATUS = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [62 x i8] c"Works when a single newline (\\r\\n) covers two calls to feed: \00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"+OK\0D\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"Don't reset state after protocol error: \00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"Don't do empty allocation for empty multi bulk: \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"*0\0D\0A\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reply_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reply_reader() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @test(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %6 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %1, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %8 = call i32 @redisReaderFeed(%struct.TYPE_8__* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %10 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %9, i8** null)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @REDIS_ERR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @strcasecmp(i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %14, %0
  %21 = phi i1 [ false, %0 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @test_cond(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %25 = call i32 @redisReaderFree(%struct.TYPE_8__* %24)
  %26 = call i32 @test(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %27 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %1, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %29 = call i32 @redisReaderFeed(%struct.TYPE_8__* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %31 = call i32 @redisReaderFeed(%struct.TYPE_8__* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %33 = call i32 @redisReaderFeed(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %35 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %34, i8** null)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @REDIS_ERR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %20
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @strcasecmp(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %39, %20
  %46 = phi i1 [ false, %20 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @test_cond(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %50 = call i32 @redisReaderFree(%struct.TYPE_8__* %49)
  %51 = call i32 @test(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %52 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %1, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %59, %45
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 9
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %58 = call i32 @redisReaderFeed(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %53

62:                                               ; preds = %53
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %64 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %63, i8** null)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @REDIS_ERR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @strncasecmp(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 14)
  %73 = icmp eq i64 %72, 0
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i1 [ false, %62 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @test_cond(i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %79 = call i32 @redisReaderFree(%struct.TYPE_8__* %78)
  %80 = call i32 @test(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %81 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %1, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %83 = call i32 @redisReaderFeed(%struct.TYPE_8__* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 22)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %85 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %84, i8** %2)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @REDIS_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %74
  %90 = load i8*, i8** %2, align 8
  %91 = bitcast i8* %90 to %struct.TYPE_7__*
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i8*, i8** %2, align 8
  %98 = bitcast i8* %97 to %struct.TYPE_7__*
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LLONG_MAX, align 8
  %102 = icmp eq i64 %100, %101
  br label %103

103:                                              ; preds = %96, %89, %74
  %104 = phi i1 [ false, %89 ], [ false, %74 ], [ %102, %96 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @test_cond(i32 %105)
  %107 = load i8*, i8** %2, align 8
  %108 = call i32 @freeReplyObject(i8* %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %110 = call i32 @redisReaderFree(%struct.TYPE_8__* %109)
  %111 = call i32 @test(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %112 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %1, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %114 = call i32 @redisReaderFeed(%struct.TYPE_8__* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 22)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %116 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %115, i8** %2)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @REDIS_ERR, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %103
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @strcasecmp(i32 %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br label %126

126:                                              ; preds = %120, %103
  %127 = phi i1 [ false, %103 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @test_cond(i32 %128)
  %130 = load i8*, i8** %2, align 8
  %131 = call i32 @freeReplyObject(i8* %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %133 = call i32 @redisReaderFree(%struct.TYPE_8__* %132)
  %134 = call i32 @test(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %135 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %1, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %137 = call i32 @redisReaderFeed(%struct.TYPE_8__* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 23)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %139 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %138, i8** %2)
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @REDIS_OK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %126
  %144 = load i8*, i8** %2, align 8
  %145 = bitcast i8* %144 to %struct.TYPE_7__*
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = load i8*, i8** %2, align 8
  %152 = bitcast i8* %151 to %struct.TYPE_7__*
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @LLONG_MIN, align 8
  %156 = icmp eq i64 %154, %155
  br label %157

157:                                              ; preds = %150, %143, %126
  %158 = phi i1 [ false, %143 ], [ false, %126 ], [ %156, %150 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @test_cond(i32 %159)
  %161 = load i8*, i8** %2, align 8
  %162 = call i32 @freeReplyObject(i8* %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %164 = call i32 @redisReaderFree(%struct.TYPE_8__* %163)
  %165 = call i32 @test(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %166 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %166, %struct.TYPE_8__** %1, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %168 = call i32 @redisReaderFeed(%struct.TYPE_8__* %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 23)
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %170 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %169, i8** %2)
  store i32 %170, i32* %3, align 4
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @REDIS_ERR, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %157
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @strcasecmp(i32 %177, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br label %180

180:                                              ; preds = %174, %157
  %181 = phi i1 [ false, %157 ], [ %179, %174 ]
  %182 = zext i1 %181 to i32
  %183 = call i32 @test_cond(i32 %182)
  %184 = load i8*, i8** %2, align 8
  %185 = call i32 @freeReplyObject(i8* %184)
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %187 = call i32 @redisReaderFree(%struct.TYPE_8__* %186)
  %188 = call i32 @test(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %189 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %189, %struct.TYPE_8__** %1, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %191 = call i32 @redisReaderFeed(%struct.TYPE_8__* %190, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 12)
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %193 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %192, i8** %2)
  store i32 %193, i32* %3, align 4
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* @REDIS_ERR, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %180
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i64 @strcasecmp(i32 %200, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br label %203

203:                                              ; preds = %197, %180
  %204 = phi i1 [ false, %180 ], [ %202, %197 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @test_cond(i32 %205)
  %207 = load i8*, i8** %2, align 8
  %208 = call i32 @freeReplyObject(i8* %207)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %210 = call i32 @redisReaderFree(%struct.TYPE_8__* %209)
  %211 = call i32 @test(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  %212 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %212, %struct.TYPE_8__** %1, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %214 = call i32 @redisReaderFeed(%struct.TYPE_8__* %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 11)
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %216 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %215, i8** %2)
  store i32 %216, i32* %3, align 4
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* @REDIS_ERR, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %203
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @strcasecmp(i32 %223, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  %225 = icmp eq i64 %224, 0
  br label %226

226:                                              ; preds = %220, %203
  %227 = phi i1 [ false, %203 ], [ %225, %220 ]
  %228 = zext i1 %227 to i32
  %229 = call i32 @test_cond(i32 %228)
  %230 = load i8*, i8** %2, align 8
  %231 = call i32 @freeReplyObject(i8* %230)
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %233 = call i32 @redisReaderFree(%struct.TYPE_8__* %232)
  %234 = call i32 @test(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0))
  %235 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %235, %struct.TYPE_8__** %1, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  store i32* null, i32** %237, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %239 = call i32 @redisReaderFeed(%struct.TYPE_8__* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 5)
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %241 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %240, i8** %2)
  store i32 %241, i32* %3, align 4
  %242 = load i32, i32* %3, align 4
  %243 = load i32, i32* @REDIS_OK, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %226
  %246 = load i8*, i8** %2, align 8
  %247 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %248 = inttoptr i64 %247 to i8*
  %249 = icmp eq i8* %246, %248
  br label %250

250:                                              ; preds = %245, %226
  %251 = phi i1 [ false, %226 ], [ %249, %245 ]
  %252 = zext i1 %251 to i32
  %253 = call i32 @test_cond(i32 %252)
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %255 = call i32 @redisReaderFree(%struct.TYPE_8__* %254)
  %256 = call i32 @test(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0))
  %257 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %257, %struct.TYPE_8__** %1, align 8
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  store i32* null, i32** %259, align 8
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %261 = call i32 @redisReaderFeed(%struct.TYPE_8__* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 4)
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %263 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %262, i8** %2)
  store i32 %263, i32* %3, align 4
  %264 = load i32, i32* %3, align 4
  %265 = load i32, i32* @REDIS_OK, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %250
  %268 = load i8*, i8** %2, align 8
  %269 = icmp eq i8* %268, null
  br label %270

270:                                              ; preds = %267, %250
  %271 = phi i1 [ false, %250 ], [ %269, %267 ]
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %275 = call i32 @redisReaderFeed(%struct.TYPE_8__* %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 1)
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %277 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %276, i8** %2)
  store i32 %277, i32* %3, align 4
  %278 = load i32, i32* %3, align 4
  %279 = load i32, i32* @REDIS_OK, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %270
  %282 = load i8*, i8** %2, align 8
  %283 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %284 = inttoptr i64 %283 to i8*
  %285 = icmp eq i8* %282, %284
  br label %286

286:                                              ; preds = %281, %270
  %287 = phi i1 [ false, %270 ], [ %285, %281 ]
  %288 = zext i1 %287 to i32
  %289 = call i32 @test_cond(i32 %288)
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %291 = call i32 @redisReaderFree(%struct.TYPE_8__* %290)
  %292 = call i32 @test(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0))
  %293 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %293, %struct.TYPE_8__** %1, align 8
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  store i32* null, i32** %295, align 8
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %297 = call i32 @redisReaderFeed(%struct.TYPE_8__* %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 1)
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %299 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %298, i8** %2)
  store i32 %299, i32* %3, align 4
  %300 = load i32, i32* %3, align 4
  %301 = load i32, i32* @REDIS_ERR, align 4
  %302 = icmp eq i32 %300, %301
  %303 = zext i1 %302 to i32
  %304 = call i32 @assert(i32 %303)
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %306 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %305, i8** %2)
  store i32 %306, i32* %3, align 4
  %307 = load i32, i32* %3, align 4
  %308 = load i32, i32* @REDIS_ERR, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %286
  %311 = load i8*, i8** %2, align 8
  %312 = icmp eq i8* %311, null
  br label %313

313:                                              ; preds = %310, %286
  %314 = phi i1 [ false, %286 ], [ %312, %310 ]
  %315 = zext i1 %314 to i32
  %316 = call i32 @test_cond(i32 %315)
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %318 = call i32 @redisReaderFree(%struct.TYPE_8__* %317)
  %319 = call i32 @test(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i64 0, i64 0))
  %320 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %320, %struct.TYPE_8__** %1, align 8
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %322 = call i32 @redisReaderFeed(%struct.TYPE_8__* %321, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 4)
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %324 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %323, i8** %2)
  store i32 %324, i32* %3, align 4
  %325 = load i32, i32* %3, align 4
  %326 = load i32, i32* @REDIS_OK, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %341

328:                                              ; preds = %313
  %329 = load i8*, i8** %2, align 8
  %330 = bitcast i8* %329 to %struct.TYPE_7__*
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %341

335:                                              ; preds = %328
  %336 = load i8*, i8** %2, align 8
  %337 = bitcast i8* %336 to %struct.TYPE_7__*
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = icmp eq i64 %339, 0
  br label %341

341:                                              ; preds = %335, %328, %313
  %342 = phi i1 [ false, %328 ], [ false, %313 ], [ %340, %335 ]
  %343 = zext i1 %342 to i32
  %344 = call i32 @test_cond(i32 %343)
  %345 = load i8*, i8** %2, align 8
  %346 = call i32 @freeReplyObject(i8* %345)
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %348 = call i32 @redisReaderFree(%struct.TYPE_8__* %347)
  ret void
}

declare dso_local i32 @test(i8*) #1

declare dso_local %struct.TYPE_8__* @redisReaderCreate(...) #1

declare dso_local i32 @redisReaderFeed(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @redisReaderGetReply(%struct.TYPE_8__*, i8**) #1

declare dso_local i32 @test_cond(i32) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @redisReaderFree(%struct.TYPE_8__*) #1

declare dso_local i64 @strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @freeReplyObject(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
