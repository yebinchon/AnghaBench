; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_do_rpc_start_lease.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_do_rpc_start_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@rpc_main_target = common dso_local global i32 0, align 4
@lease_state = common dso_local global i64 0, align 8
@lst_off = common dso_local global i64 0, align 8
@rpc_client_ct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't lease to itself\0A\00", align 1
@rpc_stopped = common dso_local global i64 0, align 8
@rpc_lease_target = common dso_local global i32 0, align 4
@rpc_lease_timeout = common dso_local global double 0.000000e+00, align 8
@lease_pid = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@lease_stats_cnt = common dso_local global i64 0, align 8
@precise_now = common dso_local global i32 0, align 4
@lease_stats_start_time = common dso_local global i32 0, align 4
@lease_stats_time = common dso_local global i64 0, align 8
@lst_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rpc_start_lease(i64 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_4__* %4 to i64*
  store i64 %0, i64* %7, align 4
  store double %1, double* %5, align 8
  %8 = load i32, i32* @rpc_main_target, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = load i64, i64* @lease_state, align 8
  %13 = load i64, i64* @lst_off, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %43

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @get_lease_target_by_pid(i32 %18, i32 %20, i32* @rpc_client_ct)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %43

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @rpc_main_target, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %43

31:                                               ; preds = %25
  %32 = load i64, i64* @rpc_stopped, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* @rpc_lease_target, align 4
  %37 = load double, double* %5, align 8
  store double %37, double* @rpc_lease_timeout, align 8
  %38 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_4__* @lease_pid to i8*), i8* align 4 %38, i64 8, i1 false)
  store i64 0, i64* @lease_stats_cnt, align 8
  %39 = load i32, i32* @precise_now, align 4
  store i32 %39, i32* @lease_stats_start_time, align 4
  store i64 0, i64* @lease_stats_time, align 8
  %40 = load i32, i32* @lst_start, align 4
  %41 = call i32 @lease_change_state(i32 %40)
  %42 = call i32 (...) @run_rpc_lease()
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %34, %29, %24, %15, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @get_lease_target_by_pid(i32, i32, i32*) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lease_change_state(i32) #1

declare dso_local i32 @run_rpc_lease(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
