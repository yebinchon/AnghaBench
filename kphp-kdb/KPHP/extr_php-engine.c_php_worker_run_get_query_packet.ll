; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_get_query_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_get_query_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, double }
%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { double (%struct.TYPE_24__*, double)*, i32 (%struct.TYPE_24__*, i64)* }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_25__*)* }

@php_script = common dso_local global i32 0, align 4
@p_get = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"RPC GET\00", align 1
@query_stats = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@p_get_id = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"RPC GET ID\00", align 1
@precise_now = common dso_local global double 0.000000e+00, align 8
@dummy_request_queue = common dso_local global i32 0, align 4
@cur_request_id = common dso_local global i64 0, align 8
@conn_wait_net = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_worker_run_get_query_packet(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %9 = load i32, i32* @php_script, align 4
  %10 = call i32 @php_script_query_readed(i32 %9)
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @p_get, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @query_stats, i32 0, i32 0), align 8
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @p_get_id, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @query_stats, i32 0, i32 0), align 8
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %16
  %26 = call %struct.TYPE_24__* (...) @net_get_ansgen_create()
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %5, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = bitcast %struct.TYPE_24__* %27 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %6, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %32, 8
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i32 (%struct.TYPE_24__*, i64)*, i32 (%struct.TYPE_24__*, i64)** %44, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 %45(%struct.TYPE_24__* %46, i64 %47)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load double (%struct.TYPE_24__*, double)*, double (%struct.TYPE_24__*, double)** %52, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %55 = load double, double* @precise_now, align 8
  %56 = call double %53(%struct.TYPE_24__* %54, double %55)
  store double %56, double* %8, align 8
  %57 = load double, double* %8, align 8
  %58 = fcmp ole double %57, 1.000000e+00
  br i1 %58, label %59, label %75

59:                                               ; preds = %25
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %69, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %72 = call i32 %70(%struct.TYPE_25__* %71)
  %73 = load i32, i32* @php_script, align 4
  %74 = call i32 @php_script_query_answered(i32 %73)
  br label %96

75:                                               ; preds = %25
  %76 = load double, double* %8, align 8
  %77 = load double, double* @precise_now, align 8
  %78 = fsub double %76, %77
  store double %78, double* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @query_stats, i32 0, i32 1), align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %83 = load double, double* %8, align 8
  %84 = call i32 @create_pnet_query(%struct.TYPE_18__* %81, i32* @dummy_request_queue, %struct.TYPE_25__* %82, double %83)
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* @cur_request_id, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = icmp ne %struct.TYPE_18__* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %75
  %91 = load i32, i32* @conn_wait_net, align 4
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %59, %90, %75
  ret void
}

declare dso_local i32 @php_script_query_readed(i32) #1

declare dso_local %struct.TYPE_24__* @net_get_ansgen_create(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @php_script_query_answered(i32) #1

declare dso_local i32 @create_pnet_query(%struct.TYPE_18__*, i32*, %struct.TYPE_25__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
