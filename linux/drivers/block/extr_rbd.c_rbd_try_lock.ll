; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_try_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_try_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ceph_client* }
%struct.ceph_client = type { i32, i32 }
%struct.ceph_locker = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"breaking header lock owned by %s%llu\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"blacklist of %s%llu failed: %d\00", align 1
@RBD_LOCK_NAME = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_try_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_try_lock(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.ceph_client*, align 8
  %5 = alloca %struct.ceph_locker*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %8 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %9 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ceph_client*, %struct.ceph_client** %11, align 8
  store %struct.ceph_client* %12, %struct.ceph_client** %4, align 8
  br label %13

13:                                               ; preds = %95, %1
  %14 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %15 = call i32 @rbd_lock(%struct.rbd_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %104

22:                                               ; preds = %13
  %23 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %24 = call i32 @get_lock_owner_info(%struct.rbd_device* %23, %struct.ceph_locker** %5, i64* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %104

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %95

33:                                               ; preds = %29
  %34 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %35 = load %struct.ceph_locker*, %struct.ceph_locker** %5, align 8
  %36 = call i32 @find_watcher(%struct.rbd_device* %34, %struct.ceph_locker* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %99

40:                                               ; preds = %33
  %41 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %42 = load %struct.ceph_locker*, %struct.ceph_locker** %5, align 8
  %43 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %42, i64 0
  %44 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ENTITY_NAME(i32 %46)
  %48 = call i32 (%struct.rbd_device*, i8*, i32, ...) @rbd_warn(%struct.rbd_device* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %50 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %49, i32 0, i32 1
  %51 = load %struct.ceph_locker*, %struct.ceph_locker** %5, align 8
  %52 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %51, i64 0
  %53 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @ceph_monc_blacklist_add(i32* %50, i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %40
  %59 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %60 = load %struct.ceph_locker*, %struct.ceph_locker** %5, align 8
  %61 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %60, i64 0
  %62 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ENTITY_NAME(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.rbd_device*, i8*, i32, ...) @rbd_warn(%struct.rbd_device* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  br label %99

68:                                               ; preds = %40
  %69 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %70 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %69, i32 0, i32 0
  %71 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %72 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %71, i32 0, i32 1
  %73 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %74 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %73, i32 0, i32 0
  %75 = load i32, i32* @RBD_LOCK_NAME, align 4
  %76 = load %struct.ceph_locker*, %struct.ceph_locker** %5, align 8
  %77 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %76, i64 0
  %78 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ceph_locker*, %struct.ceph_locker** %5, align 8
  %82 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %81, i64 0
  %83 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @ceph_cls_break_lock(i32* %70, i32* %72, i32* %74, i32 %75, i32 %80, i32* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %68
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ENOENT, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %99

94:                                               ; preds = %88, %68
  br label %95

95:                                               ; preds = %94, %32
  %96 = load %struct.ceph_locker*, %struct.ceph_locker** %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @ceph_free_lockers(%struct.ceph_locker* %96, i64 %97)
  br label %13

99:                                               ; preds = %93, %58, %39
  %100 = load %struct.ceph_locker*, %struct.ceph_locker** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @ceph_free_lockers(%struct.ceph_locker* %100, i64 %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %99, %27, %20
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @rbd_lock(%struct.rbd_device*) #1

declare dso_local i32 @get_lock_owner_info(%struct.rbd_device*, %struct.ceph_locker**, i64*) #1

declare dso_local i32 @find_watcher(%struct.rbd_device*, %struct.ceph_locker*) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i32, ...) #1

declare dso_local i32 @ENTITY_NAME(i32) #1

declare dso_local i32 @ceph_monc_blacklist_add(i32*, i32*) #1

declare dso_local i32 @ceph_cls_break_lock(i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ceph_free_lockers(%struct.ceph_locker*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
