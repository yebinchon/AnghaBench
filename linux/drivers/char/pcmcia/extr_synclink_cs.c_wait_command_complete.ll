; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_wait_command_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_wait_command_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STAR = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8)* @wait_command_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_command_complete(i32* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32*, i32** %4, align 8
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i64
  %11 = load i64, i64* @STAR, align 8
  %12 = add nsw i64 %10, %11
  %13 = trunc i64 %12 to i8
  %14 = call i32 @read_reg(i32* %8, i8 zeroext %13)
  %15 = load i32, i32* @BIT2, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  %19 = call i32 @udelay(i32 1)
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = icmp eq i32 %20, 1000
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %26

24:                                               ; preds = %18
  br label %7

25:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @read_reg(i32*, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
