; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_tl_to_masks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_tl_to_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mask_info = type { i32, %struct.mask_info* }
%struct.sysinfo_15_1_x = type { i64, %union.topology_entry* }
%union.topology_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@socket_info = common dso_local global %struct.mask_info zeroinitializer, align 8
@book_info = common dso_local global %struct.mask_info zeroinitializer, align 8
@drawer_info = common dso_local global %struct.mask_info zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysinfo_15_1_x*)* @tl_to_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_to_masks(%struct.sysinfo_15_1_x* %0) #0 {
  %2 = alloca %struct.sysinfo_15_1_x*, align 8
  %3 = alloca %struct.mask_info*, align 8
  %4 = alloca %struct.mask_info*, align 8
  %5 = alloca %struct.mask_info*, align 8
  %6 = alloca %union.topology_entry*, align 8
  %7 = alloca %union.topology_entry*, align 8
  store %struct.sysinfo_15_1_x* %0, %struct.sysinfo_15_1_x** %2, align 8
  store %struct.mask_info* @socket_info, %struct.mask_info** %3, align 8
  store %struct.mask_info* @book_info, %struct.mask_info** %4, align 8
  store %struct.mask_info* @drawer_info, %struct.mask_info** %5, align 8
  %8 = call i32 (...) @clear_masks()
  %9 = load %struct.sysinfo_15_1_x*, %struct.sysinfo_15_1_x** %2, align 8
  %10 = getelementptr inbounds %struct.sysinfo_15_1_x, %struct.sysinfo_15_1_x* %9, i32 0, i32 1
  %11 = load %union.topology_entry*, %union.topology_entry** %10, align 8
  store %union.topology_entry* %11, %union.topology_entry** %6, align 8
  %12 = load %struct.sysinfo_15_1_x*, %struct.sysinfo_15_1_x** %2, align 8
  %13 = ptrtoint %struct.sysinfo_15_1_x* %12 to i64
  %14 = load %struct.sysinfo_15_1_x*, %struct.sysinfo_15_1_x** %2, align 8
  %15 = getelementptr inbounds %struct.sysinfo_15_1_x, %struct.sysinfo_15_1_x* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = inttoptr i64 %17 to %union.topology_entry*
  store %union.topology_entry* %18, %union.topology_entry** %7, align 8
  br label %19

19:                                               ; preds = %66, %1
  %20 = load %union.topology_entry*, %union.topology_entry** %6, align 8
  %21 = load %union.topology_entry*, %union.topology_entry** %7, align 8
  %22 = icmp ult %union.topology_entry* %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  %24 = load %union.topology_entry*, %union.topology_entry** %6, align 8
  %25 = bitcast %union.topology_entry* %24 to i32*
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %64 [
    i32 3, label %27
    i32 2, label %37
    i32 1, label %47
    i32 0, label %57
  ]

27:                                               ; preds = %23
  %28 = load %struct.mask_info*, %struct.mask_info** %5, align 8
  %29 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %28, i32 0, i32 1
  %30 = load %struct.mask_info*, %struct.mask_info** %29, align 8
  store %struct.mask_info* %30, %struct.mask_info** %5, align 8
  %31 = load %union.topology_entry*, %union.topology_entry** %6, align 8
  %32 = bitcast %union.topology_entry* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mask_info*, %struct.mask_info** %5, align 8
  %36 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %66

37:                                               ; preds = %23
  %38 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %39 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %38, i32 0, i32 1
  %40 = load %struct.mask_info*, %struct.mask_info** %39, align 8
  store %struct.mask_info* %40, %struct.mask_info** %4, align 8
  %41 = load %union.topology_entry*, %union.topology_entry** %6, align 8
  %42 = bitcast %union.topology_entry* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %46 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %66

47:                                               ; preds = %23
  %48 = load %struct.mask_info*, %struct.mask_info** %3, align 8
  %49 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %48, i32 0, i32 1
  %50 = load %struct.mask_info*, %struct.mask_info** %49, align 8
  store %struct.mask_info* %50, %struct.mask_info** %3, align 8
  %51 = load %union.topology_entry*, %union.topology_entry** %6, align 8
  %52 = bitcast %union.topology_entry* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mask_info*, %struct.mask_info** %3, align 8
  %56 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %66

57:                                               ; preds = %23
  %58 = load %union.topology_entry*, %union.topology_entry** %6, align 8
  %59 = bitcast %union.topology_entry* %58 to i32*
  %60 = load %struct.mask_info*, %struct.mask_info** %5, align 8
  %61 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %62 = load %struct.mask_info*, %struct.mask_info** %3, align 8
  %63 = call i32 @add_cpus_to_mask(i32* %59, %struct.mask_info* %60, %struct.mask_info* %61, %struct.mask_info* %62)
  br label %66

64:                                               ; preds = %23
  %65 = call i32 (...) @clear_masks()
  br label %69

66:                                               ; preds = %57, %47, %37, %27
  %67 = load %union.topology_entry*, %union.topology_entry** %6, align 8
  %68 = call %union.topology_entry* @next_tle(%union.topology_entry* %67)
  store %union.topology_entry* %68, %union.topology_entry** %6, align 8
  br label %19

69:                                               ; preds = %64, %19
  ret void
}

declare dso_local i32 @clear_masks(...) #1

declare dso_local i32 @add_cpus_to_mask(i32*, %struct.mask_info*, %struct.mask_info*, %struct.mask_info*) #1

declare dso_local %union.topology_entry* @next_tle(%union.topology_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
