; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_link_to_pending.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_link_to_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_evloop_socket_t = type { i32, %struct.st_h2o_evloop_socket_t*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t* }

@H2O_SOCKET_FLAG_IS_ACCEPTED_CONNECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_to_pending(%struct.st_h2o_evloop_socket_t* %0) #0 {
  %2 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  %3 = alloca %struct.st_h2o_evloop_socket_t**, align 8
  store %struct.st_h2o_evloop_socket_t* %0, %struct.st_h2o_evloop_socket_t** %2, align 8
  %4 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %5 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %4, i32 0, i32 1
  %6 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %5, align 8
  %7 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %8 = icmp eq %struct.st_h2o_evloop_socket_t* %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %11 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @H2O_SOCKET_FLAG_IS_ACCEPTED_CONNECTION, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %18 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  br label %26

21:                                               ; preds = %9
  %22 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %23 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi %struct.st_h2o_evloop_socket_t** [ %20, %16 ], [ %25, %21 ]
  store %struct.st_h2o_evloop_socket_t** %27, %struct.st_h2o_evloop_socket_t*** %3, align 8
  %28 = load %struct.st_h2o_evloop_socket_t**, %struct.st_h2o_evloop_socket_t*** %3, align 8
  %29 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %28, align 8
  %30 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %31 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %30, i32 0, i32 1
  store %struct.st_h2o_evloop_socket_t* %29, %struct.st_h2o_evloop_socket_t** %31, align 8
  %32 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %33 = load %struct.st_h2o_evloop_socket_t**, %struct.st_h2o_evloop_socket_t*** %3, align 8
  store %struct.st_h2o_evloop_socket_t* %32, %struct.st_h2o_evloop_socket_t** %33, align 8
  br label %34

34:                                               ; preds = %26, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
