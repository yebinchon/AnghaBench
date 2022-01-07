; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_L = common dso_local global i64 0, align 8
@DATA_H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16)* @bt3c_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt3c_put(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = and i32 %6, 255
  %8 = trunc i32 %7 to i16
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* @DATA_L, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i16 zeroext %8, i64 %12)
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i16
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @DATA_H, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i16 zeroext %18, i64 %22)
  ret void
}

declare dso_local i32 @outb(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
