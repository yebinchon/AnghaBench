; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_platmcpm.c_hip04_set_snoop_filter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_platmcpm.c_hip04_set_snoop_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fabric = common dso_local global i64 0, align 8
@FAB_SF_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @hip04_set_snoop_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hip04_set_snoop_filter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @fabric, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 (...) @BUG()
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i64, i64* @fabric, align 8
  %12 = load i64, i64* @FAB_SF_MODE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @readl_relaxed(i64 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 1, %18
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %5, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %5, align 8
  br label %30

23:                                               ; preds = %10
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @fabric, align 8
  %33 = load i64, i64* @FAB_SF_MODE, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i64 %31, i64 %34)
  br label %36

36:                                               ; preds = %38, %30
  %37 = call i32 (...) @cpu_relax()
  br label %38

38:                                               ; preds = %36
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @fabric, align 8
  %41 = load i64, i64* @FAB_SF_MODE, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @readl_relaxed(i64 %42)
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %36, label %45

45:                                               ; preds = %38
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
