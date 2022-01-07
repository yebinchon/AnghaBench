; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_convert_baudrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_convert_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @btrtl_convert_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrtl_convert_baudrate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 38969354, label %5
    i32 100093956, label %6
    i32 20484, label %7
    i32 76709890, label %8
    i32 17989634, label %8
    i32 20482, label %9
    i32 45057, label %10
    i32 76709889, label %11
    i32 86663169, label %12
    i32 20481, label %13
    i32 38977556, label %14
  ]

5:                                                ; preds = %1
  store i32 230400, i32* %2, align 4
  br label %16

6:                                                ; preds = %1
  store i32 921600, i32* %2, align 4
  br label %16

7:                                                ; preds = %1
  store i32 1000000, i32* %2, align 4
  br label %16

8:                                                ; preds = %1, %1
  store i32 1500000, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  store i32 2000000, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  store i32 2500000, i32* %2, align 4
  br label %16

11:                                               ; preds = %1
  store i32 3000000, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  store i32 3500000, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  store i32 4000000, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %1, %14
  store i32 115200, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
