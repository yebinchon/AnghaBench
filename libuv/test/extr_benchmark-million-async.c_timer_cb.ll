; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-million-async.c_timer_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-million-async.c_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@done = common dso_local global i32 0, align 4
@thread_id = common dso_local global i32 0, align 4
@container = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* @done, align 4
  %5 = call i64 @uv_thread_join(i32* @thread_id)
  %6 = icmp eq i64 0, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @container, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %13)
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @container, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @container, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %16
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = bitcast %struct.TYPE_4__* %33 to i32*
  %35 = call i32 @uv_close(i32* %34, i32* null)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %9

39:                                               ; preds = %9
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @uv_close(i32* %40, i32* null)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_thread_join(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
