; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_set_readpos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_set_readpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idx_bytes = common dso_local global i64 0, align 8
@idx_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@idx_read_pos = common dso_local global i64 0, align 8
@idx_metafile_pos = common dso_local global i64 0, align 8
@read_crc32_acc = common dso_local global i32 0, align 4
@RBuff = common dso_local global i32 0, align 4
@idx_ptr_crc = common dso_local global i32 0, align 4
@idx_wptr = common dso_local global i32 0, align 4
@idx_rptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idx_set_readpos(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @idx_bytes, align 8
  %5 = icmp sle i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = icmp sge i64 %7, 0
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i1 [ false, %1 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @idx_fd, align 4
  %14 = load i64, i64* %2, align 8
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i64 @lseek(i32 %13, i64 %14, i32 %15)
  %17 = load i64, i64* %2, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %2, align 8
  store i64 %21, i64* @idx_read_pos, align 8
  store i64 0, i64* @idx_metafile_pos, align 8
  store i32 -1, i32* @read_crc32_acc, align 4
  %22 = load i32, i32* @RBuff, align 4
  store i32 %22, i32* @idx_ptr_crc, align 4
  store i32 %22, i32* @idx_wptr, align 4
  store i32 %22, i32* @idx_rptr, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
