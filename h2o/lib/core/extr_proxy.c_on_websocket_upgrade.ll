; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_proxy.c_on_websocket_upgrade.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_proxy.c_on_websocket_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp_generator_t = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* (%struct.TYPE_7__*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rp_ws_upgrade_info_t = type { i32, i32, i32* }

@on_websocket_upgrade_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rp_generator_t*, i32)* @on_websocket_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_websocket_upgrade(%struct.rp_generator_t* %0, i32 %1) #0 {
  %3 = alloca %struct.rp_generator_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rp_ws_upgrade_info_t*, align 8
  store %struct.rp_generator_t* %0, %struct.rp_generator_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %9 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %12 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32* (%struct.TYPE_7__*)*, i32* (%struct.TYPE_7__*)** %14, align 8
  %16 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %17 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = call i32* %15(%struct.TYPE_7__* %18)
  store i32* %19, i32** %6, align 8
  %20 = call %struct.rp_ws_upgrade_info_t* @h2o_mem_alloc(i32 16)
  store %struct.rp_ws_upgrade_info_t* %20, %struct.rp_ws_upgrade_info_t** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.rp_ws_upgrade_info_t*, %struct.rp_ws_upgrade_info_t** %7, align 8
  %23 = getelementptr inbounds %struct.rp_ws_upgrade_info_t, %struct.rp_ws_upgrade_info_t* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.rp_ws_upgrade_info_t*, %struct.rp_ws_upgrade_info_t** %7, align 8
  %26 = getelementptr inbounds %struct.rp_ws_upgrade_info_t, %struct.rp_ws_upgrade_info_t* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rp_ws_upgrade_info_t*, %struct.rp_ws_upgrade_info_t** %7, align 8
  %33 = getelementptr inbounds %struct.rp_ws_upgrade_info_t, %struct.rp_ws_upgrade_info_t* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = load i32, i32* @on_websocket_upgrade_complete, align 4
  %36 = load %struct.rp_ws_upgrade_info_t*, %struct.rp_ws_upgrade_info_t** %7, align 8
  %37 = call i32 @h2o_http1_upgrade(%struct.TYPE_6__* %34, i32* null, i32 0, i32 %35, %struct.rp_ws_upgrade_info_t* %36)
  ret void
}

declare dso_local %struct.rp_ws_upgrade_info_t* @h2o_mem_alloc(i32) #1

declare dso_local i32 @h2o_http1_upgrade(%struct.TYPE_6__*, i32*, i32, i32, %struct.rp_ws_upgrade_info_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
