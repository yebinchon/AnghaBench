; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_do_export.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_do_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.st_h2o_evloop_socket_t = type { i32, i32 }

@H2O_SOCKET_FLAG_IS_DISPOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_export(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.st_h2o_evloop_socket_t*
  store %struct.st_h2o_evloop_socket_t* %8, %struct.st_h2o_evloop_socket_t** %5, align 8
  %9 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @H2O_SOCKET_FLAG_IS_DISPOSED, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %5, align 8
  %18 = call i32 @evloop_do_on_socket_export(%struct.st_h2o_evloop_socket_t* %17)
  %19 = load i32, i32* @H2O_SOCKET_FLAG_IS_DISPOSED, align 4
  %20 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %5, align 8
  %21 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %5, align 8
  %23 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %5, align 8
  %28 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @evloop_do_on_socket_export(%struct.st_h2o_evloop_socket_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
