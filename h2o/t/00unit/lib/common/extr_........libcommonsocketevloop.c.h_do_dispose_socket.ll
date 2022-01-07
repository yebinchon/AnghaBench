; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_do_dispose_socket.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_do_dispose_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_evloop_socket_t = type { i32, i32 }

@H2O_SOCKET_FLAG_IS_DISPOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_dispose_socket(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.st_h2o_evloop_socket_t*
  store %struct.st_h2o_evloop_socket_t* %5, %struct.st_h2o_evloop_socket_t** %3, align 8
  %6 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %7 = call i32 @evloop_do_on_socket_close(%struct.st_h2o_evloop_socket_t* %6)
  %8 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %9 = call i32 @wreq_free_buffer_if_allocated(%struct.st_h2o_evloop_socket_t* %8)
  %10 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %11 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %16 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @close(i32 %17)
  %19 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i32, i32* @H2O_SOCKET_FLAG_IS_DISPOSED, align 4
  %23 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %3, align 8
  %26 = call i32 @link_to_statechanged(%struct.st_h2o_evloop_socket_t* %25)
  ret void
}

declare dso_local i32 @evloop_do_on_socket_close(%struct.st_h2o_evloop_socket_t*) #1

declare dso_local i32 @wreq_free_buffer_if_allocated(%struct.st_h2o_evloop_socket_t*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @link_to_statechanged(%struct.st_h2o_evloop_socket_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
