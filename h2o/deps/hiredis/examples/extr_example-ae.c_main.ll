; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/examples/extr_example-ae.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/examples/extr_example-ae.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@loop = common dso_local global i32 0, align 4
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
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @SIGPIPE, align 4
  %8 = load i32, i32* @SIG_IGN, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = call %struct.TYPE_7__* @redisAsyncConnect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 6379)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 1, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = call i32 @aeCreateEventLoop(i32 64)
  store i32 %21, i32* @loop, align 4
  %22 = load i32, i32* @loop, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = call i32 @redisAeAttach(i32 %22, %struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = load i32, i32* @connectCallback, align 4
  %27 = call i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__* %25, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = load i32, i32* @disconnectCallback, align 4
  %30 = call i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__* %28, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %31, i32 0, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = load i32, i32* @getCallback, align 4
  %48 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @loop, align 4
  %50 = call i32 @aeMain(i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %20, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local %struct.TYPE_7__* @redisAsyncConnect(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @aeCreateEventLoop(i32) #1

declare dso_local i32 @redisAeAttach(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncCommand(%struct.TYPE_7__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @aeMain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
