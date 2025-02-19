; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_relax_crc32.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_relax_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idx_ptr_crc = common dso_local global i64 0, align 8
@idx_rptr = common dso_local global i64 0, align 8
@idx_loaded_bytes = common dso_local global i32 0, align 4
@read_crc32_acc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @idx_relax_crc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idx_relax_crc32() #0 {
  %1 = load i64, i64* @idx_ptr_crc, align 8
  %2 = load i64, i64* @idx_rptr, align 8
  %3 = icmp slt i64 %1, %2
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = load i64, i64* @idx_rptr, align 8
  %6 = load i64, i64* @idx_ptr_crc, align 8
  %7 = sub nsw i64 %5, %6
  %8 = load i32, i32* @idx_loaded_bytes, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @idx_loaded_bytes, align 4
  %12 = load i64, i64* @idx_ptr_crc, align 8
  %13 = load i64, i64* @idx_rptr, align 8
  %14 = load i64, i64* @idx_ptr_crc, align 8
  %15 = sub nsw i64 %13, %14
  %16 = load i32, i32* @read_crc32_acc, align 4
  %17 = call i32 @crc32_partial(i64 %12, i64 %15, i32 %16)
  store i32 %17, i32* @read_crc32_acc, align 4
  %18 = load i64, i64* @idx_rptr, align 8
  store i64 %18, i64* @idx_ptr_crc, align 8
  br label %19

19:                                               ; preds = %4, %0
  %20 = load i32, i32* @read_crc32_acc, align 4
  %21 = xor i32 %20, -1
  ret i32 %21
}

declare dso_local i32 @crc32_partial(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
