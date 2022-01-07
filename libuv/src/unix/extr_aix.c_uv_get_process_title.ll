; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_get_process_title.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_get_process_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@process_title_mutex_once = common dso_local global i32 0, align 4
@init_process_title_mutex_once = common dso_local global i32 0, align 4
@process_title_mutex = common dso_local global i32 0, align 4
@process_argv = common dso_local global i32* null, align 8
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
  br label %39

14:                                               ; preds = %9
  %15 = load i32, i32* @init_process_title_mutex_once, align 4
  %16 = call i32 @uv_once(i32* @process_title_mutex_once, i32 %15)
  %17 = call i32 @uv_mutex_lock(i32* @process_title_mutex)
  %18 = load i32*, i32** @process_argv, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strlen(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = call i32 @uv_mutex_unlock(i32* @process_title_mutex)
  %27 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %14
  %29 = load i8*, i8** %4, align 8
  %30 = load i32*, i32** @process_argv, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @memcpy(i8* %29, i32 %32, i64 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  %38 = call i32 @uv_mutex_unlock(i32* @process_title_mutex)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %28, %25, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @uv_once(i32*, i32) #1

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
