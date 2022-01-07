; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_slide_read_buffer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_slide_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idx_ptr_crc = common dso_local global i64 0, align 8
@RBuff = common dso_local global i64 0, align 8
@idx_rptr = common dso_local global i64 0, align 8
@idx_wptr = common dso_local global i64 0, align 8
@RBuffEnd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idx_slide_read_buffer() #0 {
  %1 = load i64, i64* @idx_ptr_crc, align 8
  %2 = load i64, i64* @RBuff, align 8
  %3 = icmp sge i64 %1, %2
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i64, i64* @idx_ptr_crc, align 8
  %6 = load i64, i64* @idx_rptr, align 8
  %7 = icmp sle i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i64, i64* @idx_rptr, align 8
  %10 = load i64, i64* @idx_wptr, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* @idx_wptr, align 8
  %14 = load i64, i64* @RBuffEnd, align 8
  %15 = icmp sle i64 %13, %14
  br label %16

16:                                               ; preds = %12, %8, %4, %0
  %17 = phi i1 [ false, %8 ], [ false, %4 ], [ false, %0 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i32 (...) @idx_relax_crc32()
  %21 = load i64, i64* @idx_rptr, align 8
  %22 = load i64, i64* @RBuff, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %38

25:                                               ; preds = %16
  %26 = load i64, i64* @RBuff, align 8
  %27 = load i64, i64* @idx_rptr, align 8
  %28 = load i64, i64* @idx_wptr, align 8
  %29 = load i64, i64* @idx_rptr, align 8
  %30 = sub nsw i64 %28, %29
  %31 = call i32 @memmove(i64 %26, i64 %27, i64 %30)
  %32 = load i64, i64* @RBuff, align 8
  %33 = load i64, i64* @idx_wptr, align 8
  %34 = load i64, i64* @idx_rptr, align 8
  %35 = sub nsw i64 %33, %34
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* @idx_wptr, align 8
  %37 = load i64, i64* @RBuff, align 8
  store i64 %37, i64* @idx_ptr_crc, align 8
  store i64 %37, i64* @idx_rptr, align 8
  br label %38

38:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @idx_relax_crc32(...) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
