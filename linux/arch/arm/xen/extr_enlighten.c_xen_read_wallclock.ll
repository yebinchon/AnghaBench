; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/xen/extr_enlighten.c_xen_read_wallclock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/xen/extr_enlighten.c_xen_read_wallclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { %struct.pvclock_wall_clock }
%struct.pvclock_wall_clock = type { i32, i32, i32, i64 }
%struct.timespec64 = type { i32, i32 }

@HYPERVISOR_shared_info = common dso_local global %struct.shared_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec64*)* @xen_read_wallclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_read_wallclock(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec64, align 4
  %5 = alloca %struct.timespec64, align 4
  %6 = alloca %struct.shared_info*, align 8
  %7 = alloca %struct.pvclock_wall_clock*, align 8
  %8 = alloca %struct.timespec64, align 4
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  %9 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8
  store %struct.shared_info* %9, %struct.shared_info** %6, align 8
  %10 = load %struct.shared_info*, %struct.shared_info** %6, align 8
  %11 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %10, i32 0, i32 0
  store %struct.pvclock_wall_clock* %11, %struct.pvclock_wall_clock** %7, align 8
  br label %12

12:                                               ; preds = %44, %1
  %13 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %7, align 8
  %14 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = call i32 (...) @rmb()
  %17 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %7, align 8
  %18 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 32
  %22 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %7, align 8
  %23 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %7, align 8
  %28 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = call i32 (...) @rmb()
  br label %32

32:                                               ; preds = %12
  %33 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %7, align 8
  %34 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %7, align 8
  %41 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i1 [ true, %32 ], [ %43, %38 ]
  br i1 %45, label %12, label %46

46:                                               ; preds = %44
  %47 = call i32 @ktime_get_ts64(%struct.timespec64* %5)
  %48 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %49 = bitcast %struct.timespec64* %4 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = bitcast %struct.timespec64* %5 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = call i64 @timespec64_add(i64 %50, i64 %52)
  %54 = bitcast %struct.timespec64* %8 to i64*
  store i64 %53, i64* %54, align 4
  %55 = bitcast %struct.timespec64* %48 to i8*
  %56 = bitcast %struct.timespec64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 8, i1 false)
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i64 @timespec64_add(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
