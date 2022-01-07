; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_redis_resumption_get.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_redis_resumption_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { %struct.st_h2o_redis_resumption_accept_data_t* }
%struct.st_h2o_redis_resumption_accept_data_t = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_19__, %struct.TYPE_24__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i64 }

@H2O_REDIS_CONNECTION_STATE_CONNECTED = common dso_local global i64 0, align 8
@async_resumption_context = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@redis_resumption_on_get = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"GET %s\00", align 1
@H2O_REDIS_CONNECTION_STATE_CLOSED = common dso_local global i64 0, align 8
@on_redis_resumption_get_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, i32)* @redis_resumption_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_resumption_get(%struct.TYPE_26__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_28__, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.st_h2o_redis_resumption_accept_data_t*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__, align 4
  %8 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  %9 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %11 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %10, align 8
  store %struct.st_h2o_redis_resumption_accept_data_t* %11, %struct.st_h2o_redis_resumption_accept_data_t** %5, align 8
  %12 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %5, align 8
  %13 = getelementptr inbounds %struct.st_h2o_redis_resumption_accept_data_t, %struct.st_h2o_redis_resumption_accept_data_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %18 = call %struct.TYPE_27__* @get_redis_client(%struct.TYPE_20__* %17)
  store %struct.TYPE_27__* %18, %struct.TYPE_27__** %6, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @H2O_REDIS_CONNECTION_STATE_CONNECTED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @async_resumption_context, i32 0, i32 0, i32 2), align 4
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @build_redis_key(i32 %27, i32 %25)
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %31 = load i32, i32* @redis_resumption_on_get, align 4
  %32 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @h2o_redis_command(%struct.TYPE_27__* %30, i32 %31, %struct.st_h2o_redis_resumption_accept_data_t* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %5, align 8
  %37 = getelementptr inbounds %struct.st_h2o_redis_resumption_accept_data_t, %struct.st_h2o_redis_resumption_accept_data_t* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @free(i32 %39)
  br label %74

41:                                               ; preds = %2
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @H2O_REDIS_CONNECTION_STATE_CLOSED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @async_resumption_context, i32 0, i32 0, i32 1, i32 0), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @async_resumption_context, i32 0, i32 0, i32 0), align 4
  %51 = call i32 @h2o_redis_connect(%struct.TYPE_27__* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %5, align 8
  %54 = getelementptr inbounds %struct.st_h2o_redis_resumption_accept_data_t, %struct.st_h2o_redis_resumption_accept_data_t* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = call i32 @h2o_timer_unlink(%struct.TYPE_19__* %55)
  %57 = load i32, i32* @on_redis_resumption_get_failed, align 4
  %58 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %5, align 8
  %59 = getelementptr inbounds %struct.st_h2o_redis_resumption_accept_data_t, %struct.st_h2o_redis_resumption_accept_data_t* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %5, align 8
  %63 = getelementptr inbounds %struct.st_h2o_redis_resumption_accept_data_t, %struct.st_h2o_redis_resumption_accept_data_t* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %5, align 8
  %71 = getelementptr inbounds %struct.st_h2o_redis_resumption_accept_data_t, %struct.st_h2o_redis_resumption_accept_data_t* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = call i32 @h2o_timer_link(i32 %69, i32 0, %struct.TYPE_19__* %72)
  br label %74

74:                                               ; preds = %52, %24
  ret void
}

declare dso_local %struct.TYPE_27__* @get_redis_client(%struct.TYPE_20__*) #1

declare dso_local i32 @build_redis_key(i32, i32) #1

declare dso_local i32 @h2o_redis_command(%struct.TYPE_27__*, i32, %struct.st_h2o_redis_resumption_accept_data_t*, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @h2o_redis_connect(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @h2o_timer_unlink(%struct.TYPE_19__*) #1

declare dso_local i32 @h2o_timer_link(i32, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
