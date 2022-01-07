; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack_32.c_in_softirq_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack_32.c_in_softirq_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_info = type { i64*, i64*, i64*, i32 }

@softirq_stack_ptr = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i32 0, align 4
@STACK_TYPE_SOFTIRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.stack_info*)* @in_softirq_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_softirq_stack(i64* %0, %struct.stack_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.stack_info*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.stack_info* %1, %struct.stack_info** %5, align 8
  %8 = load i32, i32* @softirq_stack_ptr, align 4
  %9 = call i64 @this_cpu_read(i32 %8)
  %10 = inttoptr i64 %9 to i64*
  store i64* %10, i64** %6, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i32, i32* @THREAD_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 8
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  store i64* %15, i64** %7, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = icmp ult i64* %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i64*, i64** %4, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = icmp ugt i64* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %39

24:                                               ; preds = %19
  %25 = load i32, i32* @STACK_TYPE_SOFTIRQ, align 4
  %26 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %27 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %30 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %29, i32 0, i32 0
  store i64* %28, i64** %30, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %33 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %32, i32 0, i32 1
  store i64* %31, i64** %33, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i64*
  %37 = load %struct.stack_info*, %struct.stack_info** %5, align 8
  %38 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %37, i32 0, i32 2
  store i64* %36, i64** %38, align 8
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %24, %23
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @this_cpu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
