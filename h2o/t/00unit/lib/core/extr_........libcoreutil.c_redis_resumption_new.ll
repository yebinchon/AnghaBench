; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_redis_resumption_new.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_redis_resumption_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.st_h2o_redis_resumption_accept_data_t* }
%struct.st_h2o_redis_resumption_accept_data_t = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i64 }

@H2O_REDIS_CONNECTION_STATE_CLOSED = common dso_local global i64 0, align 8
@async_resumption_context = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"SETEX %s %d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32, i32)* @redis_resumption_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_resumption_new(%struct.TYPE_24__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_26__, align 4
  %5 = alloca %struct.TYPE_26__, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.st_h2o_redis_resumption_accept_data_t*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_26__, align 4
  %10 = alloca %struct.TYPE_26__, align 4
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %14, align 8
  store %struct.st_h2o_redis_resumption_accept_data_t* %15, %struct.st_h2o_redis_resumption_accept_data_t** %7, align 8
  %16 = load %struct.st_h2o_redis_resumption_accept_data_t*, %struct.st_h2o_redis_resumption_accept_data_t** %7, align 8
  %17 = getelementptr inbounds %struct.st_h2o_redis_resumption_accept_data_t, %struct.st_h2o_redis_resumption_accept_data_t* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_25__* @get_redis_client(i32 %21)
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %8, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @H2O_REDIS_CONNECTION_STATE_CLOSED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @async_resumption_context, i32 0, i32 1, i32 2, i32 0), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @async_resumption_context, i32 0, i32 1, i32 1), align 4
  %32 = call i32 @h2o_redis_connect(%struct.TYPE_25__* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @async_resumption_context, i32 0, i32 1, i32 0), align 4
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @build_redis_key(i32 %36, i32 %34)
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @build_redis_value(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @async_resumption_context, i32 0, i32 0), align 4
  %47 = mul nsw i32 %46, 10
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @h2o_redis_command(%struct.TYPE_25__* %43, i32* null, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @free(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @free(i32 %55)
  ret void
}

declare dso_local %struct.TYPE_25__* @get_redis_client(i32) #1

declare dso_local i32 @h2o_redis_connect(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @build_redis_key(i32, i32) #1

declare dso_local i32 @build_redis_value(i32) #1

declare dso_local i32 @h2o_redis_command(%struct.TYPE_25__*, i32*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
