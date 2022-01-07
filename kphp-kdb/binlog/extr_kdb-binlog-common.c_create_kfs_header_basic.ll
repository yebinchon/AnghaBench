; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_create_kfs_header_basic.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_create_kfs_header_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfs_file_header = type { i32, i32, i32 }

@KFS_MAGIC = common dso_local global i32 0, align 4
@KFS_V01 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_kfs_header_basic(%struct.kfs_file_header* %0) #0 {
  %2 = alloca %struct.kfs_file_header*, align 8
  store %struct.kfs_file_header* %0, %struct.kfs_file_header** %2, align 8
  %3 = load %struct.kfs_file_header*, %struct.kfs_file_header** %2, align 8
  %4 = call i32 @memset(%struct.kfs_file_header* %3, i32 0, i32 4096)
  %5 = load i32, i32* @KFS_MAGIC, align 4
  %6 = load %struct.kfs_file_header*, %struct.kfs_file_header** %2, align 8
  %7 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @KFS_V01, align 4
  %9 = load %struct.kfs_file_header*, %struct.kfs_file_header** %2, align 8
  %10 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.kfs_file_header*, %struct.kfs_file_header** %2, align 8
  %12 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 4
  ret void
}

declare dso_local i32 @memset(%struct.kfs_file_header*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
