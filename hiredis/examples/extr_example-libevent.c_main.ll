; ModuleID = '/home/carl/AnghaBench/hiredis/examples/extr_example-libevent.c_main.c'
source_filename = "/home/carl/AnghaBench/hiredis/examples/extr_example-libevent.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.TYPE_10__ = type { %struct.timeval*, i32 }
%struct.timeval = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i64 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@connectCallback = common dso_local global i32 0, align 4
@disconnectCallback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SET key %b\00", align 1
@getCallback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"end-1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"GET key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @SIGPIPE, align 4
  %11 = load i32, i32* @SIG_IGN, align 4
  %12 = call i32 @signal(i32 %10, i32 %11)
  %13 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %13, %struct.event_base** %6, align 8
  %14 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = call i32 @REDIS_OPTIONS_SET_TCP(%struct.TYPE_10__* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 6379)
  %16 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store %struct.timeval* %8, %struct.timeval** %18, align 8
  %19 = call %struct.TYPE_11__* @redisAsyncConnectWithOptions(%struct.TYPE_10__* %7)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %59

29:                                               ; preds = %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = load %struct.event_base*, %struct.event_base** %6, align 8
  %32 = call i32 @redisLibeventAttach(%struct.TYPE_11__* %30, %struct.event_base* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = load i32, i32* @connectCallback, align 4
  %35 = call i32 @redisAsyncSetConnectCallback(%struct.TYPE_11__* %33, i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = load i32, i32* @disconnectCallback, align 4
  %38 = call i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_11__* %36, i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i32 (%struct.TYPE_11__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_11__* %39, i32 0, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %45, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = load i32, i32* @getCallback, align 4
  %56 = call i32 (%struct.TYPE_11__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_11__* %54, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.event_base*, %struct.event_base** %6, align 8
  %58 = call i32 @event_base_dispatch(%struct.event_base* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %29, %24
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @REDIS_OPTIONS_SET_TCP(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @redisAsyncConnectWithOptions(%struct.TYPE_10__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @redisLibeventAttach(%struct.TYPE_11__*, %struct.event_base*) #1

declare dso_local i32 @redisAsyncSetConnectCallback(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @redisAsyncCommand(%struct.TYPE_11__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
