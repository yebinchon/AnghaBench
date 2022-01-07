; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_proxy.c_proxy_send_prepare.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_proxy.c_proxy_send_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp_generator_t = type { i32, i64, i64, i32, i32, i32*, %struct.TYPE_12__, i64, %struct.TYPE_14__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_11__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32* }

@on_generator_dispose = common dso_local global i32 0, align 4
@do_proceed = common dso_local global i32 0, align 4
@do_stop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"websocket\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@on_send_headers_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rp_generator_t* (%struct.TYPE_14__*)* @proxy_send_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rp_generator_t* @proxy_send_prepare(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.rp_generator_t*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %7 = load i32, i32* @on_generator_dispose, align 4
  %8 = call %struct.rp_generator_t* @h2o_mem_alloc_shared(i32* %6, i32 72, i32 %7)
  store %struct.rp_generator_t* %8, %struct.rp_generator_t** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = call %struct.TYPE_15__* @get_client_ctx(%struct.TYPE_14__* %9)
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load i32, i32* @do_proceed, align 4
  %12 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %13 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @do_stop, align 4
  %16 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %17 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %21 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %20, i32 0, i32 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %36 = call i64 @h2o_lcstris(i32 %30, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %40 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %44

41:                                               ; preds = %26, %1
  %42 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %43 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %46 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @h2o_memis(i32 %50, i32 %54, i32 %55)
  %57 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %58 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %61 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %60, i32 0, i32 5
  store i32* null, i32** %61, align 8
  %62 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %63 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %62, i32 0, i32 4
  %64 = call i32 @h2o_doublebuffer_init(i32* %63, i32* @h2o_socket_buffer_prototype)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = call i32 @memset(i32* %66, i32 0, i32 4)
  %68 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %69 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %68, i32 0, i32 3
  %70 = load i32, i32* @on_send_headers_timeout, align 4
  %71 = call i32 @h2o_timer_init(i32* %69, i32 %70)
  %72 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %73 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %75 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  ret %struct.rp_generator_t* %76
}

declare dso_local %struct.rp_generator_t* @h2o_mem_alloc_shared(i32*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @get_client_ctx(%struct.TYPE_14__*) #1

declare dso_local i64 @h2o_lcstris(i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @h2o_doublebuffer_init(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @h2o_timer_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
