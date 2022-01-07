; ModuleID = '/home/carl/AnghaBench/hiredis/examples/extr_example-libevent-ssl.c_main.c'
source_filename = "/home/carl/AnghaBench/hiredis/examples/extr_example-libevent-ssl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i64 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Usage: %s <key> <host> <port> <cert> <certKey> [ca]\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sni\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"SSL Error!\0A\00", align 1
@connectCallback = common dso_local global i32 0, align 4
@disconnectCallback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"SET key %b\00", align 1
@getCallback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"end-1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"GET key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @SIGPIPE, align 4
  %16 = load i32, i32* @SIG_IGN, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %18, %struct.event_base** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @atoi(i8* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 4
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %11, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 5
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 5
  br i1 %48, label %49, label %53

49:                                               ; preds = %28
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 6
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ null, %53 ]
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call %struct.TYPE_7__* @redisAsyncConnect(i8* %56, i32 %57)
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %14, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  store i32 1, i32* %3, align 4
  br label %99

68:                                               ; preds = %54
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i64 @redisSecureConnection(i32* %70, i8* %71, i8* %72, i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i64, i64* @REDIS_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @exit(i32 1) #3
  unreachable

80:                                               ; preds = %68
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %82 = load %struct.event_base*, %struct.event_base** %6, align 8
  %83 = call i32 @redisLibeventAttach(%struct.TYPE_7__* %81, %struct.event_base* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %85 = load i32, i32* @connectCallback, align 4
  %86 = call i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__* %84, i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %88 = load i32, i32* @disconnectCallback, align 4
  %89 = call i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__* %87, i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %90, i32 0, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %91, i64 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %95 = load i32, i32* @getCallback, align 4
  %96 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %94, i32 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %97 = load %struct.event_base*, %struct.event_base** %6, align 8
  %98 = call i32 @event_base_dispatch(%struct.event_base* %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %80, %63
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.TYPE_7__* @redisAsyncConnect(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @redisSecureConnection(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @redisLibeventAttach(%struct.TYPE_7__*, %struct.event_base*) #1

declare dso_local i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncCommand(%struct.TYPE_7__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
