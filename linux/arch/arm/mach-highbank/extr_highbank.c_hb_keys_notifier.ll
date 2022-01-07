; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-highbank/extr_highbank.c_hb_keys_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-highbank/extr_highbank.c_hb_keys_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@KEY_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @hb_keys_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_keys_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 4096
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @KEY_POWER, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @orderly_poweroff(i32 0)
  br label %27

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @ctrl_alt_del()
  br label %26

26:                                               ; preds = %24, %21
  br label %27

27:                                               ; preds = %26, %19
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @orderly_poweroff(i32) #1

declare dso_local i32 @ctrl_alt_del(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
