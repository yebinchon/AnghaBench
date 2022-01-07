; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_delete_remote_disk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_delete_remote_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cache_packed_local_copy_location = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.lev_cache_change_disk_status = type { i32 }

@LEV_CACHE_DELETE_REMOTE_DISK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_do_delete_remote_disk(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cache_packed_local_copy_location, align 4
  %10 = alloca %struct.lev_cache_change_disk_status*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @cache_is_valid_disk(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = bitcast %union.cache_packed_local_copy_location* %9 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = bitcast %union.cache_packed_local_copy_location* %9 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = bitcast %union.cache_packed_local_copy_location* %9 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @LEV_CACHE_DELETE_REMOTE_DISK, align 4
  %30 = bitcast %union.cache_packed_local_copy_location* %9 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.lev_cache_change_disk_status* @alloc_log_event(i32 %29, i32 4, i32 %31)
  store %struct.lev_cache_change_disk_status* %32, %struct.lev_cache_change_disk_status** %10, align 8
  %33 = load %struct.lev_cache_change_disk_status*, %struct.lev_cache_change_disk_status** %10, align 8
  %34 = call i32 @cache_delete_remote_disk(%struct.lev_cache_change_disk_status* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %19, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @cache_is_valid_disk(i32, i32, i32) #1

declare dso_local %struct.lev_cache_change_disk_status* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @cache_delete_remote_disk(%struct.lev_cache_change_disk_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
