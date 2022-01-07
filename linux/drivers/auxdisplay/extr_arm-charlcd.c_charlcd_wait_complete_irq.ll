; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_wait_complete_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_wait_complete_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32, i64, i32 }

@CHARLCD_TIMEOUT = common dso_local global i32 0, align 4
@CHAR_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"wait_for_completion_interruptible_timeout() returned %d waiting for ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"charlcd controller timed out waiting for ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*)* @charlcd_wait_complete_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charlcd_wait_complete_irq(%struct.charlcd* %0) #0 {
  %2 = alloca %struct.charlcd*, align 8
  %3 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %2, align 8
  %4 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %5 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %4, i32 0, i32 2
  %6 = load i32, i32* @CHARLCD_TIMEOUT, align 4
  %7 = call i32 @wait_for_completion_interruptible_timeout(i32* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %9 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHAR_MASK, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 0, i64 %12)
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %18 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %30

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %27 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %16, %25, %22
  ret void
}

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
