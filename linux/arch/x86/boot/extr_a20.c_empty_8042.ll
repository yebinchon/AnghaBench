; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_a20.c_empty_8042.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_a20.c_empty_8042.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_8042_LOOPS = common dso_local global i32 0, align 4
@MAX_8042_FF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @empty_8042 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empty_8042() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_8042_LOOPS, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @MAX_8042_FF, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %35, %0
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = call i32 (...) @io_delay()
  %13 = call i32 @inb(i32 100)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 -1, i32* %1, align 4
  br label %37

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 (...) @io_delay()
  %28 = call i32 @inb(i32 96)
  br label %35

29:                                               ; preds = %22
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %37

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %26
  br label %7

36:                                               ; preds = %7
  store i32 -1, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %33, %20
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @io_delay(...) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
