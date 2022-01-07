; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_set_process_title.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_set_process_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_ENOMEM = common dso_local global i32 0, align 4
@process_title_mutex_once = common dso_local global i32 0, align 4
@init_process_title_mutex_once = common dso_local global i32 0, align 4
@process_title_mutex = common dso_local global i32 0, align 4
@process_title_ptr = common dso_local global i8* null, align 8
@process_argv = common dso_local global i8** null, align 8
@process_argc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_set_process_title(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @uv__strdup(i8* %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @init_process_title_mutex_once, align 4
  %13 = call i32 @uv_once(i32* @process_title_mutex_once, i32 %12)
  %14 = call i32 @uv_mutex_lock(i32* @process_title_mutex)
  %15 = load i8*, i8** @process_title_ptr, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** @process_title_ptr, align 8
  %19 = call i32 @uv__free(i8* %18)
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** @process_title_ptr, align 8
  %22 = load i8*, i8** @process_title_ptr, align 8
  %23 = load i8**, i8*** @process_argv, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @process_argc, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i8**, i8*** @process_argv, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* null, i8** %29, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = call i32 @uv_mutex_unlock(i32* @process_title_mutex)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i8* @uv__strdup(i8*) #1

declare dso_local i32 @uv_once(i32*, i32) #1

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @uv__free(i8*) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
