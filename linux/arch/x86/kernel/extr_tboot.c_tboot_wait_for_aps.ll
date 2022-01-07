; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tboot.c_tboot_wait_for_aps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tboot.c_tboot_wait_for_aps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AP_WAIT_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@tboot = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"tboot wait for APs timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tboot_wait_for_aps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tboot_wait_for_aps(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @AP_WAIT_TIMEOUT, align 8
  %5 = load i64, i64* @HZ, align 8
  %6 = mul i64 %4, %5
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tboot, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @atomic_read(i32* %9)
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i1 [ false, %7 ], [ %15, %13 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = call i32 @mdelay(i32 1)
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %3, align 8
  br label %7

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tboot, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @atomic_read(i32* %29)
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %30, %31
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
