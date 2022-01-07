; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreproxy.c_on_websocket_upgrade_complete.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreproxy.c_on_websocket_upgrade_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.rp_ws_upgrade_info_t = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*, i64)* @on_websocket_upgrade_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_websocket_upgrade_complete(i8* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rp_ws_upgrade_info_t*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rp_ws_upgrade_info_t*
  store %struct.rp_ws_upgrade_info_t* %9, %struct.rp_ws_upgrade_info_t** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @h2o_buffer_consume(i32* %14, i64 %15)
  %17 = load %struct.rp_ws_upgrade_info_t*, %struct.rp_ws_upgrade_info_t** %7, align 8
  %18 = getelementptr inbounds %struct.rp_ws_upgrade_info_t, %struct.rp_ws_upgrade_info_t* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = load %struct.rp_ws_upgrade_info_t*, %struct.rp_ws_upgrade_info_t** %7, align 8
  %22 = getelementptr inbounds %struct.rp_ws_upgrade_info_t, %struct.rp_ws_upgrade_info_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rp_ws_upgrade_info_t*, %struct.rp_ws_upgrade_info_t** %7, align 8
  %25 = getelementptr inbounds %struct.rp_ws_upgrade_info_t, %struct.rp_ws_upgrade_info_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @h2o_tunnel_establish(i32 %19, %struct.TYPE_4__* %20, i32 %23, i32 %26)
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.rp_ws_upgrade_info_t*, %struct.rp_ws_upgrade_info_t** %7, align 8
  %30 = getelementptr inbounds %struct.rp_ws_upgrade_info_t, %struct.rp_ws_upgrade_info_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @h2o_socket_close(i32 %31)
  br label %33

33:                                               ; preds = %28, %12
  %34 = load %struct.rp_ws_upgrade_info_t*, %struct.rp_ws_upgrade_info_t** %7, align 8
  %35 = call i32 @free(%struct.rp_ws_upgrade_info_t* %34)
  ret void
}

declare dso_local i32 @h2o_buffer_consume(i32*, i64) #1

declare dso_local i32 @h2o_tunnel_establish(i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @h2o_socket_close(i32) #1

declare dso_local i32 @free(%struct.rp_ws_upgrade_info_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
