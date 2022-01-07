; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_send_error_obsolete_pid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_send_error_obsolete_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_socket = type { i32 }
%struct.udp_message = type { i32, i32 }
%struct.process_id = type { i32 }
%struct.raw_message = type { i32 }

@send_error_obsolete_pid.z = internal global [10 x i32] zeroinitializer, align 16
@TL_UDP_OBSOLETE_PID = common dso_local global i32 0, align 4
@PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_error_obsolete_pid(%struct.udp_socket* %0, %struct.udp_message* %1, %struct.process_id* %2, %struct.process_id* %3, i32 %4) #0 {
  %6 = alloca %struct.udp_socket*, align 8
  %7 = alloca %struct.udp_message*, align 8
  %8 = alloca %struct.process_id*, align 8
  %9 = alloca %struct.process_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.raw_message, align 4
  store %struct.udp_socket* %0, %struct.udp_socket** %6, align 8
  store %struct.udp_message* %1, %struct.udp_message** %7, align 8
  store %struct.process_id* %2, %struct.process_id** %8, align 8
  store %struct.process_id* %3, %struct.process_id** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @TL_UDP_OBSOLETE_PID, align 4
  store i32 %12, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_obsolete_pid.z, i64 0, i64 0), align 16
  %13 = load %struct.process_id*, %struct.process_id** %9, align 8
  %14 = bitcast %struct.process_id* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_obsolete_pid.z, i64 0, i64 1) to i8*), i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.process_id*, %struct.process_id** %9, align 8
  %16 = bitcast %struct.process_id* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_obsolete_pid.z, i64 0, i64 4) to i8*), i8* align 4 %16, i64 4, i1 false)
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_obsolete_pid.z, i64 0, i64 7), align 4
  %18 = call i32 @rwm_create(%struct.raw_message* %11, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_obsolete_pid.z, i64 0, i64 0), i32 32)
  %19 = icmp eq i32 %18, 32
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.process_id*, %struct.process_id** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.udp_message*, %struct.udp_message** %7, align 8
  %25 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.udp_message*, %struct.udp_message** %7, align 8
  %28 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @out_buf_send_error(i32* @PID, %struct.process_id* %22, i32 %23, i32 %26, i32 %29, %struct.raw_message* %11)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @rwm_create(%struct.raw_message*, i32*, i32) #2

declare dso_local i32 @out_buf_send_error(i32*, %struct.process_id*, i32, i32, i32, %struct.raw_message*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
