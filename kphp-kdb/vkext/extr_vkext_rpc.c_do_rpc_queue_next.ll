; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_queue_next.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_queue_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@precise_now = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_rpc_queue_next(%struct.rpc_queue* %0, double %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rpc_queue*, align 8
  %5 = alloca double, align 8
  store %struct.rpc_queue* %0, %struct.rpc_queue** %4, align 8
  store double %1, double* %5, align 8
  %6 = load %struct.rpc_queue*, %struct.rpc_queue** %4, align 8
  %7 = call i32 @assert(%struct.rpc_queue* %6)
  %8 = load %struct.rpc_queue*, %struct.rpc_queue** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_queue, %struct.rpc_queue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.rpc_queue*, %struct.rpc_queue** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_queue, %struct.rpc_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  br label %41

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %36, %18
  %20 = load double, double* %5, align 8
  %21 = call i64 @rpc_poll(double %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  br label %41

24:                                               ; preds = %19
  %25 = load %struct.rpc_queue*, %struct.rpc_queue** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_queue, %struct.rpc_queue* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.rpc_queue*, %struct.rpc_queue** %4, align 8
  %31 = getelementptr inbounds %struct.rpc_queue, %struct.rpc_queue* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %41

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load double, double* @precise_now, align 8
  %38 = load double, double* %5, align 8
  %39 = fcmp olt double %37, %38
  br i1 %39, label %19, label %40

40:                                               ; preds = %36
  store i64 0, i64* %3, align 8
  br label %41

41:                                               ; preds = %40, %29, %23, %12
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i32 @assert(%struct.rpc_queue*) #1

declare dso_local i64 @rpc_poll(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
