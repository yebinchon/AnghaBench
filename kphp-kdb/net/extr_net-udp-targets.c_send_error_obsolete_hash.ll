; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_send_error_obsolete_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_send_error_obsolete_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_id = type { i32 }
%struct.udp_socket = type { i32 }
%struct.udp_message = type { i32, i32 }
%struct.raw_message = type { i32 }

@send_error_obsolete_hash.z = internal global [10 x i32] zeroinitializer, align 16
@TL_UDP_OBSOLETE_HASH = common dso_local global i32 0, align 4
@PID = common dso_local global %struct.process_id zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_error_obsolete_hash(%struct.udp_socket* %0, %struct.udp_message* %1, i64 %2) #0 {
  %4 = alloca %struct.udp_socket*, align 8
  %5 = alloca %struct.udp_message*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.raw_message, align 4
  store %struct.udp_socket* %0, %struct.udp_socket** %4, align 8
  store %struct.udp_message* %1, %struct.udp_message** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @TL_UDP_OBSOLETE_HASH, align 4
  store i32 %8, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_obsolete_hash.z, i64 0, i64 0), align 16
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_obsolete_hash.z, i64 0, i64 1) to i64*), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_obsolete_hash.z, i64 0, i64 3) to i8*), i8* align 4 bitcast (%struct.process_id* @PID to i8*), i64 4, i1 false)
  %10 = call i32 @rwm_create(%struct.raw_message* %7, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @send_error_obsolete_hash.z, i64 0, i64 0), i32 24)
  %11 = icmp eq i32 %10, 24
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %15 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %18 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @out_buf_send_error(%struct.process_id* @PID, i32 0, i32 0, i32 %16, i32 %19, %struct.raw_message* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @rwm_create(%struct.raw_message*, i32*, i32) #2

declare dso_local i32 @out_buf_send_error(%struct.process_id*, i32, i32, i32, i32, %struct.raw_message*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
