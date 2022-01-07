; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_resend_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_resend_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { %struct.secure_send_extra*, i32 }
%struct.secure_send_extra = type { i32, i32 }
%struct.process_id = type { i32, i32 }
%struct.connection = type { i32 }

@resent_queries = common dso_local global i32 0, align 4
@RPC_INVOKE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resend_query(%struct.rpc_query* %0, %struct.process_id* %1) #0 {
  %3 = alloca %struct.rpc_query*, align 8
  %4 = alloca %struct.process_id*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.secure_send_extra*, align 8
  store %struct.rpc_query* %0, %struct.rpc_query** %3, align 8
  store %struct.process_id* %1, %struct.process_id** %4, align 8
  %7 = load i32, i32* @resent_queries, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @resent_queries, align 4
  %9 = load %struct.process_id*, %struct.process_id** %4, align 8
  %10 = getelementptr inbounds %struct.process_id, %struct.process_id* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.process_id*, %struct.process_id** %4, align 8
  %13 = getelementptr inbounds %struct.process_id, %struct.process_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rpc_target_lookup_hp(i32 %11, i32 %14)
  %16 = call %struct.connection* @rpc_target_choose_connection(i32 %15, i32 0)
  store %struct.connection* %16, %struct.connection** %5, align 8
  %17 = load %struct.connection*, %struct.connection** %5, align 8
  %18 = icmp ne %struct.connection* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.connection*, %struct.connection** %5, align 8
  %22 = load %struct.rpc_query*, %struct.rpc_query** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @tl_store_init(%struct.connection* %21, i32 %24)
  %26 = load %struct.rpc_query*, %struct.rpc_query** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %26, i32 0, i32 0
  %28 = load %struct.secure_send_extra*, %struct.secure_send_extra** %27, align 8
  store %struct.secure_send_extra* %28, %struct.secure_send_extra** %6, align 8
  %29 = load %struct.secure_send_extra*, %struct.secure_send_extra** %6, align 8
  %30 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.secure_send_extra*, %struct.secure_send_extra** %6, align 8
  %33 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tl_store_raw_data(i32 %31, i32 %34)
  %36 = load i32, i32* @RPC_INVOKE_REQ, align 4
  %37 = call i32 @tl_store_end_ext(i32 %36)
  br label %38

38:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.connection* @rpc_target_choose_connection(i32, i32) #1

declare dso_local i32 @rpc_target_lookup_hp(i32, i32) #1

declare dso_local i32 @tl_store_init(%struct.connection*, i32) #1

declare dso_local i32 @tl_store_raw_data(i32, i32) #1

declare dso_local i32 @tl_store_end_ext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
