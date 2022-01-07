; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_process_user_query_queue.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_process_user_query_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.conn_query* }
%struct.conn_query = type { %struct.TYPE_5__, %struct.conn_query* }
%struct.TYPE_5__ = type { double }

@precise_now = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_user_query_queue(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.conn_query*, align 8
  %4 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load double, double* @precise_now, align 8
  store double %5, double* %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  store %struct.conn_query* %8, %struct.conn_query** %3, align 8
  br label %9

9:                                                ; preds = %36, %1
  %10 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = bitcast %struct.TYPE_4__* %11 to %struct.conn_query*
  %13 = icmp ne %struct.conn_query* %10, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %16 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = load double, double* %4, align 8
  %20 = fcmp ogt double %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %23 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fcmp oeq double %25, 0.000000e+00
  br i1 %26, label %27, label %35

27:                                               ; preds = %21, %14
  %28 = load double, double* %4, align 8
  %29 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %30 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store double %28, double* %31, align 8
  %32 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %33 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %32, i32 0, i32 0
  %34 = call i32 @insert_event_timer(%struct.TYPE_5__* %33)
  br label %35

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %38 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %37, i32 0, i32 1
  %39 = load %struct.conn_query*, %struct.conn_query** %38, align 8
  store %struct.conn_query* %39, %struct.conn_query** %3, align 8
  br label %9

40:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @insert_event_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
