; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/uvwget/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/uvwget/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Could not init cURL\0A\00", align 1
@timeout = common dso_local global i32 0, align 4
@curl_handle = common dso_local global i32 0, align 4
@CURLMOPT_SOCKETFUNCTION = common dso_local global i32 0, align 4
@handle_socket = common dso_local global i32 0, align 4
@CURLMOPT_TIMERFUNCTION = common dso_local global i32 0, align 4
@start_timeout = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @uv_default_loop()
  store i32 %6, i32* @loop, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

10:                                               ; preds = %2
  %11 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %12 = call i64 @curl_global_init(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %47

17:                                               ; preds = %10
  %18 = load i32, i32* @loop, align 4
  %19 = call i32 @uv_timer_init(i32 %18, i32* @timeout)
  %20 = call i32 (...) @curl_multi_init()
  store i32 %20, i32* @curl_handle, align 4
  %21 = load i32, i32* @curl_handle, align 4
  %22 = load i32, i32* @CURLMOPT_SOCKETFUNCTION, align 4
  %23 = load i32, i32* @handle_socket, align 4
  %24 = call i32 @curl_multi_setopt(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @curl_handle, align 4
  %26 = load i32, i32* @CURLMOPT_TIMERFUNCTION, align 4
  %27 = load i32, i32* @start_timeout, align 4
  %28 = call i32 @curl_multi_setopt(i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %33, %17
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = icmp sgt i32 %30, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @add_download(i8* %38, i32 %39)
  br label %29

41:                                               ; preds = %29
  %42 = load i32, i32* @loop, align 4
  %43 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %44 = call i32 @uv_run(i32 %42, i32 %43)
  %45 = load i32, i32* @curl_handle, align 4
  %46 = call i32 @curl_multi_cleanup(i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %14, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @uv_timer_init(i32, i32*) #1

declare dso_local i32 @curl_multi_init(...) #1

declare dso_local i32 @curl_multi_setopt(i32, i32, i32) #1

declare dso_local i32 @add_download(i8*, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @curl_multi_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
