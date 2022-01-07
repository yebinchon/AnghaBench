; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socketevloop.c.h_run_pending.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socketevloop.c.h_run_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t* }
%struct.st_h2o_evloop_socket_t = type { %struct.st_h2o_evloop_socket_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @run_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_pending(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  br label %4

4:                                                ; preds = %49, %1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %6, align 8
  %8 = icmp ne %struct.st_h2o_evloop_socket_t* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %11, align 8
  %13 = icmp ne %struct.st_h2o_evloop_socket_t* %12, null
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i1 [ true, %4 ], [ %13, %9 ]
  br i1 %15, label %16, label %50

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %19, align 8
  store %struct.st_h2o_evloop_socket_t* %20, %struct.st_h2o_evloop_socket_t** %3, align 8
  %21 = icmp ne %struct.st_h2o_evloop_socket_t* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %23, i32 0, i32 0
  %25 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store %struct.st_h2o_evloop_socket_t* %25, %struct.st_h2o_evloop_socket_t** %27, align 8
  %28 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %29 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %30 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %29, i32 0, i32 0
  store %struct.st_h2o_evloop_socket_t* %28, %struct.st_h2o_evloop_socket_t** %30, align 8
  %31 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %32 = call i32 @run_socket(%struct.st_h2o_evloop_socket_t* %31)
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %35, align 8
  store %struct.st_h2o_evloop_socket_t* %36, %struct.st_h2o_evloop_socket_t** %3, align 8
  %37 = icmp ne %struct.st_h2o_evloop_socket_t* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %40 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %39, i32 0, i32 0
  %41 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.st_h2o_evloop_socket_t* %41, %struct.st_h2o_evloop_socket_t** %43, align 8
  %44 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %45 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %46 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %45, i32 0, i32 0
  store %struct.st_h2o_evloop_socket_t* %44, %struct.st_h2o_evloop_socket_t** %46, align 8
  %47 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %48 = call i32 @run_socket(%struct.st_h2o_evloop_socket_t* %47)
  br label %49

49:                                               ; preds = %38, %33
  br label %4

50:                                               ; preds = %14
  ret void
}

declare dso_local i32 @run_socket(%struct.st_h2o_evloop_socket_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
