; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcc_stop.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32 }
%struct.connection = type { i32 }

@rpc_client_target = common dso_local global i32 0, align 4
@Targets = common dso_local global %struct.conn_target* null, align 8
@rpc_stopped = common dso_local global i32 0, align 4
@precise_now = common dso_local global i64 0, align 8
@SIGTERM_WAIT_TIMEOUT = common dso_local global i64 0, align 8
@sigterm_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcc_stop() #0 {
  %1 = alloca %struct.conn_target*, align 8
  %2 = alloca %struct.connection*, align 8
  %3 = load i32, i32* @rpc_client_target, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = load %struct.conn_target*, %struct.conn_target** @Targets, align 8
  %7 = load i32, i32* @rpc_client_target, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %6, i64 %8
  store %struct.conn_target* %9, %struct.conn_target** %1, align 8
  %10 = load %struct.conn_target*, %struct.conn_target** %1, align 8
  %11 = call %struct.connection* @get_target_connection(%struct.conn_target* %10, i32 0)
  store %struct.connection* %11, %struct.connection** %2, align 8
  %12 = load %struct.connection*, %struct.connection** %2, align 8
  %13 = icmp ne %struct.connection* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = call i32 @rpc_send_stopped(%struct.connection* %15)
  br label %17

17:                                               ; preds = %14, %5
  %18 = call i32 (...) @do_rpc_stop_lease()
  br label %19

19:                                               ; preds = %17, %0
  store i32 1, i32* @rpc_stopped, align 4
  %20 = load i64, i64* @precise_now, align 8
  %21 = load i64, i64* @SIGTERM_WAIT_TIMEOUT, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* @sigterm_time, align 8
  ret void
}

declare dso_local %struct.connection* @get_target_connection(%struct.conn_target*, i32) #1

declare dso_local i32 @rpc_send_stopped(%struct.connection*) #1

declare dso_local i32 @do_rpc_stop_lease(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
