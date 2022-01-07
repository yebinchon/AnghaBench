; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_frame_get_level.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_frame_get_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jq_state = type { i32, i32 }
%struct.frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jq_state*, i32)* @frame_get_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frame_get_level(%struct.jq_state* %0, i32 %1) #0 {
  %3 = alloca %struct.jq_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.frame*, align 8
  store %struct.jq_state* %0, %struct.jq_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.jq_state*, %struct.jq_state** %3, align 8
  %9 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.jq_state*, %struct.jq_state** %3, align 8
  %17 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.frame* @stack_block(i32* %17, i32 %18)
  store %struct.frame* %19, %struct.frame** %7, align 8
  %20 = load %struct.frame*, %struct.frame** %7, align 8
  %21 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.frame* @stack_block(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
