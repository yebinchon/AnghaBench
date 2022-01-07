; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_peer_udp_init_store_keep_error.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_peer_udp_init_store_keep_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_peer = type { i32 }
%struct.udp_target = type { i64 }

@udp_failed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peer_udp_init_store_keep_error(%struct.tl_peer* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_peer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.udp_target*, align 8
  store %struct.tl_peer* %0, %struct.tl_peer** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tl_peer*, %struct.tl_peer** %4, align 8
  %8 = getelementptr inbounds %struct.tl_peer, %struct.tl_peer* %7, i32 0, i32 0
  %9 = call %struct.udp_target* @udp_target_lookup(i32* %8)
  store %struct.udp_target* %9, %struct.udp_target** %6, align 8
  %10 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  %11 = icmp ne %struct.udp_target* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  %14 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @udp_failed, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.udp_target*, %struct.udp_target** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @tl_store_init_raw_msg_keep_error(%struct.udp_target* %20, i64 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.udp_target* @udp_target_lookup(i32*) #1

declare dso_local i32 @tl_store_init_raw_msg_keep_error(%struct.udp_target*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
