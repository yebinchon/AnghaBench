; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_resend_answer_ack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_resend_answer_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i32 }
%struct.process_id = type { i32, i32 }
%struct.connection = type { i32 }

@resent_answer_ack = common dso_local global i32 0, align 4
@RPC_REQ_RESULT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resend_answer_ack(%struct.rpc_query* %0, %struct.process_id* %1) #0 {
  %3 = alloca %struct.rpc_query*, align 8
  %4 = alloca %struct.process_id*, align 8
  %5 = alloca %struct.connection*, align 8
  store %struct.rpc_query* %0, %struct.rpc_query** %3, align 8
  store %struct.process_id* %1, %struct.process_id** %4, align 8
  %6 = load i32, i32* @resent_answer_ack, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @resent_answer_ack, align 4
  %8 = load %struct.process_id*, %struct.process_id** %4, align 8
  %9 = getelementptr inbounds %struct.process_id, %struct.process_id* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.process_id*, %struct.process_id** %4, align 8
  %12 = getelementptr inbounds %struct.process_id, %struct.process_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rpc_target_lookup_hp(i32 %10, i32 %13)
  %15 = call %struct.connection* @rpc_target_choose_connection(i32 %14, i32 0)
  store %struct.connection* %15, %struct.connection** %5, align 8
  %16 = load %struct.connection*, %struct.connection** %5, align 8
  %17 = icmp ne %struct.connection* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.connection*, %struct.connection** %5, align 8
  %21 = load %struct.rpc_query*, %struct.rpc_query** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tl_store_init(%struct.connection* %20, i32 %23)
  %25 = load i32, i32* @RPC_REQ_RESULT_ACK, align 4
  %26 = call i32 @tl_store_end_ext(i32 %25)
  br label %27

27:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.connection* @rpc_target_choose_connection(i32, i32) #1

declare dso_local i32 @rpc_target_lookup_hp(i32, i32) #1

declare dso_local i32 @tl_store_init(%struct.connection*, i32) #1

declare dso_local i32 @tl_store_end_ext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
