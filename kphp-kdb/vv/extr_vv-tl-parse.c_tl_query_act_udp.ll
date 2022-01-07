; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_query_act_udp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_query_act_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.raw_message = type { i32 }
%struct.tl_query_header = type { i64, i32 }

@RPC_INVOKE_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_query_act_udp(%struct.udp_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udp_msg*, align 8
  %4 = alloca %struct.raw_message, align 4
  %5 = alloca %struct.tl_query_header*, align 8
  store %struct.udp_msg* %0, %struct.udp_msg** %3, align 8
  %6 = call i32 (...) @WaitAioArrClear()
  %7 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %8 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %7, i32 0, i32 1
  %9 = call i32 @rwm_clone(%struct.raw_message* %4, %struct.TYPE_2__* %8)
  %10 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %11 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @tl_fetch_init_raw_message(%struct.raw_message* %4, i32 %13)
  %15 = call i32 @rwm_free(%struct.raw_message* %4)
  %16 = call %struct.tl_query_header* @zmalloc(i32 16)
  store %struct.tl_query_header* %16, %struct.tl_query_header** %5, align 8
  %17 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %18 = call i32 @tl_fetch_query_header(%struct.tl_query_header* %17)
  %19 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %20 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %24 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %27 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @tl_store_init_raw_msg_keep_error(i32 %25, i32 %28)
  %30 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %31 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RPC_INVOKE_REQ, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.tl_query_header*, %struct.tl_query_header** %5, align 8
  %38 = call i32 @__tl_query_act(%struct.tl_query_header* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @WaitAioArrClear(...) #1

declare dso_local i32 @rwm_clone(%struct.raw_message*, %struct.TYPE_2__*) #1

declare dso_local i32 @tl_fetch_init_raw_message(%struct.raw_message*, i32) #1

declare dso_local i32 @rwm_free(%struct.raw_message*) #1

declare dso_local %struct.tl_query_header* @zmalloc(i32) #1

declare dso_local i32 @tl_fetch_query_header(%struct.tl_query_header*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_store_init_raw_msg_keep_error(i32, i32) #1

declare dso_local i32 @__tl_query_act(%struct.tl_query_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
