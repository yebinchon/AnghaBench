; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_engine_alloc_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_engine.c_crypto_engine_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_engine = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.device*, %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.sched_param = type { i32 }

@MAX_RT_PRIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-engine\00", align 1
@CRYPTO_ENGINE_MAX_QLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to create crypto request pump task\0A\00", align 1
@crypto_pump_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"will run requests pump with realtime priority\0A\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_engine* @crypto_engine_alloc_init(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_engine*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sched_param, align 4
  %7 = alloca %struct.crypto_engine*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %6, i32 0, i32 0
  %9 = load i32, i32* @MAX_RT_PRIO, align 4
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.crypto_engine* null, %struct.crypto_engine** %3, align 8
  br label %87

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.crypto_engine* @devm_kzalloc(%struct.device* %15, i32 64, i32 %16)
  store %struct.crypto_engine* %17, %struct.crypto_engine** %7, align 8
  %18 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %19 = icmp ne %struct.crypto_engine* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store %struct.crypto_engine* null, %struct.crypto_engine** %3, align 8
  br label %87

21:                                               ; preds = %14
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %24 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %23, i32 0, i32 11
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %27 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %29 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %31 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %33 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %32, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %35 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %34, i32 0, i32 4
  store i32 0, i32* %35, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %38 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %37, i32 0, i32 10
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %40 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i8* @dev_name(%struct.device* %42)
  %44 = call i32 @snprintf(i32 %41, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %46 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %45, i32 0, i32 9
  %47 = load i32, i32* @CRYPTO_ENGINE_MAX_QLEN, align 4
  %48 = call i32 @crypto_init_queue(i32* %46, i32 %47)
  %49 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %50 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %49, i32 0, i32 8
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %53 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_3__* @kthread_create_worker(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %57 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %56, i32 0, i32 5
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %57, align 8
  %58 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %59 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %58, i32 0, i32 5
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = call i64 @IS_ERR(%struct.TYPE_3__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %21
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store %struct.crypto_engine* null, %struct.crypto_engine** %3, align 8
  br label %87

66:                                               ; preds = %21
  %67 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %68 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %67, i32 0, i32 6
  %69 = load i32, i32* @crypto_pump_work, align 4
  %70 = call i32 @kthread_init_work(i32* %68, i32 %69)
  %71 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %72 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @dev_info(%struct.device* %76, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  %79 = getelementptr inbounds %struct.crypto_engine, %struct.crypto_engine* %78, i32 0, i32 5
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SCHED_FIFO, align 4
  %84 = call i32 @sched_setscheduler(i32 %82, i32 %83, %struct.sched_param* %6)
  br label %85

85:                                               ; preds = %75, %66
  %86 = load %struct.crypto_engine*, %struct.crypto_engine** %7, align 8
  store %struct.crypto_engine* %86, %struct.crypto_engine** %3, align 8
  br label %87

87:                                               ; preds = %85, %63, %20, %13
  %88 = load %struct.crypto_engine*, %struct.crypto_engine** %3, align 8
  ret %struct.crypto_engine* %88
}

declare dso_local %struct.crypto_engine* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_3__* @kthread_create_worker(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @kthread_init_work(i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
