; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/q40/extr_q40ints.c_q40_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/q40/extr_q40ints.c_q40_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@mext_disabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"q40_irq_enable : nested disable/enable\0A\00", align 1
@EXT_ENABLE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @q40_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp uge i32 %7, 5
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ule i32 %10, 15
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load i64, i64* @mext_disabled, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* @mext_disabled, align 8
  %15 = load i64, i64* @mext_disabled, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i64, i64* @mext_disabled, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EXT_ENABLE_REG, align 4
  %24 = call i32 @master_outb(i32 1, i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %9, %1
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @master_outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
