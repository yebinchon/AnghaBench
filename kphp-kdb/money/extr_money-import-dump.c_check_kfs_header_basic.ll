; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_check_kfs_header_basic.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_check_kfs_header_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfs_file_header = type { i64, i64, i64 }

@KFS_MAGIC = common dso_local global i64 0, align 8
@KFS_V01 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_kfs_header_basic(%struct.kfs_file_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfs_file_header*, align 8
  store %struct.kfs_file_header* %0, %struct.kfs_file_header** %3, align 8
  %4 = load %struct.kfs_file_header*, %struct.kfs_file_header** %3, align 8
  %5 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @KFS_MAGIC, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.kfs_file_header*, %struct.kfs_file_header** %3, align 8
  %12 = call i64 @compute_crc32(%struct.kfs_file_header* %11, i32 4092)
  %13 = load %struct.kfs_file_header*, %struct.kfs_file_header** %3, align 8
  %14 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.kfs_file_header*, %struct.kfs_file_header** %3, align 8
  %20 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KFS_V01, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @compute_crc32(%struct.kfs_file_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
