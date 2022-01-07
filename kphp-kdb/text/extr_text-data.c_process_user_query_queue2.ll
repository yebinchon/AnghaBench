; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_process_user_query_queue2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_process_user_query_queue2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.conn_query* }
%struct.conn_query = type { %struct.TYPE_6__, %struct.conn_query* }
%struct.TYPE_6__ = type { double }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_user_query_queue2(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.conn_query*, align 8
  %4 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %6 = call double @get_utime(i32 %5)
  %7 = fadd double %6, 1.000000e-01
  store double %7, double* %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  store %struct.conn_query* %10, %struct.conn_query** %3, align 8
  br label %11

11:                                               ; preds = %38, %1
  %12 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = call %struct.conn_query* @USER_CONN(%struct.TYPE_5__* %13)
  %15 = icmp ne %struct.conn_query* %12, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %18 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = load double, double* %4, align 8
  %22 = fcmp ogt double %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %25 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fcmp oeq double %27, 0.000000e+00
  br i1 %28, label %29, label %37

29:                                               ; preds = %23, %16
  %30 = load double, double* %4, align 8
  %31 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %32 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store double %30, double* %33, align 8
  %34 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %35 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %34, i32 0, i32 0
  %36 = call i32 @insert_event_timer(%struct.TYPE_6__* %35)
  br label %37

37:                                               ; preds = %29, %23
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %40 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %39, i32 0, i32 1
  %41 = load %struct.conn_query*, %struct.conn_query** %40, align 8
  store %struct.conn_query* %41, %struct.conn_query** %3, align 8
  br label %11

42:                                               ; preds = %11
  ret i32 0
}

declare dso_local double @get_utime(i32) #1

declare dso_local %struct.conn_query* @USER_CONN(%struct.TYPE_5__*) #1

declare dso_local i32 @insert_event_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
