; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c___udp_init_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c___udp_init_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cluster_bucket = type { i32 }
%struct.udp_target = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__udp_init_store(%struct.rpc_cluster_bucket* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.rpc_cluster_bucket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.udp_target*, align 8
  store %struct.rpc_cluster_bucket* %0, %struct.rpc_cluster_bucket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.udp_target* @udp_target_set_choose_target(i32 %10)
  store %struct.udp_target* %11, %struct.udp_target** %7, align 8
  %12 = load %struct.udp_target*, %struct.udp_target** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @tl_store_init_raw_msg(%struct.udp_target* %12, i64 %13)
  ret void
}

declare dso_local %struct.udp_target* @udp_target_set_choose_target(i32) #1

declare dso_local i32 @tl_store_init_raw_msg(%struct.udp_target*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
