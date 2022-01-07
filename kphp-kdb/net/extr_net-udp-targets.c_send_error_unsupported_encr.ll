; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_send_error_unsupported_encr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_send_error_unsupported_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_socket = type { i32 }
%struct.udp_message = type { i32, i32 }
%struct.process_id = type { i32 }
%struct.raw_message = type { i32 }

@send_error_unsupported_encr.z = internal global [10 x i32] zeroinitializer, align 16
@TL_UDP_DISABLE_ENCRYPTION = common dso_local global i32 0, align 4
@PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_error_unsupported_encr(%struct.udp_socket* %0, %struct.udp_message* %1, %struct.process_id* %2, i32 %3, %struct.process_id* %4) #0 {
  %6 = alloca %struct.udp_socket*, align 8
  %7 = alloca %struct.udp_message*, align 8
  %8 = alloca %struct.process_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.process_id*, align 8
  %11 = alloca %struct.raw_message, align 4
  store %struct.udp_socket* %0, %struct.udp_socket** %6, align 8
  store %struct.udp_message* %1, %struct.udp_message** %7, align 8
  store %struct.process_id* %2, %struct.process_id** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.process_id* %4, %struct.process_id** %10, align 8
  %12 = load i32, i32* @TL_UDP_DISABLE_ENCRYPTION, align 4
  store i32 %12, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_unsupported_encr.z, i64 0, i64 0), align 16
  %13 = call i32 @rwm_create(%struct.raw_message* %11, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_unsupported_encr.z, i64 0, i64 0), i32 20)
  %14 = icmp eq i32 %13, 20
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.process_id*, %struct.process_id** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.udp_message*, %struct.udp_message** %7, align 8
  %20 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.udp_message*, %struct.udp_message** %7, align 8
  %23 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @out_buf_send_error(i32* @PID, %struct.process_id* %17, i32 %18, i32 %21, i32 %24, %struct.raw_message* %11)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_create(%struct.raw_message*, i32*, i32) #1

declare dso_local i32 @out_buf_send_error(i32*, %struct.process_id*, i32, i32, i32, %struct.raw_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
