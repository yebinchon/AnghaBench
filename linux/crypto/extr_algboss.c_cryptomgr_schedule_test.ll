; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algboss.c_cryptomgr_schedule_test.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algboss.c_cryptomgr_schedule_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, i32, i32 }
%struct.task_struct = type { i32 }
%struct.crypto_test_param = type { i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CRYPTO_ALG_INTERNAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_TESTED = common dso_local global i32 0, align 4
@cryptomgr_test = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cryptomgr_test\00", align 1
@NOTIFY_STOP = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_alg*)* @cryptomgr_schedule_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptomgr_schedule_test(%struct.crypto_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_alg*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.crypto_test_param*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_alg* %0, %struct.crypto_alg** %3, align 8
  %7 = load i32, i32* @THIS_MODULE, align 4
  %8 = call i32 @try_module_get(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %62

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.crypto_test_param* @kzalloc(i32 12, i32 %12)
  store %struct.crypto_test_param* %13, %struct.crypto_test_param** %5, align 8
  %14 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %15 = icmp ne %struct.crypto_test_param* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %59

17:                                               ; preds = %11
  %18 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %19 = getelementptr inbounds %struct.crypto_test_param, %struct.crypto_test_param* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %22 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i32 %20, i32 %23, i32 4)
  %25 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %26 = getelementptr inbounds %struct.crypto_test_param, %struct.crypto_test_param* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %29 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32 %27, i32 %30, i32 4)
  %32 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %33 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CRYPTO_ALG_INTERNAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %17
  %40 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %17
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %46 = getelementptr inbounds %struct.crypto_test_param, %struct.crypto_test_param* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @cryptomgr_test, align 4
  %48 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %49 = call %struct.task_struct* @kthread_run(i32 %47, %struct.crypto_test_param* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %49, %struct.task_struct** %4, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %51 = call i64 @IS_ERR(%struct.task_struct* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %55, i32* %2, align 4
  br label %64

56:                                               ; preds = %53
  %57 = load %struct.crypto_test_param*, %struct.crypto_test_param** %5, align 8
  %58 = call i32 @kfree(%struct.crypto_test_param* %57)
  br label %59

59:                                               ; preds = %56, %16
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = call i32 @module_put(i32 %60)
  br label %62

62:                                               ; preds = %59, %10
  %63 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %54
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.crypto_test_param* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.crypto_test_param*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @kfree(%struct.crypto_test_param*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
