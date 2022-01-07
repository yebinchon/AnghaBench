; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/cgi/extr_main.c_invoke_cgi_script.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/cgi/extr_main.c_invoke_cgi_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8**, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"cgi\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tick\00", align 1
@options = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@UV_IGNORE = common dso_local global i8* null, align 8
@UV_INHERIT_STREAM = common dso_local global i8* null, align 8
@cleanup_handles = common dso_local global i32 0, align 4
@child_req = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@loop = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invoke_cgi_script(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca [3 x %struct.TYPE_8__], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 500, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call i32 @uv_exepath(i8* %12, i64* %3)
  %14 = call i32 @strlen(i8* %12)
  %15 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = sub nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %12, i64 %17
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* %12, i8** %20, align 16
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  store i8* null, i8** %21, align 8
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 0), align 8
  %22 = load i8*, i8** @UV_IGNORE, align 8
  %23 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %7, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 16
  %25 = load i8*, i8** @UV_INHERIT_STREAM, align 8
  %26 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %7, i64 0, i64 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 16
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %7, i64 0, i64 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load i8*, i8** @UV_IGNORE, align 8
  %33 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %7, i64 0, i64 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 16
  %35 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %7, i64 0, i64 0
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 4), align 8
  %36 = load i32, i32* @cleanup_handles, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 3), align 8
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %38 = load i8*, i8** %37, align 16
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 1), align 8
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8** %39, i8*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 2), align 8
  %40 = load i32*, i32** %2, align 8
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @child_req, i32 0, i32 0), align 8
  %42 = load i32, i32* @loop, align 4
  %43 = call i32 @uv_spawn(i32 %42, %struct.TYPE_9__* @child_req, %struct.TYPE_10__* @options)
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @uv_strerror(i32 %47)
  %49 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  store i32 1, i32* %9, align 4
  br label %51

50:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %55 [
    i32 0, label %54
    i32 1, label %54
  ]

54:                                               ; preds = %51, %51
  ret void

55:                                               ; preds = %51
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uv_exepath(i8*, i64*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @uv_spawn(i32, %struct.TYPE_9__*, %struct.TYPE_10__*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @uv_strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
