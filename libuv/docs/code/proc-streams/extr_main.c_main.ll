; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/proc-streams/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/proc-streams/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8**, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32 }

@loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"proc-streams\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@UV_IGNORE = common dso_local global i8* null, align 8
@UV_INHERIT_FD = common dso_local global i8* null, align 8
@on_exit = common dso_local global i32 0, align 4
@child_req = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca [3 x %struct.TYPE_6__], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = call i32 (...) @uv_default_loop()
  store i32 %9, i32* @loop, align 4
  store i64 500, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = call i32 @uv_exepath(i8* %12, i64* %2)
  %14 = call i32 @strlen(i8* %12)
  %15 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = sub nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %12, i64 %17
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* %12, i8** %20, align 16
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* null, i8** %21, align 8
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 0), align 8
  %22 = load i8*, i8** @UV_IGNORE, align 8
  %23 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @UV_IGNORE, align 8
  %26 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %6, i64 0, i64 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @UV_INHERIT_FD, align 8
  %29 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %6, i64 0, i64 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %6, i64 0, i64 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 2, i32* %33, align 16
  %34 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %6, i64 0, i64 0
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 4), align 8
  %35 = load i32, i32* @on_exit, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 3), align 8
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 1), align 8
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8** %38, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 2), align 8
  %39 = load i32, i32* @loop, align 4
  %40 = call i32 @uv_spawn(i32 %39, i32* @child_req, %struct.TYPE_7__* @options)
  store i32 %40, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %0
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @uv_strerror(i32 %44)
  %46 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %51

47:                                               ; preds = %0
  %48 = load i32, i32* @loop, align 4
  %49 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %50 = call i32 @uv_run(i32 %48, i32 %49)
  store i32 %50, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @uv_default_loop(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @uv_exepath(i8*, i64*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @uv_spawn(i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_strerror(i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
