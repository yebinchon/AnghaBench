; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-signal-multiple-loops.c_loop_creating_worker.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-signal-multiple-loops.c_loop_creating_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signal_unexpected_cb = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@loop_creation_counter = common dso_local global i32 0, align 4
@stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @loop_creating_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_creating_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  br label %7

7:                                                ; preds = %44, %1
  %8 = call i32* @malloc(i32 4)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @uv_loop_init(i32* %13)
  %15 = icmp eq i64 0, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @uv_signal_init(i32* %18, i32* %4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* @signal_unexpected_cb, align 4
  %25 = load i32, i32* @SIGTERM, align 4
  %26 = call i32 @uv_signal_start(i32* %4, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = call i32 @uv_close(i32* %4, i32* null)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %34 = call i32 @uv_run(i32* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @uv_loop_close(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @free(i32* %41)
  %43 = call i32 @increment_counter(i32* @loop_creation_counter)
  br label %44

44:                                               ; preds = %7
  %45 = load i32, i32* @stop, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %7, label %48

48:                                               ; preds = %44
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_loop_init(i32*) #1

declare dso_local i32 @uv_signal_init(i32*, i32*) #1

declare dso_local i32 @uv_signal_start(i32*, i32, i32) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

declare dso_local i32 @uv_run(i32*, i32) #1

declare dso_local i32 @uv_loop_close(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @increment_counter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
