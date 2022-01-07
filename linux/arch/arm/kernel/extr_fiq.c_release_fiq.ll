; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_fiq.c_release_fiq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_fiq.c_release_fiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiq_handler = type { %struct.fiq_handler*, i32, i64 (i32, i32)*, i32 }

@current_fiq = common dso_local global %struct.fiq_handler* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"%s FIQ trying to release %s FIQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_fiq(%struct.fiq_handler* %0) #0 {
  %2 = alloca %struct.fiq_handler*, align 8
  store %struct.fiq_handler* %0, %struct.fiq_handler** %2, align 8
  %3 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %4 = load %struct.fiq_handler*, %struct.fiq_handler** %2, align 8
  %5 = icmp ne %struct.fiq_handler* %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.fiq_handler*, %struct.fiq_handler** %2, align 8
  %8 = getelementptr inbounds %struct.fiq_handler, %struct.fiq_handler* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %11 = getelementptr inbounds %struct.fiq_handler, %struct.fiq_handler* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = call i32 (...) @dump_stack()
  br label %29

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %20, %15
  %17 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %18 = getelementptr inbounds %struct.fiq_handler, %struct.fiq_handler* %17, i32 0, i32 0
  %19 = load %struct.fiq_handler*, %struct.fiq_handler** %18, align 8
  store %struct.fiq_handler* %19, %struct.fiq_handler** @current_fiq, align 8
  br label %20

20:                                               ; preds = %16
  %21 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %22 = getelementptr inbounds %struct.fiq_handler, %struct.fiq_handler* %21, i32 0, i32 2
  %23 = load i64 (i32, i32)*, i64 (i32, i32)** %22, align 8
  %24 = load %struct.fiq_handler*, %struct.fiq_handler** @current_fiq, align 8
  %25 = getelementptr inbounds %struct.fiq_handler, %struct.fiq_handler* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 %23(i32 %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %16, label %29

29:                                               ; preds = %6, %20
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
