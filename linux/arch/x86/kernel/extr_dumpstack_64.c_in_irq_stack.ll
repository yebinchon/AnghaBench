; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack_64.c_in_irq_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack_64.c_in_irq_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_info = type { i64*, i64*, i64*, i32 }

@hardirq_stack_ptr = common dso_local global i32 0, align 4
@IRQ_STACK_SIZE = common dso_local global i32 0, align 4
@STACK_TYPE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.stack_info*)* @in_irq_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_irq_stack(i64* %0, %struct.stack_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.stack_info*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.stack_info* %1, %struct.stack_info** %5, align 8
  %8 = load i32, i32* @hardirq_stack_ptr, align 4
  %9 = call i64 @this_cpu_read(i32 %8)
  %10 = inttoptr i64 %9 to i64*
  store i64* %10, i64** %6, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i32, i32* @IRQ_STACK_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds i64, i64* %11, i64 %15
  store i64* %16, i64** %7, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = icmp ult i64* %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i64*, i64** %4, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = icmp uge i64* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %41

25:                                               ; preds = %20
  %26 = load i32, i32* @STACK_TYPE_IRQ, align 4
  %27 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %28 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %31 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %30, i32 0, i32 0
  store i64* %29, i64** %31, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %34 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %33, i32 0, i32 1
  store i64* %32, i64** %34, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 -1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i64*
  %39 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %40 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %39, i32 0, i32 2
  store i64* %38, i64** %40, align 8
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %25, %24
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @this_cpu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
