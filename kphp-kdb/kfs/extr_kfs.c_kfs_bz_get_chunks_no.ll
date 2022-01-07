; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_kfs_bz_get_chunks_no.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_kfs_bz_get_chunks_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KFS_BINLOG_ZIP_CHUNK_SIZE = common dso_local global i32 0, align 4
@KFS_BINLOG_ZIP_CHUNK_SIZE_EXP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfs_bz_get_chunks_no(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i32, i32* @KFS_BINLOG_ZIP_CHUNK_SIZE, align 4
  %5 = sub nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %3, %6
  %8 = load i64, i64* @KFS_BINLOG_ZIP_CHUNK_SIZE_EXP, align 8
  %9 = ashr i64 %7, %8
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
