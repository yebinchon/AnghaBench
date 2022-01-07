; ModuleID = '/home/carl/AnghaBench/jq/src/extr_exec_stack.h_stack_push_block.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_exec_stack.h_stack_push_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i64, i64 }

@ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stack*, i64, i64)* @stack_push_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stack_push_block(%struct.stack* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.stack*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.stack* %0, %struct.stack** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @align_round_up(i64 %9)
  %11 = load i32, i32* @ALIGNMENT, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.stack*, %struct.stack** %4, align 8
  %14 = getelementptr inbounds %struct.stack, %struct.stack* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %15, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.stack*, %struct.stack** %4, align 8
  %21 = getelementptr inbounds %struct.stack, %struct.stack* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.stack*, %struct.stack** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @stack_reallocate(%struct.stack* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.stack*, %struct.stack** %4, align 8
  %31 = getelementptr inbounds %struct.stack, %struct.stack* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.stack*, %struct.stack** %4, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64* @stack_block_next(%struct.stack* %33, i64 %34)
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* %8, align 8
  ret i64 %36
}

declare dso_local i32 @align_round_up(i64) #1

declare dso_local i32 @stack_reallocate(%struct.stack*, i32) #1

declare dso_local i64* @stack_block_next(%struct.stack*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
