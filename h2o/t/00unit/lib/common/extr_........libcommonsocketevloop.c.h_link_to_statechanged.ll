; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_link_to_statechanged.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_link_to_statechanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_evloop_socket_t = type { %struct.st_h2o_evloop_socket_t*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.st_h2o_evloop_socket_t** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_evloop_socket_t*)* @link_to_statechanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_to_statechanged(%struct.st_h2o_evloop_socket_t* %0) #0 {
  %2 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  store %struct.st_h2o_evloop_socket_t* %0, %struct.st_h2o_evloop_socket_t** %2, align 8
  %3 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %3, i32 0, i32 0
  %5 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %6 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %7 = icmp eq %struct.st_h2o_evloop_socket_t* %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %10 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %9, i32 0, i32 0
  store %struct.st_h2o_evloop_socket_t* null, %struct.st_h2o_evloop_socket_t** %10, align 8
  %11 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %12 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %13 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.st_h2o_evloop_socket_t**, %struct.st_h2o_evloop_socket_t*** %16, align 8
  store %struct.st_h2o_evloop_socket_t* %11, %struct.st_h2o_evloop_socket_t** %17, align 8
  %18 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %19 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %18, i32 0, i32 0
  %20 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %21 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.st_h2o_evloop_socket_t** %19, %struct.st_h2o_evloop_socket_t*** %24, align 8
  br label %25

25:                                               ; preds = %8, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
