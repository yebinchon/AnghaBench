; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcx_at_query_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcx_at_query_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i64, i64 }
%struct.rpcs_data = type { i32* }

@conn_generation = common dso_local global i64 0, align 8
@lease_ready_flag = common dso_local global i32 0, align 4
@C_REPARSE = common dso_local global i32 0, align 4
@conn_wait_net = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcx_at_query_end(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.rpcs_data*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = call %struct.rpcs_data* @RPCS_DATA(%struct.connection* %4)
  store %struct.rpcs_data* %5, %struct.rpcs_data** %3, align 8
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = call i32 @clear_connection_timeout(%struct.connection* %6)
  %8 = load i64, i64* @conn_generation, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* @conn_generation, align 8
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 3
  store i64 %9, i64* %11, align 8
  %12 = load %struct.connection*, %struct.connection** %2, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.rpcs_data*, %struct.rpcs_data** %3, align 8
  %15 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = call i32 (...) @has_pending_scripts()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  store i32 1, i32* @lease_ready_flag, align 4
  %19 = call i32 (...) @run_rpc_lease()
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* @C_REPARSE, align 4
  %22 = load %struct.connection*, %struct.connection** %2, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.connection*, %struct.connection** %2, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @conn_wait_net, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  ret void
}

declare dso_local %struct.rpcs_data* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

declare dso_local i32 @has_pending_scripts(...) #1

declare dso_local i32 @run_rpc_lease(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
