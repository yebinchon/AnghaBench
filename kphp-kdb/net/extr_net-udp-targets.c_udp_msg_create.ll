; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_msg_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_msg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_msg = type { i32, %struct.raw_message, %struct.udp_target* }
%struct.raw_message = type { i32 }
%struct.udp_target = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.udp_msg* @udp_msg_create(%struct.raw_message* %0, i32 %1, %struct.udp_target* %2) #0 {
  %4 = alloca %struct.raw_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udp_target*, align 8
  %7 = alloca %struct.udp_msg*, align 8
  store %struct.raw_message* %0, %struct.raw_message** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.udp_target* %2, %struct.udp_target** %6, align 8
  %8 = call %struct.udp_msg* @zmalloc(i32 16)
  store %struct.udp_msg* %8, %struct.udp_msg** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %11 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  %13 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %14 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %13, i32 0, i32 2
  store %struct.udp_target* %12, %struct.udp_target** %14, align 8
  %15 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  %16 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %15, i32 0, i32 1
  %17 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %18 = bitcast %struct.raw_message* %16 to i8*
  %19 = bitcast %struct.raw_message* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.udp_msg*, %struct.udp_msg** %7, align 8
  ret %struct.udp_msg* %20
}

declare dso_local %struct.udp_msg* @zmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
