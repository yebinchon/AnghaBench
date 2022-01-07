; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_pvclock_gtod_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_pvclock_gtod_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32, i64 }
%struct.notifier_block = type { i32 }
%struct.xen_platform_op = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i64, i8* }
%struct.TYPE_6__ = type { i32, i64, i8*, i64 }
%struct.timekeeper = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@xen_pvclock_gtod_notify.next_sync = internal global %struct.timespec64 zeroinitializer, align 8
@xen_pvclock_gtod_notify.settime64_supported = internal global i32 1, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@XENPF_settime64 = common dso_local global i32 0, align 4
@XENPF_settime32 = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @xen_pvclock_gtod_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pvclock_gtod_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xen_platform_op, align 8
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca %struct.timekeeper*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.timekeeper*
  store %struct.timekeeper* %13, %struct.timekeeper** %10, align 8
  %14 = load %struct.timekeeper*, %struct.timekeeper** %10, align 8
  %15 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.timekeeper*, %struct.timekeeper** %10, align 8
  %19 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.timekeeper*, %struct.timekeeper** %10, align 8
  %23 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %21, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = call i64 @timespec64_compare(%struct.timespec64* %9, %struct.timespec64* @xen_pvclock_gtod_notify.next_sync)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %97

36:                                               ; preds = %31, %3
  br label %37

37:                                               ; preds = %86, %36
  %38 = load i32, i32* @xen_pvclock_gtod_notify.settime64_supported, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i32, i32* @XENPF_settime64, align 4
  %42 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = call i8* (...) @xen_clocksource_read()
  %57 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  br label %77

60:                                               ; preds = %37
  %61 = load i32, i32* @XENPF_settime32, align 4
  %62 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 1
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  %73 = call i8* (...) @xen_clocksource_read()
  %74 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %60, %40
  %78 = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %8)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @ENOSYS, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @xen_pvclock_gtod_notify.settime64_supported, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* @xen_pvclock_gtod_notify.settime64_supported, align 4
  br label %37

87:                                               ; preds = %83, %77
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %87
  %93 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec64* @xen_pvclock_gtod_notify.next_sync to i8*), i8* align 8 %93, i64 16, i1 false)
  %94 = load i32, i32* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @xen_pvclock_gtod_notify.next_sync, i32 0, i32 0), align 8
  %95 = add nsw i32 %94, 660
  store i32 %95, i32* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @xen_pvclock_gtod_notify.next_sync, i32 0, i32 0), align 8
  %96 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %90, %34
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @timespec64_compare(%struct.timespec64*, %struct.timespec64*) #1

declare dso_local i8* @xen_clocksource_read(...) #1

declare dso_local i32 @HYPERVISOR_platform_op(%struct.xen_platform_op*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
