; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_in_irq_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_in_irq_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.stack_info = type { i32 }

@STACK_FRAME_OVERHEAD = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STACK_TYPE_IRQ = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.stack_info*)* @in_irq_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_irq_stack(i64 %0, %struct.stack_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.stack_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.stack_info* %1, %struct.stack_info** %4, align 8
  %7 = load i32, i32* @STACK_FRAME_OVERHEAD, align 4
  %8 = sext i32 %7 to i64
  %9 = add i64 %8, 4
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.stack_info*, %struct.stack_info** %4, align 8
  %15 = load i32, i32* @STACK_TYPE_IRQ, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @THREAD_SIZE, align 8
  %18 = sub i64 %16, %17
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @in_stack(i64 %13, %struct.stack_info* %14, i32 %15, i64 %18, i64 %19)
  ret i32 %20
}

declare dso_local i32 @in_stack(i64, %struct.stack_info*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
