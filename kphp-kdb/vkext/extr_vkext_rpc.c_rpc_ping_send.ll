; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_ping_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_ping_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i32 }

@outbuf = common dso_local global i32 0, align 4
@RPC_PING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, double, i64)* @rpc_ping_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_ping_send(%struct.rpc_server* %0, double %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_server*, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  store %struct.rpc_server* %0, %struct.rpc_server** %5, align 8
  store double %1, double* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @outbuf, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @outbuf, align 4
  %11 = call i32 @buffer_clear(i32 %10)
  %12 = load i32, i32* @outbuf, align 4
  %13 = call i32 @buffer_write_reserve(i32 %12, i32 12)
  %14 = load i32, i32* @outbuf, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @buffer_write_long(i32 %14, i64 %15)
  %17 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %18 = load i32, i32* @RPC_PING, align 4
  %19 = load double, double* %6, align 8
  %20 = call i64 @rpc_write_handshake(%struct.rpc_server* %17, i32 %18, double %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %25 = load double, double* %6, align 8
  %26 = call i32 @rpc_flush_out_force(%struct.rpc_server* %24, double %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @buffer_clear(i32) #1

declare dso_local i32 @buffer_write_reserve(i32, i32) #1

declare dso_local i32 @buffer_write_long(i32, i64) #1

declare dso_local i64 @rpc_write_handshake(%struct.rpc_server*, i32, double) #1

declare dso_local i32 @rpc_flush_out_force(%struct.rpc_server*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
