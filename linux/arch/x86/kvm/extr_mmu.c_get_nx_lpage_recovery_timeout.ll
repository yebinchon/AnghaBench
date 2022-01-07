; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_get_nx_lpage_recovery_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_get_nx_lpage_recovery_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nx_huge_pages = common dso_local global i32 0, align 4
@nx_huge_pages_recovery_ratio = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_nx_lpage_recovery_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_nx_lpage_recovery_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @nx_huge_pages, align 4
  %4 = call i64 @READ_ONCE(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i32, i32* @nx_huge_pages_recovery_ratio, align 4
  %8 = call i64 @READ_ONCE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = load i32, i32* @HZ, align 4
  %13 = mul nsw i32 60, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i64 (...) @get_jiffies_64()
  %17 = sub nsw i64 %15, %16
  br label %20

18:                                               ; preds = %6, %1
  %19 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i64 [ %17, %10 ], [ %19, %18 ]
  ret i64 %21
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @get_jiffies_64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
