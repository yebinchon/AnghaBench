; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_implicit_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_implicit_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_SET_MAX_UNLOCK = common dso_local global i8 0, align 1
@ATA_SMART_READ_VALUES = common dso_local global i8 0, align 1
@ATA_SMART_READ_THRESHOLDS = common dso_local global i8 0, align 1
@ATA_DCO_IDENTIFY = common dso_local global i8 0, align 1
@ATA_DCO_SET = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8)* @implicit_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @implicit_sector(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %5, align 4
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  switch i32 %7, label %45 [
    i32 131, label %8
    i32 130, label %8
    i32 134, label %8
    i32 133, label %8
    i32 132, label %8
    i32 135, label %8
    i32 137, label %8
    i32 136, label %8
    i32 129, label %9
    i32 128, label %17
    i32 138, label %31
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %5, align 4
  br label %45

9:                                                ; preds = %2
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @ATA_SET_MAX_UNLOCK, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %9
  br label %45

17:                                               ; preds = %2
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @ATA_SMART_READ_VALUES, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @ATA_SMART_READ_THRESHOLDS, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %23
  br label %45

31:                                               ; preds = %2
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @ATA_DCO_IDENTIFY, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @ATA_DCO_SET, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %31
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %2, %44, %30, %16, %8
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
