; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_test.c_test_blocking_connection_timeouts.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_test.c_test_blocking_connection_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"DEBUG SLEEP 3\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Successfully completes a command when the timeout is not exceeded: \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SET foo fast\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"GET foo\00", align 1
@REDIS_REPLY_STRING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Does not return a reply when the command times out: \00", align 1
@REDIS_ERR_IO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"Resource temporarily unavailable\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Reconnect properly reconnects after a timeout: \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@REDIS_REPLY_STATUS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Reconnect properly uses owned parameters: \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_blocking_connection_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_blocking_connection_timeouts(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.config, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = bitcast %struct.config* %3 to { i8*, i8* }*
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %9, i32 0, i32 0
  store i8* %0, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %9, i32 0, i32 1
  store i8* %1, i8** %11, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %12 = bitcast %struct.config* %3 to { i8*, i8* }*
  %13 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %12, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = call %struct.TYPE_15__* @connect(i8* %14, i8* %16)
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %4, align 8
  %18 = call i32 @test(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = call %struct.TYPE_14__* @redisCommand(%struct.TYPE_15__* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %5, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = call i32 @freeReplyObject(%struct.TYPE_14__* %21)
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 10000, i32* %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = bitcast %struct.timeval* %8 to { i32, i64 }*
  %27 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @redisSetTimeout(%struct.TYPE_15__* %25, i32 %28, i64 %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = call %struct.TYPE_14__* @redisCommand(%struct.TYPE_15__* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %5, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REDIS_REPLY_STRING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @memcmp(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %47 = icmp eq i64 %46, 0
  br label %48

48:                                               ; preds = %42, %36, %2
  %49 = phi i1 [ false, %36 ], [ false, %2 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @test_cond(i32 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = call i32 @freeReplyObject(%struct.TYPE_14__* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i32 @disconnect(%struct.TYPE_15__* %54, i32 0)
  %56 = bitcast %struct.config* %3 to { i8*, i8* }*
  %57 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %56, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call %struct.TYPE_15__* @connect(i8* %58, i8* %60)
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %4, align 8
  %62 = call i32 @test(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = call i64 @write(i32 %65, i8* %66, i32 %68)
  store i64 %69, i64* %6, align 8
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 10000, i32* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = bitcast %struct.timeval* %8 to { i32, i64 }*
  %74 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %73, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @redisSetTimeout(%struct.TYPE_15__* %72, i32 %75, i64 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = call %struct.TYPE_14__* @redisCommand(%struct.TYPE_15__* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %48
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = icmp eq %struct.TYPE_14__* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @REDIS_ERR_IO, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @strcmp(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br label %98

98:                                               ; preds = %92, %86, %83, %48
  %99 = phi i1 [ false, %86 ], [ false, %83 ], [ false, %48 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @test_cond(i32 %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = call i32 @freeReplyObject(%struct.TYPE_14__* %102)
  %104 = call i32 @test(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = call i32 @redisReconnect(%struct.TYPE_15__* %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = call %struct.TYPE_14__* @redisCommand(%struct.TYPE_15__* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %5, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = icmp ne %struct.TYPE_14__* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %98
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @strcmp(i32 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br label %123

123:                                              ; preds = %117, %111, %98
  %124 = phi i1 [ false, %111 ], [ false, %98 ], [ %122, %117 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @test_cond(i32 %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = call i32 @freeReplyObject(%struct.TYPE_14__* %127)
  %129 = call i32 @test(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %130 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %131, align 8
  %132 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %133, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = call i32 @redisReconnect(%struct.TYPE_15__* %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = call %struct.TYPE_14__* @redisCommand(%struct.TYPE_15__* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %5, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = icmp ne %struct.TYPE_14__* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %123
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @strcmp(i32 %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br label %152

152:                                              ; preds = %146, %140, %123
  %153 = phi i1 [ false, %140 ], [ false, %123 ], [ %151, %146 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @test_cond(i32 %154)
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %157 = call i32 @freeReplyObject(%struct.TYPE_14__* %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = call i32 @disconnect(%struct.TYPE_15__* %158, i32 0)
  ret void
}

declare dso_local %struct.TYPE_15__* @connect(i8*, i8*) #1

declare dso_local i32 @test(i8*) #1

declare dso_local %struct.TYPE_14__* @redisCommand(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_14__*) #1

declare dso_local i32 @redisSetTimeout(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @test_cond(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @disconnect(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @redisReconnect(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
