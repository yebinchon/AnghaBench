; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-embed.c_embed_thread_runner.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-embed.c_embed_thread_runner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@embed_closed = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@embed_async = common dso_local global i32 0, align 4
@embed_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @embed_thread_runner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @embed_thread_runner(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* @embed_closed, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = call i32 (...) @uv_default_loop()
  %12 = call i32 @uv_backend_fd(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @uv_default_loop()
  %14 = call i32 @uv_backend_timeout(i32 %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %23, %10
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %15, label %25

25:                                               ; preds = %23
  %26 = call i32 @uv_async_send(i32* @embed_async)
  %27 = call i32 @uv_sem_wait(i32* @embed_sem)
  br label %6

28:                                               ; preds = %6
  ret void
}

declare dso_local i32 @uv_backend_fd(i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_backend_timeout(i32) #1

declare dso_local i32 @uv_async_send(i32*) #1

declare dso_local i32 @uv_sem_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
