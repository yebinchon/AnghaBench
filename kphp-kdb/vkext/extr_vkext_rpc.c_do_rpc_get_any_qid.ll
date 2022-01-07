; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_get_any_qid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_get_any_qid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@query_completed = common dso_local global %struct.TYPE_2__* null, align 8
@precise_now = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_rpc_get_any_qid(double %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @query_completed, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @query_completed, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %2, align 8
  br label %25

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = load double, double* @precise_now, align 8
  %13 = fcmp ogt double %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load double, double* %3, align 8
  %16 = call i32 @rpc_poll(double %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @query_completed, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @query_completed, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %2, align 8
  br label %25

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %10
  store i64 -1, i64* %2, align 8
  br label %25

25:                                               ; preds = %24, %19, %6
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local i32 @rpc_poll(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
