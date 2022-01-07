; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_add_acquire_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_add_acquire_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i64, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@RBD_FEATURE_EXCLUSIVE_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"exclusive-lock feature is not enabled\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to acquire exclusive lock: %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_add_acquire_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_add_acquire_lock(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i64, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %5 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %6 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RBD_FEATURE_EXCLUSIVE_LOCK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %1
  %13 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %21 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %103

27:                                               ; preds = %19, %12
  %28 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %29 = call i32 (%struct.rbd_device*, i8*, ...) @rbd_warn(%struct.rbd_device* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %103

32:                                               ; preds = %1
  %33 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %34 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %33, i32 0, i32 5
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CEPH_NOSNAP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %103

41:                                               ; preds = %32
  %42 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %43 = call i64 @rbd_is_lock_owner(%struct.rbd_device* %42)
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @rbd_assert(i32 %46)
  %48 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %49 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %52 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %51, i32 0, i32 2
  %53 = call i32 @queue_delayed_work(i32 %50, i32* %52, i32 0)
  %54 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %55 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %54, i32 0, i32 3
  %56 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %57 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ceph_timeout_jiffies(i32 %60)
  %62 = call i64 @wait_for_completion_killable_timeout(i32* %55, i32 %61)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %41
  %66 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %67 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %4, align 8
  br label %79

69:                                               ; preds = %41
  %70 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %71 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %70, i32 0, i32 2
  %72 = call i32 @cancel_delayed_work_sync(i32* %71)
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* @ETIMEDOUT, align 8
  %77 = sub nsw i64 0, %76
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i32 (%struct.rbd_device*, i8*, ...) @rbd_warn(%struct.rbd_device* %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = load i64, i64* %4, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %2, align 4
  br label %103

88:                                               ; preds = %79
  %89 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %90 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %97 = call i64 @rbd_is_lock_owner(%struct.rbd_device* %96)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %95, %88
  %100 = phi i1 [ true, %88 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @rbd_assert(i32 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %82, %40, %27, %26
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, ...) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i64 @rbd_is_lock_owner(%struct.rbd_device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i64 @wait_for_completion_killable_timeout(i32*, i32) #1

declare dso_local i32 @ceph_timeout_jiffies(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
