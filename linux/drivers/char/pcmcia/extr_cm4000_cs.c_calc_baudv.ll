; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_calc_baudv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_calc_baudv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @calc_baudv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_baudv(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 372, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = ashr i32 %8, 4
  %10 = and i32 %9, 15
  switch i32 %10, label %27 [
    i32 0, label %11
    i32 1, label %12
    i32 2, label %13
    i32 3, label %14
    i32 4, label %15
    i32 5, label %16
    i32 6, label %17
    i32 7, label %18
    i32 8, label %20
    i32 9, label %22
    i32 10, label %23
    i32 11, label %24
    i32 12, label %25
    i32 13, label %26
  ]

11:                                               ; preds = %1
  store i32 372, i32* %3, align 4
  br label %29

12:                                               ; preds = %1
  store i32 372, i32* %3, align 4
  br label %29

13:                                               ; preds = %1
  store i32 558, i32* %3, align 4
  br label %29

14:                                               ; preds = %1
  store i32 744, i32* %3, align 4
  br label %29

15:                                               ; preds = %1
  store i32 1116, i32* %3, align 4
  br label %29

16:                                               ; preds = %1
  store i32 1488, i32* %3, align 4
  br label %29

17:                                               ; preds = %1
  store i32 1860, i32* %3, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %1
  store i32 512, i32* %3, align 4
  br label %29

23:                                               ; preds = %1
  store i32 768, i32* %3, align 4
  br label %29

24:                                               ; preds = %1
  store i32 1024, i32* %3, align 4
  br label %29

25:                                               ; preds = %1
  store i32 1536, i32* %3, align 4
  br label %29

26:                                               ; preds = %1
  store i32 2048, i32* %3, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %26, %25, %24, %23, %22, %20, %18, %17, %16, %15, %14, %13, %12, %11
  %30 = load i8, i8* %2, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 15
  switch i32 %32, label %45 [
    i32 0, label %33
    i32 1, label %35
    i32 2, label %36
    i32 3, label %37
    i32 4, label %38
    i32 5, label %39
    i32 6, label %40
    i32 7, label %41
    i32 8, label %43
    i32 9, label %44
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %47

36:                                               ; preds = %29
  store i32 2, i32* %4, align 4
  br label %47

37:                                               ; preds = %29
  store i32 4, i32* %4, align 4
  br label %47

38:                                               ; preds = %29
  store i32 8, i32* %4, align 4
  br label %47

39:                                               ; preds = %29
  store i32 16, i32* %4, align 4
  br label %47

40:                                               ; preds = %29
  store i32 32, i32* %4, align 4
  br label %47

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %29
  store i32 12, i32* %4, align 4
  br label %47

44:                                               ; preds = %29
  store i32 20, i32* %4, align 4
  br label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %44, %43, %41, %40, %39, %38, %37, %36, %35, %33
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = udiv i32 %48, %49
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
