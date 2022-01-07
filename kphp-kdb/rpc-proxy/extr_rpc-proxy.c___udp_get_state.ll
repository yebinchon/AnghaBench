; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c___udp_get_state.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c___udp_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cluster_bucket = type { i32 }
%struct.udp_target = type { i64 }

@udp_ok = common dso_local global i64 0, align 8
@udp_stopped = common dso_local global i64 0, align 8
@udp_unknown = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__udp_get_state(%struct.rpc_cluster_bucket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_cluster_bucket*, align 8
  %4 = alloca %struct.udp_target*, align 8
  store %struct.rpc_cluster_bucket* %0, %struct.rpc_cluster_bucket** %3, align 8
  %5 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %3, align 8
  %6 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.udp_target* @udp_target_set_choose_target(i32 %7)
  store %struct.udp_target* %8, %struct.udp_target** %4, align 8
  %9 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %10 = icmp ne %struct.udp_target* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %14 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @udp_ok, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %33

19:                                               ; preds = %12
  %20 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %21 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @udp_stopped, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %27 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @udp_unknown, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %18, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.udp_target* @udp_target_set_choose_target(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
