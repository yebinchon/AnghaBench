; ModuleID = '/home/carl/AnghaBench/hiredis/extr_test.c_test_blocking_connection_timeouts.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_test.c_test_blocking_connection_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_19__*)* }
%struct.TYPE_18__ = type { i64, i32 }
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
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
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
  %17 = call %struct.TYPE_19__* @do_connect(i8* %14, i8* %16)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %4, align 8
  %18 = call i32 @test(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = call %struct.TYPE_18__* @redisCommand(%struct.TYPE_19__* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = call i32 @freeReplyObject(%struct.TYPE_18__* %21)
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 10000, i32* %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = bitcast %struct.timeval* %8 to { i32, i64 }*
  %27 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @redisSetTimeout(%struct.TYPE_19__* %25, i32 %28, i64 %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = call %struct.TYPE_18__* @redisCommand(%struct.TYPE_19__* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %5, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = icmp ne %struct.TYPE_18__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REDIS_REPLY_STRING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @memcmp(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %47 = icmp eq i64 %46, 0
  br label %48

48:                                               ; preds = %42, %36, %2
  %49 = phi i1 [ false, %36 ], [ false, %2 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @test_cond(i32 %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = call i32 @freeReplyObject(%struct.TYPE_18__* %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = call i32 @disconnect(%struct.TYPE_19__* %54, i32 0)
  %56 = bitcast %struct.config* %3 to { i8*, i8* }*
  %57 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %56, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call %struct.TYPE_19__* @do_connect(i8* %58, i8* %60)
  store %struct.TYPE_19__* %61, %struct.TYPE_19__** %4, align 8
  %62 = call i32 @test(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = call i32 @redisAppendFormattedCommand(%struct.TYPE_19__* %63, i8* %64, i32 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = call i64 %72(%struct.TYPE_19__* %73)
  store i64 %74, i64* %6, align 8
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 10000, i32* %76, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = bitcast %struct.timeval* %8 to { i32, i64 }*
  %79 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %78, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @redisSetTimeout(%struct.TYPE_19__* %77, i32 %80, i64 %82)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = call %struct.TYPE_18__* @redisCommand(%struct.TYPE_19__* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %48
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = icmp eq %struct.TYPE_18__* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @REDIS_ERR_IO, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @strcmp(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br label %103

103:                                              ; preds = %97, %91, %88, %48
  %104 = phi i1 [ false, %91 ], [ false, %88 ], [ false, %48 ], [ %102, %97 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @test_cond(i32 %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = call i32 @freeReplyObject(%struct.TYPE_18__* %107)
  %109 = call i32 @test(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = bitcast %struct.config* %3 to { i8*, i8* }*
  %112 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %111, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @do_reconnect(%struct.TYPE_19__* %110, i8* %113, i8* %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = call %struct.TYPE_18__* @redisCommand(%struct.TYPE_19__* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_18__* %118, %struct.TYPE_18__** %5, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %120 = icmp ne %struct.TYPE_18__* %119, null
  br i1 %120, label %121, label %133

121:                                              ; preds = %103
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @strcmp(i32 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br label %133

133:                                              ; preds = %127, %121, %103
  %134 = phi i1 [ false, %121 ], [ false, %103 ], [ %132, %127 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @test_cond(i32 %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = call i32 @freeReplyObject(%struct.TYPE_18__* %137)
  %139 = call i32 @test(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %140 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %141, align 8
  %142 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %143, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %145 = bitcast %struct.config* %3 to { i8*, i8* }*
  %146 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %145, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @do_reconnect(%struct.TYPE_19__* %144, i8* %147, i8* %149)
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = call %struct.TYPE_18__* @redisCommand(%struct.TYPE_19__* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_18__* %152, %struct.TYPE_18__** %5, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %154 = icmp ne %struct.TYPE_18__* %153, null
  br i1 %154, label %155, label %167

155:                                              ; preds = %133
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @strcmp(i32 %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br label %167

167:                                              ; preds = %161, %155, %133
  %168 = phi i1 [ false, %155 ], [ false, %133 ], [ %166, %161 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @test_cond(i32 %169)
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %172 = call i32 @freeReplyObject(%struct.TYPE_18__* %171)
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = call i32 @disconnect(%struct.TYPE_19__* %173, i32 0)
  ret void
}

declare dso_local %struct.TYPE_19__* @do_connect(i8*, i8*) #1

declare dso_local i32 @test(i8*) #1

declare dso_local %struct.TYPE_18__* @redisCommand(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_18__*) #1

declare dso_local i32 @redisSetTimeout(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @test_cond(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @disconnect(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @redisAppendFormattedCommand(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @do_reconnect(%struct.TYPE_19__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
