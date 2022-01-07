; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_ioremap.c_arc_uncached_addr_space.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_ioremap.c_arc_uncached_addr_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARC_UNCACHED_ADDR_SPACE = common dso_local global i64 0, align 8
@perip_base = common dso_local global i64 0, align 8
@perip_end = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @arc_uncached_addr_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_uncached_addr_space(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = call i64 (...) @is_isa_arcompact()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @ARC_UNCACHED_ADDR_SPACE, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %23

11:                                               ; preds = %6
  br label %22

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @perip_base, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @perip_end, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %23

21:                                               ; preds = %16, %12
  br label %22

22:                                               ; preds = %21, %11
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @is_isa_arcompact(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
