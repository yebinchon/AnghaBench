; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_release_key_group.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_release_key_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.conn_query* }
%struct.conn_query = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double }

@precise_now = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_key_group(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.conn_query*, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %6
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %15, i64 %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %24, i64 %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.conn_query*, %struct.conn_query** %29, align 8
  store %struct.conn_query* %30, %struct.conn_query** %4, align 8
  %31 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  %32 = icmp ne %struct.conn_query* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %21
  %34 = load double, double* @precise_now, align 8
  store double %34, double* %5, align 8
  %35 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  %36 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = load double, double* %5, align 8
  %40 = fcmp ogt double %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  %43 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = fcmp oeq double %45, 0.000000e+00
  br i1 %46, label %47, label %55

47:                                               ; preds = %41, %33
  %48 = load double, double* %5, align 8
  %49 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  %50 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store double %48, double* %51, align 8
  %52 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  %53 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %52, i32 0, i32 0
  %54 = call i32 @insert_event_timer(%struct.TYPE_7__* %53)
  br label %55

55:                                               ; preds = %47, %41
  br label %56

56:                                               ; preds = %55, %21
  br label %57

57:                                               ; preds = %56, %12
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %6

61:                                               ; preds = %6
  ret void
}

declare dso_local i32 @insert_event_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
