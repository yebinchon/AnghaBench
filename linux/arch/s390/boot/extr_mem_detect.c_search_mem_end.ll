; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_mem_detect.c_search_mem_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_mem_detect.c_search_mem_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PHYSMEM_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @search_mem_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_mem_end() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAX_PHYSMEM_BITS, align 4
  %5 = sub nsw i32 %4, 20
  %6 = shl i32 1, %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %1, align 8
  store i64 0, i64* %2, align 8
  br label %8

8:                                                ; preds = %23, %0
  %9 = load i64, i64* %1, align 8
  %10 = icmp ugt i64 %9, 1
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i64, i64* %1, align 8
  %13 = lshr i64 %12, 1
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* %1, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = shl i64 %17, 20
  %19 = call i32 @tprot(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %21, %11
  br label %8

24:                                               ; preds = %8
  %25 = load i64, i64* %2, align 8
  %26 = add i64 %25, 1
  %27 = shl i64 %26, 20
  %28 = call i32 @add_mem_detect_block(i32 0, i64 %27)
  ret void
}

declare dso_local i32 @tprot(i64) #1

declare dso_local i32 @add_mem_detect_block(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
