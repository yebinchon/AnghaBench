; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_proxy.c_h2o_proxy_register_reverse_proxy.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_proxy.c_h2o_proxy_register_reverse_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp_handler_t = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@on_context_init = common dso_local global i32 0, align 4
@on_context_dispose = common dso_local global i32 0, align 4
@on_handler_dispose = common dso_local global i32 0, align 4
@on_req = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_proxy_register_reverse_proxy(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rp_handler_t*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @h2o_create_handler(i32* %8, i32 32)
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.rp_handler_t*
  store %struct.rp_handler_t* %11, %struct.rp_handler_t** %7, align 8
  %12 = load i32, i32* @on_context_init, align 4
  %13 = load %struct.rp_handler_t*, %struct.rp_handler_t** %7, align 8
  %14 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @on_context_dispose, align 4
  %17 = load %struct.rp_handler_t*, %struct.rp_handler_t** %7, align 8
  %18 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @on_handler_dispose, align 4
  %21 = load %struct.rp_handler_t*, %struct.rp_handler_t** %7, align 8
  %22 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @on_req, align 4
  %25 = load %struct.rp_handler_t*, %struct.rp_handler_t** %7, align 8
  %26 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.rp_handler_t*, %struct.rp_handler_t** %7, align 8
  %29 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rp_handler_t*, %struct.rp_handler_t** %7, align 8
  %34 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.rp_handler_t*, %struct.rp_handler_t** %7, align 8
  %37 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  ret void
}

declare dso_local i64 @h2o_create_handler(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
