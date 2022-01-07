; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_bsd-proctitle.c_uv_get_process_title.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_bsd-proctitle.c_uv_get_process_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@process_title_mutex_once = common dso_local global i32 0, align 4
@init_process_title_mutex_once = common dso_local global i32 0, align 4
@process_title_mutex = common dso_local global i32 0, align 4
@process_title = common dso_local global i32* null, align 8
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
  br label %42

14:                                               ; preds = %9
  %15 = load i32, i32* @init_process_title_mutex_once, align 4
  %16 = call i32 @uv_once(i32* @process_title_mutex_once, i32 %15)
  %17 = call i32 @uv_mutex_lock(i32* @process_title_mutex)
  %18 = load i32*, i32** @process_title, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i32*, i32** @process_title, align 8
  %22 = call i32 @strlen(i32* %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = call i32 @uv_mutex_unlock(i32* @process_title_mutex)
  %30 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %20
  %32 = load i8*, i8** %4, align 8
  %33 = load i32*, i32** @process_title, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @memcpy(i8* %32, i32* %33, i64 %34)
  br label %37

36:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = call i32 @uv_mutex_unlock(i32* @process_title_mutex)
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 0, i8* %41, align 1
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %28, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @uv_once(i32*, i32) #1

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
