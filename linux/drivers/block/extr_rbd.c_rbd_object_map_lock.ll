; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }
%struct.ceph_locker = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@oid = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i32 0, align 4
@RBD_LOCK_NAME = common dso_local global i32 0, align 4
@CEPH_CLS_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to lock object map: %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to get object map lockers: %d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"breaking object map lock owned by %s%llu\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to break object map lock: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_object_map_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_object_map_lock(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.ceph_osd_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ceph_locker*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %11 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %12 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.ceph_osd_client* %16, %struct.ceph_osd_client** %4, align 8
  %17 = load i32, i32* @oid, align 4
  %18 = call i32 @CEPH_DEFINE_OID_ONSTACK(i32 %17)
  store i32 0, i32* %9, align 4
  %19 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %20 = load i32, i32* @CEPH_NOSNAP, align 4
  %21 = call i32 @rbd_object_map_name(%struct.rbd_device* %19, i32 %20, i32* @oid)
  br label %22

22:                                               ; preds = %115, %109, %75, %64, %1
  %23 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %24 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %25 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %24, i32 0, i32 0
  %26 = load i32, i32* @RBD_LOCK_NAME, align 4
  %27 = load i32, i32* @CEPH_CLS_LOCK_EXCLUSIVE, align 4
  %28 = call i32 @ceph_cls_lock(%struct.ceph_osd_client* %23, i32* @oid, i32* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @EEXIST, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @rbd_warn(%struct.rbd_device* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %2, align 4
  br label %116

51:                                               ; preds = %33
  %52 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %53 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %54 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %53, i32 0, i32 0
  %55 = load i32, i32* @RBD_LOCK_NAME, align 4
  %56 = call i32 @ceph_cls_lock_info(%struct.ceph_osd_client* %52, i32* @oid, i32* %54, i32 %55, i32* %5, i8** %6, %struct.ceph_locker** %7, i64* %8)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %22

65:                                               ; preds = %59
  %66 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @rbd_warn(%struct.rbd_device* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %2, align 4
  br label %116

70:                                               ; preds = %51
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @kfree(i8* %71)
  %73 = load i64, i64* %8, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %22

76:                                               ; preds = %70
  %77 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %78 = load %struct.ceph_locker*, %struct.ceph_locker** %7, align 8
  %79 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %78, i64 0
  %80 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ENTITY_NAME(i32 %82)
  %84 = call i32 @rbd_warn(%struct.rbd_device* %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %86 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %87 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %86, i32 0, i32 0
  %88 = load i32, i32* @RBD_LOCK_NAME, align 4
  %89 = load %struct.ceph_locker*, %struct.ceph_locker** %7, align 8
  %90 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %89, i64 0
  %91 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ceph_locker*, %struct.ceph_locker** %7, align 8
  %95 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %94, i64 0
  %96 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @ceph_cls_break_lock(%struct.ceph_osd_client* %85, i32* @oid, i32* %87, i32 %88, i32 %93, i32* %97)
  store i32 %98, i32* %10, align 4
  %99 = load %struct.ceph_locker*, %struct.ceph_locker** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @ceph_free_lockers(%struct.ceph_locker* %99, i64 %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %76
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %22

110:                                              ; preds = %104
  %111 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @rbd_warn(%struct.rbd_device* %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %2, align 4
  br label %116

115:                                              ; preds = %76
  store i32 1, i32* %9, align 4
  br label %22

116:                                              ; preds = %110, %65, %49
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @CEPH_DEFINE_OID_ONSTACK(i32) #1

declare dso_local i32 @rbd_object_map_name(%struct.rbd_device*, i32, i32*) #1

declare dso_local i32 @ceph_cls_lock(%struct.ceph_osd_client*, i32*, i32*, i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i32) #1

declare dso_local i32 @ceph_cls_lock_info(%struct.ceph_osd_client*, i32*, i32*, i32, i32*, i8**, %struct.ceph_locker**, i64*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ENTITY_NAME(i32) #1

declare dso_local i32 @ceph_cls_break_lock(%struct.ceph_osd_client*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ceph_free_lockers(%struct.ceph_locker*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
