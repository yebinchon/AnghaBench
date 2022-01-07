; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32, i32, i64 }

@CHAR_STAT = common dso_local global i64 0, align 8
@CHAR_RAW_CLEAR = common dso_local global i32 0, align 4
@CHAR_RAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Spurious IRQ (%02x)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @charlcd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charlcd_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.charlcd*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.charlcd*
  store %struct.charlcd* %8, %struct.charlcd** %5, align 8
  %9 = load %struct.charlcd*, %struct.charlcd** %5, align 8
  %10 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHAR_STAT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = and i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @CHAR_RAW_CLEAR, align 4
  %17 = load %struct.charlcd*, %struct.charlcd** %5, align 8
  %18 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHAR_RAW, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.charlcd*, %struct.charlcd** %5, align 8
  %27 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %26, i32 0, i32 1
  %28 = call i32 @complete(i32* %27)
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.charlcd*, %struct.charlcd** %5, align 8
  %31 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
