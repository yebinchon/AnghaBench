; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_poll.c_uv_poll_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_poll.c_uv_poll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@UV_EEXIST = common dso_local global i32 0, align 4
@UV_ENOTTY = common dso_local global i32 0, align 4
@UV_POLL = common dso_local global i32 0, align 4
@uv__poll_io = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_poll_init(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @uv__fd_exists(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @UV_EEXIST, align 4
  store i32 %14, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @uv__io_check_fd(i32* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %48

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @uv__nonblock(i32 %24, i32 1)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @UV_ENOTTY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %48

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = bitcast %struct.TYPE_3__* %37 to i32*
  %39 = load i32, i32* @UV_POLL, align 4
  %40 = call i32 @uv__handle_init(i32* %36, i32* %38, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* @uv__poll_io, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @uv__io_init(i32* %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %35, %33, %21, %13
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @uv__fd_exists(i32*, i32) #1

declare dso_local i32 @uv__io_check_fd(i32*, i32) #1

declare dso_local i32 @uv__nonblock(i32, i32) #1

declare dso_local i32 @uv__handle_init(i32*, i32*, i32) #1

declare dso_local i32 @uv__io_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
