; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-binlog.c_cache_delete_remote_disk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-binlog.c_cache_delete_remote_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_cache_change_disk_status = type { i32 }
%union.cache_packed_local_copy_location = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"LEV_CACHE_DELETE_REMOTE_DISK\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"\09%d\09%d\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_cache_change_disk_status*)* @cache_delete_remote_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_delete_remote_disk(%struct.lev_cache_change_disk_status* %0) #0 {
  %2 = alloca %struct.lev_cache_change_disk_status*, align 8
  %3 = alloca %union.cache_packed_local_copy_location, align 8
  store %struct.lev_cache_change_disk_status* %0, %struct.lev_cache_change_disk_status** %2, align 8
  %4 = call i64 @dump_line_header(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load %struct.lev_cache_change_disk_status*, %struct.lev_cache_change_disk_status** %2, align 8
  %8 = getelementptr inbounds %struct.lev_cache_change_disk_status, %struct.lev_cache_change_disk_status* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.cache_packed_local_copy_location* %3 to i32*
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @out, align 4
  %12 = bitcast %union.cache_packed_local_copy_location* %3 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = bitcast %union.cache_packed_local_copy_location* %3 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = bitcast %union.cache_packed_local_copy_location* %3 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %6, %1
  ret i32 0
}

declare dso_local i64 @dump_line_header(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
