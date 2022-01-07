; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/examples/extr_example-ivykis.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/examples/extr_example-ivykis.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }

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
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @SIGPIPE, align 4
  %8 = load i32, i32* @SIG_IGN, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = call i32 (...) @iv_init()
  %11 = call %struct.TYPE_7__* @redisAsyncConnect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 6379)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  store i32 1, i32* %3, align 4
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = call i32 @redisIvykisAttach(%struct.TYPE_7__* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load i32, i32* @connectCallback, align 4
  %26 = call i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__* %24, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load i32, i32* @disconnectCallback, align 4
  %29 = call i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__* %27, i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %30, i32 0, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = load i32, i32* @getCallback, align 4
  %47 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %45, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 (...) @iv_main()
  %49 = call i32 (...) @iv_deinit()
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %21, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @iv_init(...) #1

declare dso_local %struct.TYPE_7__* @redisAsyncConnect(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @redisIvykisAttach(%struct.TYPE_7__*) #1

declare dso_local i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncCommand(%struct.TYPE_7__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @iv_main(...) #1

declare dso_local i32 @iv_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
