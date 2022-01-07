; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_get_process_title.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_get_process_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@process_title_lock = common dso_local global i32 0, align 4
@process_title = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_get_process_title(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @UV_EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %9
  %15 = call i32 (...) @uv__once_init()
  %16 = call i32 @EnterCriticalSection(i32* @process_title_lock)
  %17 = load i32, i32* @process_title, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = call i32 (...) @uv__get_process_title()
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i32 @LeaveCriticalSection(i32* @process_title_lock)
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 @uv_translate_sys_error(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %19, %14
  %27 = load i32, i32* @process_title, align 4
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* @process_title, align 4
  %30 = call i32 @strlen(i32 %29)
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = call i32 @LeaveCriticalSection(i32* @process_title_lock)
  %38 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %26
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @process_title, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @memcpy(i8* %40, i32 %41, i64 %42)
  %44 = call i32 @LeaveCriticalSection(i32* @process_title_lock)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %36, %22, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @uv__once_init(...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @uv__get_process_title(...) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
