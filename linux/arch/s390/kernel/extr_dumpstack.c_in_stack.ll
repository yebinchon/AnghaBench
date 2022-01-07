; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_in_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_in_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_info = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.stack_info*, i32, i64, i64)* @in_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_stack(i64 %0, %struct.stack_info* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.stack_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store %struct.stack_info* %1, %struct.stack_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %5
  store i32 0, i32* %6, align 4
  br label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %23 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %26 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %29 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %20, %19
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
