; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atmel-tcb.c_tc_clksrc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atmel-tcb.c_tc_clksrc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.clocksource = type { i32 }

@tcb_cache = common dso_local global %struct.TYPE_3__* null, align 8
@tcaddr = common dso_local global i64 0, align 8
@CMR = common dso_local global i32 0, align 4
@RC = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4
@RB = common dso_local global i32 0, align 4
@IDR = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@ATMEL_TC_CLKEN = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@bmr_cache = common dso_local global i32 0, align 4
@ATMEL_TC_BMR = common dso_local global i64 0, align 8
@ATMEL_TC_SYNC = common dso_local global i32 0, align 4
@ATMEL_TC_BCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clocksource*)* @tc_clksrc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_clksrc_resume(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %80, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcb_cache, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %83

9:                                                ; preds = %4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcb_cache, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* @tcaddr, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CMR, align 4
  %19 = call i64 @ATMEL_TC_REG(i32 %17, i32 %18)
  %20 = add nsw i64 %16, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcb_cache, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @tcaddr, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @RC, align 4
  %31 = call i64 @ATMEL_TC_REG(i32 %29, i32 %30)
  %32 = add nsw i64 %28, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i64, i64* @tcaddr, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @RA, align 4
  %37 = call i64 @ATMEL_TC_REG(i32 %35, i32 %36)
  %38 = add nsw i64 %34, %37
  %39 = call i32 @writel(i32 0, i64 %38)
  %40 = load i64, i64* @tcaddr, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @RB, align 4
  %43 = call i64 @ATMEL_TC_REG(i32 %41, i32 %42)
  %44 = add nsw i64 %40, %43
  %45 = call i32 @writel(i32 0, i64 %44)
  %46 = load i64, i64* @tcaddr, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @IDR, align 4
  %49 = call i64 @ATMEL_TC_REG(i32 %47, i32 %48)
  %50 = add nsw i64 %46, %49
  %51 = call i32 @writel(i32 255, i64 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcb_cache, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* @tcaddr, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @IER, align 4
  %61 = call i64 @ATMEL_TC_REG(i32 %59, i32 %60)
  %62 = add nsw i64 %58, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcb_cache, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %9
  %72 = load i32, i32* @ATMEL_TC_CLKEN, align 4
  %73 = load i64, i64* @tcaddr, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @CCR, align 4
  %76 = call i64 @ATMEL_TC_REG(i32 %74, i32 %75)
  %77 = add nsw i64 %73, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  br label %79

79:                                               ; preds = %71, %9
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %4

83:                                               ; preds = %4
  %84 = load i32, i32* @bmr_cache, align 4
  %85 = load i64, i64* @tcaddr, align 8
  %86 = load i64, i64* @ATMEL_TC_BMR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %84, i64 %87)
  %89 = load i32, i32* @ATMEL_TC_SYNC, align 4
  %90 = load i64, i64* @tcaddr, align 8
  %91 = load i64, i64* @ATMEL_TC_BCR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %89, i64 %92)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @ATMEL_TC_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
