; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_set_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardinfo = type { i64 }

@MEMCTRLCMD_LEDCTRL = common dso_local global i64 0, align 8
@LED_FLIP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardinfo*, i32, i8)* @set_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_led(%struct.cardinfo* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.cardinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.cardinfo* %0, %struct.cardinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %8 = load %struct.cardinfo*, %struct.cardinfo** %4, align 8
  %9 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MEMCTRLCMD_LEDCTRL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call zeroext i8 @readb(i64 %12)
  store i8 %13, i8* %7, align 1
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @LED_FLIP, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  br label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 3, %27
  %29 = xor i32 %28, -1
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %35, %36
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %7, align 1
  br label %42

42:                                               ; preds = %26, %19
  %43 = load i8, i8* %7, align 1
  %44 = load %struct.cardinfo*, %struct.cardinfo** %4, align 8
  %45 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MEMCTRLCMD_LEDCTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writeb(i8 zeroext %43, i64 %48)
  ret void
}

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
