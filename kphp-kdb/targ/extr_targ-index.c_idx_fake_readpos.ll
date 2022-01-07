; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_fake_readpos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_fake_readpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RBuffEnd = common dso_local global i8* null, align 8
@RBuff = common dso_local global i8* null, align 8
@idx_bytes = common dso_local global i64 0, align 8
@idx_read_pos = common dso_local global i64 0, align 8
@idx_metafile_pos = common dso_local global i64 0, align 8
@read_crc32_acc = common dso_local global i32 0, align 4
@idx_ptr_crc = common dso_local global i8* null, align 8
@idx_rptr = common dso_local global i8* null, align 8
@idx_wptr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idx_fake_readpos(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i8*, i8** @RBuffEnd, align 8
  %5 = load i8*, i8** @RBuff, align 8
  %6 = ptrtoint i8* %4 to i64
  %7 = ptrtoint i8* %5 to i64
  %8 = sub i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @idx_bytes, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = icmp sge i64 %18, 0
  br label %20

20:                                               ; preds = %17, %11, %1
  %21 = phi i1 [ false, %11 ], [ false, %1 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* @idx_read_pos, align 8
  %27 = load i64, i64* %3, align 8
  store i64 %27, i64* @idx_metafile_pos, align 8
  store i32 -1, i32* @read_crc32_acc, align 4
  %28 = load i8*, i8** @RBuff, align 8
  store i8* %28, i8** @idx_ptr_crc, align 8
  store i8* %28, i8** @idx_rptr, align 8
  %29 = load i8*, i8** @RBuffEnd, align 8
  store i8* %29, i8** @idx_wptr, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
