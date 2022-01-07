; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_fiq.c_claim_fiq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_fiq.c_claim_fiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiq_handler = type { i32 (i32, i32)*, %struct.fiq_handler*, i32 }

@current_fiq = common dso_local global %struct.fiq_handler* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @claim_fiq(%struct.fiq_handler* %0) #0 {
  %2 = alloca %struct.fiq_handler*, align 8
  %3 = alloca i32, align 4
  store %struct.fiq_handler* %0, %struct.fiq_handler** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %5 = icmp ne %struct.fiq_handler* %4, null
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %10 = getelementptr inbounds %struct.fiq_handler, %struct.fiq_handler* %9, i32 0, i32 0
  %11 = load i32 (i32, i32)*, i32 (i32, i32)** %10, align 8
  %12 = icmp ne i32 (i32, i32)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %15 = getelementptr inbounds %struct.fiq_handler, %struct.fiq_handler* %14, i32 0, i32 0
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %18 = getelementptr inbounds %struct.fiq_handler, %struct.fiq_handler* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19, i32 1)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %13, %6
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %27 = load %struct.fiq_handler*, %struct.fiq_handler** %2, align 8
  %28 = getelementptr inbounds %struct.fiq_handler, %struct.fiq_handler* %27, i32 0, i32 1
  store %struct.fiq_handler* %26, %struct.fiq_handler** %28, align 8
  %29 = load %struct.fiq_handler*, %struct.fiq_handler** %2, align 8
  store %struct.fiq_handler* %29, %struct.fiq_handler** @current_fiq, align 8
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
