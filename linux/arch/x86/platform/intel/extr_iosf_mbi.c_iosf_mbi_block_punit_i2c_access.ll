; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_block_punit_i2c_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_block_punit_i2c_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mbi_pdev = common dso_local global %struct.TYPE_2__* null, align 8
@iosf_mbi_sem_address = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@iosf_mbi_pmic_access_mutex = common dso_local global i32 0, align 4
@iosf_mbi_pmic_punit_access_count = common dso_local global i64 0, align 8
@iosf_mbi_pmic_access_waitq = common dso_local global i32 0, align 4
@iosf_mbi_pmic_i2c_access_count = common dso_local global i64 0, align 8
@iosf_mbi_pmic_bus_access_notifier = common dso_local global i32 0, align 4
@MBI_PMIC_BUS_ACCESS_BEGIN = common dso_local global i32 0, align 4
@iosf_mbi_pm_qos = common dso_local global i32 0, align 4
@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_REG_WRITE = common dso_local global i32 0, align 4
@PUNIT_SEMAPHORE_ACQUIRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error P-Unit semaphore request failed\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@SEMAPHORE_TIMEOUT = common dso_local global i32 0, align 4
@iosf_mbi_sem_acquired = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"P-Unit semaphore acquired after %ums\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Error P-Unit semaphore timed out, resetting\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"P-Unit semaphore: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iosf_mbi_block_punit_i2c_access() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mbi_pdev, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @iosf_mbi_sem_address, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %0
  %13 = phi i1 [ true, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %107

20:                                               ; preds = %12
  %21 = call i32 @mutex_lock(i32* @iosf_mbi_pmic_access_mutex)
  br label %22

22:                                               ; preds = %25, %20
  %23 = load i64, i64* @iosf_mbi_pmic_punit_access_count, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = call i32 @mutex_unlock(i32* @iosf_mbi_pmic_access_mutex)
  %27 = load i32, i32* @iosf_mbi_pmic_access_waitq, align 4
  %28 = load i64, i64* @iosf_mbi_pmic_punit_access_count, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @wait_event(i32 %27, i32 %30)
  %32 = call i32 @mutex_lock(i32* @iosf_mbi_pmic_access_mutex)
  br label %22

33:                                               ; preds = %22
  %34 = load i64, i64* @iosf_mbi_pmic_i2c_access_count, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %97

37:                                               ; preds = %33
  %38 = load i32, i32* @MBI_PMIC_BUS_ACCESS_BEGIN, align 4
  %39 = call i32 @blocking_notifier_call_chain(i32* @iosf_mbi_pmic_bus_access_notifier, i32 %38, i32* null)
  %40 = call i32 @pm_qos_update_request(i32* @iosf_mbi_pm_qos, i32 0)
  %41 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %42 = load i32, i32* @MBI_REG_WRITE, align 4
  %43 = load i32, i32* @iosf_mbi_sem_address, align 4
  %44 = load i32, i32* @PUNIT_SEMAPHORE_ACQUIRE, align 4
  %45 = call i32 @iosf_mbi_write(i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mbi_pdev, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %87

52:                                               ; preds = %37
  %53 = load i64, i64* @jiffies, align 8
  store i64 %53, i64* %2, align 8
  %54 = load i64, i64* %2, align 8
  %55 = load i32, i32* @SEMAPHORE_TIMEOUT, align 4
  %56 = call i64 @msecs_to_jiffies(i32 %55)
  %57 = add i64 %54, %56
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %76, %52
  %59 = call i32 @iosf_mbi_get_sem(i64* %5)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i64, i64* @jiffies, align 8
  store i64 %66, i64* @iosf_mbi_sem_acquired, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mbi_pdev, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i64, i64* %2, align 8
  %71 = sub i64 %69, %70
  %72 = call i32 @jiffies_to_msecs(i64 %71)
  %73 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %97

74:                                               ; preds = %62, %58
  %75 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %76

76:                                               ; preds = %74
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i64, i64* %3, align 8
  %79 = call i64 @time_before(i64 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %58, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @ETIMEDOUT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mbi_pdev, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %81, %48
  %88 = call i32 (...) @iosf_mbi_reset_semaphore()
  %89 = call i32 @iosf_mbi_get_sem(i64* %5)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mbi_pdev, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %5, align 8
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %91, %87
  br label %97

97:                                               ; preds = %96, %65, %36
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @WARN_ON(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* @iosf_mbi_pmic_i2c_access_count, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* @iosf_mbi_pmic_i2c_access_count, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = call i32 @mutex_unlock(i32* @iosf_mbi_pmic_access_mutex)
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %1, align 4
  br label %107

107:                                              ; preds = %104, %17
  %108 = load i32, i32* %1, align 4
  ret i32 %108
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

declare dso_local i32 @pm_qos_update_request(i32*, i32) #1

declare dso_local i32 @iosf_mbi_write(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @iosf_mbi_get_sem(i64*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @iosf_mbi_reset_semaphore(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
