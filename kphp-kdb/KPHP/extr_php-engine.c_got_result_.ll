; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_got_result_.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_got_result_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.conn_query* }
%struct.conn_query = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"got_result [rpc_id = <%lld>], wait for [rpc_id = <%lld>]\0A\00", align 1
@cur_request_id = common dso_local global i64 0, align 8
@dummy_request_queue = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @got_result_(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.conn_query*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @cur_request_id, align 8
  %6 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %4, i64 %5)
  %7 = load i64, i64* @cur_request_id, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  store i64 -1, i64* @cur_request_id, align 8
  br label %12

12:                                               ; preds = %15, %11
  %13 = load %struct.conn_query*, %struct.conn_query** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_request_queue, i32 0, i32 0), align 8
  %14 = icmp ne %struct.conn_query* %13, bitcast (%struct.TYPE_2__* @dummy_request_queue to %struct.conn_query*)
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.conn_query*, %struct.conn_query** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_request_queue, i32 0, i32 0), align 8
  store %struct.conn_query* %16, %struct.conn_query** %3, align 8
  %17 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %18 = call i32 @net_get_query_done(%struct.conn_query* %17)
  %19 = load %struct.conn_query*, %struct.conn_query** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_request_queue, i32 0, i32 0), align 8
  %20 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %21 = icmp ne %struct.conn_query* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %12

24:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @net_get_query_done(%struct.conn_query*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
