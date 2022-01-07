; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/examples/extr_example-macosx.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/examples/extr_example-macosx.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error: Cannot get current run loop\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@connectCallback = common dso_local global i32 0, align 4
@disconnectCallback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"SET key %b\00", align 1
@getCallback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"end-1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"GET key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @SIGPIPE, align 4
  %9 = load i32, i32* @SIG_IGN, align 4
  %10 = call i32 @signal(i32 %8, i32 %9)
  %11 = call i32 (...) @CFRunLoopGetCurrent()
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = call %struct.TYPE_7__* @redisAsyncConnect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 6379)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i32 1, i32* %3, align 4
  br label %56

27:                                               ; preds = %16
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @redisMacOSAttach(%struct.TYPE_7__* %28, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = load i32, i32* @connectCallback, align 4
  %33 = call i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__* %31, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = load i32, i32* @disconnectCallback, align 4
  %36 = call i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__* %34, i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %37, i32 0, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = load i32, i32* @getCallback, align 4
  %54 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %55 = call i32 (...) @CFRunLoopRun()
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %27, %22, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @CFRunLoopGetCurrent(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_7__* @redisAsyncConnect(i8*, i32) #1

declare dso_local i32 @redisMacOSAttach(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncCommand(%struct.TYPE_7__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CFRunLoopRun(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
