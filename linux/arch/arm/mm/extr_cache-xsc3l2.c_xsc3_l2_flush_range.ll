; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_flush_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_flush_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @xsc3_l2_flush_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsc3_l2_flush_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (...) @xsc3_l2_flush_all()
  br label %40

13:                                               ; preds = %8, %2
  store i64 -1, i64* %5, align 8
  %14 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = xor i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %24, %13
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @l2_map_va(i64 %25, i64 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @xsc3_l2_clean_mva(i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @xsc3_l2_inv_mva(i64 %30)
  %32 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %3, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @l2_unmap_va(i64 %37)
  %39 = call i32 (...) @dsb()
  br label %40

40:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @xsc3_l2_flush_all(...) #1

declare dso_local i64 @l2_map_va(i64, i64) #1

declare dso_local i32 @xsc3_l2_clean_mva(i64) #1

declare dso_local i32 @xsc3_l2_inv_mva(i64) #1

declare dso_local i32 @l2_unmap_va(i64) #1

declare dso_local i32 @dsb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
