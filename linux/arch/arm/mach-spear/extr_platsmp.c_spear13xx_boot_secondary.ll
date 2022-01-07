; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-spear/extr_platsmp.c_spear13xx_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-spear/extr_platsmp.c_spear13xx_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@boot_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@spear_pen_release = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @spear13xx_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear13xx_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = call i32 @spin_lock(i32* @boot_lock)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @spear_write_pen_release(i32 %7)
  %9 = load i32, i32* @jiffies, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 1, %10
  %12 = add nsw i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %24, %2
  %15 = load i32, i32* @jiffies, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @time_before(i32 %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = call i32 (...) @smp_rmb()
  %21 = load i32, i32* @spear_pen_release, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %26

24:                                               ; preds = %19
  %25 = call i32 @udelay(i32 10)
  br label %14

26:                                               ; preds = %23, %14
  %27 = call i32 @spin_unlock(i32* @boot_lock)
  %28 = load i32, i32* @spear_pen_release, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  ret i32 %35
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spear_write_pen_release(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
