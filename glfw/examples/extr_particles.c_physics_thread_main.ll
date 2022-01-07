; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_particles.c_physics_thread_main.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_particles.c_physics_thread_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@thread_sync = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @physics_thread_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @physics_thread_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.timespec, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %3, align 8
  br label %7

7:                                                ; preds = %40, %1
  %8 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 3))
  br label %9

9:                                                ; preds = %19, %7
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @glfwWindowShouldClose(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 0), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 1), align 8
  %16 = icmp sgt i64 %14, %15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %35

19:                                               ; preds = %17
  %20 = load i32, i32* @CLOCK_REALTIME, align 4
  %21 = call i32 @clock_gettime(i32 %20, %struct.timespec* %4)
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 100000000
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 1000000000
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %32, 1000000000
  store i32 %33, i32* %31, align 4
  %34 = call i32 @cnd_timedwait(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 6), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 3), %struct.timespec* %4)
  br label %9

35:                                               ; preds = %17
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @glfwWindowShouldClose(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %48

40:                                               ; preds = %35
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 5), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 4), align 8
  %43 = call i32 @particle_engine(i32 %41, i32 %42)
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 0), align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 0), align 8
  %46 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 3))
  %47 = call i32 @cnd_signal(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_sync, i32 0, i32 2))
  br label %7

48:                                               ; preds = %39
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @cnd_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @particle_engine(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cnd_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
