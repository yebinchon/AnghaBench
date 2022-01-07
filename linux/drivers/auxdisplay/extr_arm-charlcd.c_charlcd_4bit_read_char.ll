; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_4bit_read_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_4bit_read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i64, i64 }

@CHAR_RAW_VALID = common dso_local global i32 0, align 4
@CHAR_RAW = common dso_local global i64 0, align 8
@CHAR_RAW_CLEAR = common dso_local global i32 0, align 4
@CHAR_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charlcd*)* @charlcd_4bit_read_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charlcd_4bit_read_char(%struct.charlcd* %0) #0 {
  %2 = alloca %struct.charlcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %2, align 8
  %6 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %7 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %12 = call i32 @charlcd_wait_complete_irq(%struct.charlcd* %11)
  br label %42

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CHAR_RAW_VALID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 10
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %34

24:                                               ; preds = %22
  %25 = call i32 @udelay(i32 100)
  %26 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %27 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHAR_RAW, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %14

34:                                               ; preds = %22
  %35 = load i32, i32* @CHAR_RAW_CLEAR, align 4
  %36 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %37 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CHAR_RAW, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %34, %10
  %43 = call i32 @msleep(i32 1)
  %44 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %45 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CHAR_RD, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  %50 = and i32 %49, 240
  store i32 %50, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %61, %42
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @CHAR_RAW_VALID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 10
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i1 [ false, %51 ], [ %58, %56 ]
  br i1 %60, label %61, label %71

61:                                               ; preds = %59
  %62 = call i32 @udelay(i32 100)
  %63 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %64 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHAR_RAW, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %51

71:                                               ; preds = %59
  %72 = load i32, i32* @CHAR_RAW_CLEAR, align 4
  %73 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %74 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CHAR_RAW, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = call i32 @msleep(i32 1)
  %80 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %81 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CHAR_RD, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readl(i64 %84)
  %86 = ashr i32 %85, 4
  %87 = and i32 %86, 15
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @charlcd_wait_complete_irq(%struct.charlcd*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
