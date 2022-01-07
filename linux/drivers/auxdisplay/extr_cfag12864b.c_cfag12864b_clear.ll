; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_cfag12864b.c_cfag12864b_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_cfag12864b.c_cfag12864b_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFAG12864B_PAGES = common dso_local global i8 0, align 1
@CFAG12864B_ADDRESSES = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cfag12864b_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfag12864b_clear() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = call i32 @cfag12864b_setcontrollers(i32 1, i32 1)
  store i8 0, i8* %1, align 1
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i8, i8* %1, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @CFAG12864B_PAGES, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %4
  %11 = load i8, i8* %1, align 1
  %12 = call i32 @cfag12864b_page(i8 zeroext %11)
  %13 = call i32 @cfag12864b_address(i32 0)
  store i8 0, i8* %2, align 1
  br label %14

14:                                               ; preds = %22, %10
  %15 = load i8, i8* %2, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @CFAG12864B_ADDRESSES, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = call i32 @cfag12864b_writebyte(i32 0)
  br label %22

22:                                               ; preds = %20
  %23 = load i8, i8* %2, align 1
  %24 = add i8 %23, 1
  store i8 %24, i8* %2, align 1
  br label %14

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i8, i8* %1, align 1
  %28 = add i8 %27, 1
  store i8 %28, i8* %1, align 1
  br label %4

29:                                               ; preds = %4
  ret void
}

declare dso_local i32 @cfag12864b_setcontrollers(i32, i32) #1

declare dso_local i32 @cfag12864b_page(i8 zeroext) #1

declare dso_local i32 @cfag12864b_address(i32) #1

declare dso_local i32 @cfag12864b_writebyte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
