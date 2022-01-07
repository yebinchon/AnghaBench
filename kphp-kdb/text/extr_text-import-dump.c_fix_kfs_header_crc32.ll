; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_fix_kfs_header_crc32.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_fix_kfs_header_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfs_file_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_kfs_header_crc32(%struct.kfs_file_header* %0) #0 {
  %2 = alloca %struct.kfs_file_header*, align 8
  store %struct.kfs_file_header* %0, %struct.kfs_file_header** %2, align 8
  %3 = load %struct.kfs_file_header*, %struct.kfs_file_header** %2, align 8
  %4 = call i32 @compute_crc32(%struct.kfs_file_header* %3, i32 4092)
  %5 = load %struct.kfs_file_header*, %struct.kfs_file_header** %2, align 8
  %6 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  ret void
}

declare dso_local i32 @compute_crc32(%struct.kfs_file_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
