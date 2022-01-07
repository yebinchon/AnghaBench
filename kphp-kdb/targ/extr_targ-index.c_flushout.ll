; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_flushout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_flushout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wptr = common dso_local global i64 0, align 8
@wptr0 = common dso_local global i64 0, align 8
@write_pos = common dso_local global i32 0, align 4
@metafile_pos = common dso_local global i32 0, align 4
@rptr = common dso_local global i64 0, align 8
@newidx_fd = common dso_local global i32 0, align 4
@wptr_crc = common dso_local global i64 0, align 8
@crc32_acc = common dso_local global i32 0, align 4
@Buff = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @wptr, align 8
  %4 = load i64, i64* @wptr0, align 8
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = load i64, i64* @wptr, align 8
  %8 = load i64, i64* @wptr0, align 8
  %9 = sub nsw i64 %7, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @write_pos, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* @write_pos, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @metafile_pos, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* @metafile_pos, align 4
  br label %17

17:                                               ; preds = %6, %0
  %18 = load i64, i64* @rptr, align 8
  %19 = load i64, i64* @wptr, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load i64, i64* @wptr, align 8
  %23 = load i64, i64* @rptr, align 8
  %24 = sub nsw i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* @newidx_fd, align 4
  %27 = load i64, i64* @rptr, align 8
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @write(i32 %26, i64 %27, i32 %28)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* @rptr, align 8
  %36 = load i64, i64* @wptr_crc, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = load i64, i64* @wptr_crc, align 8
  %40 = load i64, i64* @wptr, align 8
  %41 = icmp sle i64 %39, %40
  br label %42

42:                                               ; preds = %38, %21
  %43 = phi i1 [ false, %21 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* @wptr_crc, align 8
  %47 = load i64, i64* @wptr, align 8
  %48 = load i64, i64* @wptr_crc, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i32, i32* @crc32_acc, align 4
  %51 = call i32 @crc32_partial(i64 %46, i64 %49, i32 %50)
  store i32 %51, i32* @crc32_acc, align 4
  br label %52

52:                                               ; preds = %42, %17
  %53 = load i64, i64* @Buff, align 8
  store i64 %53, i64* @wptr_crc, align 8
  store i64 %53, i64* @wptr0, align 8
  store i64 %53, i64* @wptr, align 8
  store i64 %53, i64* @rptr, align 8
  ret void
}

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crc32_partial(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
