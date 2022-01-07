; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_normalize_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_normalize_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_X86_64 = common dso_local global i32 0, align 4
@__VIRTUAL_MASK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @normalize_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @normalize_addr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @CONFIG_X86_64, align 4
  %6 = call i32 @IS_ENABLED(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %2, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load i32, i32* @__VIRTUAL_MASK_SHIFT, align 4
  %12 = add nsw i32 %11, 1
  %13 = sub nsw i32 64, %12
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 %14, %16
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = ashr i64 %17, %19
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %10, %8
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i32 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
