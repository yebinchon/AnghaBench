; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.conn_query*, %struct.conn_query* }
%struct.conn_query = type { i32 }
%struct.TYPE_4__ = type { %struct.conn_query*, %struct.conn_query* }

@pending_http_queue = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@php_worker_run_flag = common dso_local global i64 0, align 8
@dummy_request_queue = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@got_result_ = common dso_local global i32 0, align 4
@got_result = common dso_local global i32 0, align 4
@worker_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_all() #0 {
  %1 = call i64 (...) @rdtsc()
  %2 = call i32 @srand48(i64 %1)
  store %struct.conn_query* bitcast (%struct.TYPE_3__* @pending_http_queue to %struct.conn_query*), %struct.conn_query** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pending_http_queue, i32 0, i32 0), align 8
  store %struct.conn_query* bitcast (%struct.TYPE_3__* @pending_http_queue to %struct.conn_query*), %struct.conn_query** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pending_http_queue, i32 0, i32 1), align 8
  store i64 0, i64* @php_worker_run_flag, align 8
  store %struct.conn_query* bitcast (%struct.TYPE_4__* @dummy_request_queue to %struct.conn_query*), %struct.conn_query** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dummy_request_queue, i32 0, i32 0), align 8
  store %struct.conn_query* bitcast (%struct.TYPE_4__* @dummy_request_queue to %struct.conn_query*), %struct.conn_query** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dummy_request_queue, i32 0, i32 1), align 8
  %3 = call i32 (...) @static_init_scripts()
  %4 = call i32 (...) @init_handlers()
  %5 = call i32 (...) @init_drivers()
  %6 = load i32, i32* @got_result_, align 4
  store i32 %6, i32* @got_result, align 4
  %7 = call i32 (...) @init_scripts()
  %8 = call i64 (...) @lrand48()
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* @worker_id, align 4
  ret void
}

declare dso_local i32 @srand48(i64) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i32 @static_init_scripts(...) #1

declare dso_local i32 @init_handlers(...) #1

declare dso_local i32 @init_drivers(...) #1

declare dso_local i32 @init_scripts(...) #1

declare dso_local i64 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
