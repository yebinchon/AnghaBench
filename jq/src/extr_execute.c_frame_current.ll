; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_frame_current.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_frame_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i64, %struct.bytecode* }
%struct.bytecode = type { i64, i64 }
%struct.jq_state = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame* (%struct.jq_state*)* @frame_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame* @frame_current(%struct.jq_state* %0) #0 {
  %2 = alloca %struct.jq_state*, align 8
  %3 = alloca %struct.frame*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.frame*, align 8
  %6 = alloca %struct.bytecode*, align 8
  store %struct.jq_state* %0, %struct.jq_state** %2, align 8
  %7 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %8 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %7, i32 0, i32 0
  %9 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %10 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.frame* @stack_block(i32* %8, i64 %11)
  store %struct.frame* %12, %struct.frame** %3, align 8
  %13 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %14 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %13, i32 0, i32 0
  %15 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %16 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64* @stack_block_next(i32* %14, i64 %17)
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %1
  %23 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %24 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call %struct.frame* @stack_block(i32* %24, i64 %25)
  store %struct.frame* %26, %struct.frame** %5, align 8
  %27 = load %struct.frame*, %struct.frame** %5, align 8
  %28 = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 1
  %29 = load %struct.bytecode*, %struct.bytecode** %28, align 8
  store %struct.bytecode* %29, %struct.bytecode** %6, align 8
  %30 = load %struct.frame*, %struct.frame** %3, align 8
  %31 = getelementptr inbounds %struct.frame, %struct.frame* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bytecode*, %struct.bytecode** %6, align 8
  %34 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %22
  %38 = load %struct.frame*, %struct.frame** %3, align 8
  %39 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bytecode*, %struct.bytecode** %6, align 8
  %42 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bytecode*, %struct.bytecode** %6, align 8
  %45 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = icmp slt i64 %40, %47
  br label %49

49:                                               ; preds = %37, %22
  %50 = phi i1 [ false, %22 ], [ %48, %37 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  br label %60

53:                                               ; preds = %1
  %54 = load %struct.frame*, %struct.frame** %3, align 8
  %55 = getelementptr inbounds %struct.frame, %struct.frame* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %53, %49
  %61 = load %struct.frame*, %struct.frame** %3, align 8
  ret %struct.frame* %61
}

declare dso_local %struct.frame* @stack_block(i32*, i64) #1

declare dso_local i64* @stack_block_next(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
