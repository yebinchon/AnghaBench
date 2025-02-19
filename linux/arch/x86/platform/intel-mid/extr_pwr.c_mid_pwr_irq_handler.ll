; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_mid_pwr_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_mid_pwr_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_pwr = type { i32, i64 }

@PM_ICS = common dso_local global i64 0, align 8
@PM_ICS_IP = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unexpected IRQ: %#x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mid_pwr_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mid_pwr_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mid_pwr*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mid_pwr*
  store %struct.mid_pwr* %9, %struct.mid_pwr** %6, align 8
  %10 = load %struct.mid_pwr*, %struct.mid_pwr** %6, align 8
  %11 = getelementptr inbounds %struct.mid_pwr, %struct.mid_pwr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PM_ICS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PM_ICS_IP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PM_ICS_IP, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.mid_pwr*, %struct.mid_pwr** %6, align 8
  %27 = getelementptr inbounds %struct.mid_pwr, %struct.mid_pwr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PM_ICS, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.mid_pwr*, %struct.mid_pwr** %6, align 8
  %33 = getelementptr inbounds %struct.mid_pwr, %struct.mid_pwr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @PM_ICS_INT_STATUS(i32 %35)
  %37 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %22, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @PM_ICS_INT_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
