; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_peer_tcp_init_store_keep_error.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_peer_tcp_init_store_keep_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_peer = type { i32 }
%struct.rpc_target = type { i32 }
%struct.connection = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peer_tcp_init_store_keep_error(%struct.tl_peer* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_peer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rpc_target*, align 8
  %7 = alloca %struct.connection*, align 8
  store %struct.tl_peer* %0, %struct.tl_peer** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tl_peer*, %struct.tl_peer** %4, align 8
  %9 = getelementptr inbounds %struct.tl_peer, %struct.tl_peer* %8, i32 0, i32 0
  %10 = call %struct.rpc_target* @rpc_target_lookup(i32* %9)
  store %struct.rpc_target* %10, %struct.rpc_target** %6, align 8
  %11 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %12 = icmp ne %struct.rpc_target* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %16 = load %struct.tl_peer*, %struct.tl_peer** %4, align 8
  %17 = getelementptr inbounds %struct.tl_peer, %struct.tl_peer* %16, i32 0, i32 0
  %18 = call %struct.connection* @rpc_target_choose_connection(%struct.rpc_target* %15, i32* %17)
  store %struct.connection* %18, %struct.connection** %7, align 8
  %19 = load %struct.connection*, %struct.connection** %7, align 8
  %20 = icmp ne %struct.connection* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.connection*, %struct.connection** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @tl_store_init_tcp_raw_msg_keep_error(%struct.connection* %23, i64 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %21, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.rpc_target* @rpc_target_lookup(i32*) #1

declare dso_local %struct.connection* @rpc_target_choose_connection(%struct.rpc_target*, i32*) #1

declare dso_local i32 @tl_store_init_tcp_raw_msg_keep_error(%struct.connection*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
