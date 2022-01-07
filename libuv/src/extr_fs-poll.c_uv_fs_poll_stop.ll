; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_fs-poll.c_uv_fs_poll_stop.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_fs-poll.c_uv_fs_poll_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.poll_ctx* }
%struct.poll_ctx = type { i32, %struct.TYPE_4__* }

@timer_close_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fs_poll_stop(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.poll_ctx*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = bitcast %struct.TYPE_4__* %5 to i32*
  %7 = call i64 @uv_is_active(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.poll_ctx*, %struct.poll_ctx** %12, align 8
  store %struct.poll_ctx* %13, %struct.poll_ctx** %4, align 8
  %14 = load %struct.poll_ctx*, %struct.poll_ctx** %4, align 8
  %15 = icmp ne %struct.poll_ctx* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.poll_ctx*, %struct.poll_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = icmp eq %struct.TYPE_4__* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.poll_ctx*, %struct.poll_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %25, i32 0, i32 0
  %27 = call i64 @uv_is_active(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = load %struct.poll_ctx*, %struct.poll_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.poll_ctx, %struct.poll_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* @timer_close_cb, align 4
  %33 = call i32 @uv_close(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %10
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = call i32 @uv__handle_stop(%struct.TYPE_4__* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @uv_is_active(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i32 @uv__handle_stop(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
