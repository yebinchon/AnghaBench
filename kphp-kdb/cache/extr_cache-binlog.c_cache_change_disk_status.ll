; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-binlog.c_cache_change_disk_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-binlog.c_cache_change_disk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_cache_change_disk_status = type { i32 }
%union.cache_packed_local_copy_location = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"LEV_CACHE_CHANGE_DISK_STATUS\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"+%d\09%d\09%d\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_cache_change_disk_status*, i32)* @cache_change_disk_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_change_disk_status(%struct.lev_cache_change_disk_status* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_cache_change_disk_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cache_packed_local_copy_location, align 8
  store %struct.lev_cache_change_disk_status* %0, %struct.lev_cache_change_disk_status** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @dump_line_header(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load %struct.lev_cache_change_disk_status*, %struct.lev_cache_change_disk_status** %3, align 8
  %10 = getelementptr inbounds %struct.lev_cache_change_disk_status, %struct.lev_cache_change_disk_status* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.cache_packed_local_copy_location* %5 to i32*
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @out, align 4
  %14 = load i32, i32* %4, align 4
  %15 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %8, %2
  ret i32 0
}

declare dso_local i64 @dump_line_header(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
