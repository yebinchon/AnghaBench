; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_readadv.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_readadv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wptr = common dso_local global i64 0, align 8
@rptr = common dso_local global i64 0, align 8
@idx_crc32_complement = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readadv(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp uge i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @wptr, align 8
  %8 = load i64, i64* @rptr, align 8
  %9 = sub i64 %7, %8
  %10 = icmp ule i64 %6, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* @rptr, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i32, i32* @idx_crc32_complement, align 4
  %18 = call i32 @crc32_partial(i64 %15, i64 %16, i32 %17)
  store i32 %18, i32* @idx_crc32_complement, align 4
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @rptr, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* @rptr, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crc32_partial(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
