; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/xen/extr_enlighten.c_xen_pvclock_gtod_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/xen/extr_enlighten.c_xen_pvclock_gtod_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32, i64 }
%struct.notifier_block = type { i32 }
%struct.xen_platform_op = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i64 }
%struct.timekeeper = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@xen_pvclock_gtod_notify.next_sync = internal global %struct.timespec64 zeroinitializer, align 8
@NOTIFY_OK = common dso_local global i32 0, align 4
@XENPF_settime64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @xen_pvclock_gtod_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pvclock_gtod_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xen_platform_op, align 8
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca %struct.timespec64, align 8
  %11 = alloca %struct.timekeeper*, align 8
  %12 = alloca %struct.timespec64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.timekeeper*
  store %struct.timekeeper* %14, %struct.timekeeper** %11, align 8
  %15 = load %struct.timekeeper*, %struct.timekeeper** %11, align 8
  %16 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.timekeeper*, %struct.timekeeper** %11, align 8
  %20 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.timekeeper*, %struct.timekeeper** %11, align 8
  %24 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %22, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = load %struct.timekeeper*, %struct.timekeeper** %11, align 8
  %31 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = bitcast %struct.timespec64* %9 to { i32, i64 }*
  %34 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call { i32, i64 } @timespec64_add(i32 %35, i64 %37, i32 %32)
  %39 = bitcast %struct.timespec64* %12 to { i32, i64 }*
  %40 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %39, i32 0, i32 0
  %41 = extractvalue { i32, i64 } %38, 0
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %39, i32 0, i32 1
  %43 = extractvalue { i32, i64 } %38, 1
  store i64 %43, i64* %42, align 8
  %44 = bitcast %struct.timespec64* %10 to i8*
  %45 = bitcast %struct.timespec64* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %3
  %49 = call i64 @timespec64_compare(%struct.timespec64* %9, %struct.timespec64* @xen_pvclock_gtod_notify.next_sync)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %78

53:                                               ; preds = %48, %3
  %54 = load i32, i32* @XENPF_settime64, align 4
  %55 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i64 %65, i64* %68, align 8
  %69 = call i32 @timespec64_to_ns(%struct.timespec64* %10)
  %70 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %8, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %8)
  %74 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec64* @xen_pvclock_gtod_notify.next_sync to i8*), i8* align 8 %74, i64 16, i1 false)
  %75 = load i32, i32* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @xen_pvclock_gtod_notify.next_sync, i32 0, i32 0), align 8
  %76 = add nsw i32 %75, 660
  store i32 %76, i32* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @xen_pvclock_gtod_notify.next_sync, i32 0, i32 0), align 8
  %77 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %53, %51
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local { i32, i64 } @timespec64_add(i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec64_compare(%struct.timespec64*, %struct.timespec64*) #1

declare dso_local i32 @timespec64_to_ns(%struct.timespec64*) #1

declare dso_local i32 @HYPERVISOR_platform_op(%struct.xen_platform_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
