; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-b15-rac.c___b15_rac_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-b15-rac.c___b15_rac_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLUSH_RAC = common dso_local global i32 0, align 4
@b15_rac_base = common dso_local global i64 0, align 8
@rac_flush_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__b15_rac_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__b15_rac_flush() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FLUSH_RAC, align 4
  %3 = load i64, i64* @b15_rac_base, align 8
  %4 = load i64, i64* @rac_flush_offset, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @__raw_writel(i32 %2, i64 %5)
  br label %7

7:                                                ; preds = %13, %0
  %8 = call i32 (...) @dmb()
  %9 = load i64, i64* @b15_rac_base, align 8
  %10 = load i64, i64* @rac_flush_offset, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @__raw_readl(i64 %11)
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @FLUSH_RAC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %7, label %18

18:                                               ; preds = %13
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @dmb(...) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
