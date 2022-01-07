; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_ACCESS_QUERIES = common dso_local global i32 0, align 4
@allow_save_index_without_counters = common dso_local global i32 0, align 4
@disallow_save_index = common dso_local global i32 0, align 4
@cache_functions = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@cache_parse_function = common dso_local global i32 0, align 4
@tl_parse_function = common dso_local global i32 0, align 4
@tl_aio_timeout = common dso_local global double 0.000000e+00, align 8
@cache_engine = common dso_local global i32 0, align 4
@ct_rpc_server = common dso_local global i32 0, align 4
@rpc_methods = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @cache_features_mask, align 4
  %4 = load i32, i32* @CACHE_FEATURE_ACCESS_QUERIES, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @allow_save_index_without_counters, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @disallow_save_index, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cache_functions, i32 0, i32 0), align 4
  br label %12

12:                                               ; preds = %10, %7, %0
  %13 = load i32, i32* @cache_parse_function, align 4
  store i32 %13, i32* @tl_parse_function, align 4
  store double 2.000000e+00, double* @tl_aio_timeout, align 8
  %14 = call i32 @server_init(i32* @cache_engine, %struct.TYPE_3__* @cache_functions, i32* @ct_rpc_server, i32* @rpc_methods)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %40, %12
  %16 = load i32, i32* %1, align 4
  %17 = and i32 %16, 255
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @active_connections, align 4
  %21 = load i32, i32* @maxconn, align 4
  %22 = load i32, i32* @NB_used, align 4
  %23 = load i32, i32* @NB_alloc, align 4
  %24 = load i32, i32* @NB_max, align 4
  %25 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %15
  %27 = call i32 @epoll_work(i32 57)
  %28 = call i32 (...) @process_signals()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %43

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %43

39:                                               ; preds = %34, %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %15

43:                                               ; preds = %38, %30
  %44 = call i32 @server_exit(i32* @cache_engine)
  ret void
}

declare dso_local i32 @server_init(i32*, %struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @process_signals(...) #1

declare dso_local i32 @server_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
