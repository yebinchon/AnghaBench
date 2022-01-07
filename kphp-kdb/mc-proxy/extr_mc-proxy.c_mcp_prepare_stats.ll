; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, double, i32 }
%struct.TYPE_4__ = type { double, i32, i32, i32, i32, i32, i32 }
%struct.connection = type { i32 }

@extension_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"extension\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [662 x i8] c"heap_allocated\09%ld\0Aheap_max\09%ld\0Awasted_heap_blocks\09%d\0Awasted_heap_bytes\09%ld\0Afree_heap_blocks\09%d\0Afree_heap_bytes\09%ld\0Aconfig_filename\09%s\0Aconfig_loaded_at\09%d\0Aconfig_size\09%d\0Aconfig_md5\09%s\0Acluster_name\09%s\0Acluster_number\09%d\0Acluster_mode\090x%04x\0Aget_timeout\09%.3f\0Aset_timeout\09%.3f\0Atot_clusters\09%d\0Acluster_size\09%d\0Apoints_per_server\09%d\0Aactive_queries\09%d\0Atotal_forwarded_queries\09%lld\0Aexpired_forwarded_queries\09%lld\0Adiagonal_received_queries\09%lld\0Adiagonal_forwarded_total\09%lld\0Aimmediate_forwarded_queries\09%lld\0Adropped_overflow_responses\09%lld\0Atot_skipped_answers\09%lld\0Aerrors_received\09%lld\0Aclient_errors_received\09%lld\0Atotal_failed_connections\09%lld\0Atotal_connect_failures\09%lld\0A\00", align 1
@dyn_cur = common dso_local global i64 0, align 8
@dyn_first = common dso_local global i64 0, align 8
@dyn_last = common dso_local global i64 0, align 8
@wasted_blocks = common dso_local global i8* null, align 8
@wasted_bytes = common dso_local global i32 0, align 4
@freed_blocks = common dso_local global i32 0, align 4
@freed_bytes = common dso_local global i8* null, align 8
@config_filename = common dso_local global i8* null, align 8
@CurConf = common dso_local global %struct.TYPE_3__* null, align 8
@CC = common dso_local global %struct.TYPE_4__* null, align 8
@active_queries = common dso_local global i32 0, align 4
@tot_forwarded_queries = common dso_local global i32 0, align 4
@expired_forwarded_queries = common dso_local global i32 0, align 4
@diagonal_received_queries = common dso_local global i32 0, align 4
@diagonal_forwarded_total = common dso_local global i32 0, align 4
@immediate_forwarded_queries = common dso_local global i32 0, align 4
@dropped_overflow_responses = common dso_local global i32 0, align 4
@tot_skipped_answers = common dso_local global i32 0, align 4
@errors_received = common dso_local global i32 0, align 4
@client_errors_received = common dso_local global i32 0, align 4
@total_failed_connections = common dso_local global i32 0, align 4
@total_connect_failures = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcp_prepare_stats(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @dyn_update_stats()
  %9 = load %struct.connection*, %struct.connection** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @prepare_stats(%struct.connection* %9, i8* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** @extension_name, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i8*, i8** @extension_name, align 8
  %25 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %16, %3
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i64, i64* @dyn_cur, align 8
  %39 = load i64, i64* @dyn_first, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* @dyn_last, align 8
  %42 = load i64, i64* @dyn_first, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i8*, i8** @wasted_blocks, align 8
  %45 = load i32, i32* @wasted_bytes, align 4
  %46 = load i32, i32* @freed_blocks, align 4
  %47 = load i8*, i8** @freed_bytes, align 8
  %48 = load i8*, i8** @config_filename, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurConf, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurConf, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurConf, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load double, double* %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurConf, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @active_queries, align 4
  %83 = load i32, i32* @tot_forwarded_queries, align 4
  %84 = load i32, i32* @expired_forwarded_queries, align 4
  %85 = load i32, i32* @diagonal_received_queries, align 4
  %86 = load i32, i32* @diagonal_forwarded_total, align 4
  %87 = load i32, i32* @immediate_forwarded_queries, align 4
  %88 = load i32, i32* @dropped_overflow_responses, align 4
  %89 = load i32, i32* @tot_skipped_answers, align 4
  %90 = load i32, i32* @errors_received, align 4
  %91 = load i32, i32* @client_errors_received, align 4
  %92 = load i32, i32* @total_failed_connections, align 4
  %93 = load i32, i32* @total_connect_failures, align 4
  %94 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %37, i8* getelementptr inbounds ([662 x i8], [662 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %43, i8* %44, i32 %45, i32 %46, i8* %47, i8* %48, i32 %51, i32 %54, double %57, double %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @dyn_update_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i8*, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
