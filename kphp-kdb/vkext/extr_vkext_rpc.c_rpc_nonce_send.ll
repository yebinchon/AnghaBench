; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_nonce_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_nonce_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i32 }
%struct.rpc_nonce = type { i32, i32 }

@outbuf = common dso_local global i32 0, align 4
@RPC_NONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, double)* @rpc_nonce_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_nonce_send(%struct.rpc_server* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_server*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.rpc_nonce, align 4
  store %struct.rpc_server* %0, %struct.rpc_server** %4, align 8
  store double %1, double* %5, align 8
  %7 = bitcast %struct.rpc_nonce* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load i32, i32* @outbuf, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @outbuf, align 4
  %11 = call i32 @buffer_clear(i32 %10)
  %12 = load i32, i32* @outbuf, align 4
  %13 = call i32 @buffer_write_reserve(i32 %12, i32 12)
  %14 = load i32, i32* @outbuf, align 4
  %15 = call i32 @buffer_write_data(i32 %14, %struct.rpc_nonce* %6, i32 8)
  %16 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %17 = load i32, i32* @RPC_NONCE, align 4
  %18 = load double, double* %5, align 8
  %19 = call i64 @rpc_write_handshake(%struct.rpc_server* %16, i32 %17, double %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %24 = load double, double* %5, align 8
  %25 = call i32 @rpc_flush_out_force(%struct.rpc_server* %23, double %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %21
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @buffer_clear(i32) #2

declare dso_local i32 @buffer_write_reserve(i32, i32) #2

declare dso_local i32 @buffer_write_data(i32, %struct.rpc_nonce*, i32) #2

declare dso_local i64 @rpc_write_handshake(%struct.rpc_server*, i32, double) #2

declare dso_local i32 @rpc_flush_out_force(%struct.rpc_server*, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
