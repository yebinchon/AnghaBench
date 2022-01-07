; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_frame_pop.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_frame_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jq_state = type { i32, i32 }
%struct.frame = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jq_state*)* @frame_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_pop(%struct.jq_state* %0) #0 {
  %2 = alloca %struct.jq_state*, align 8
  %3 = alloca %struct.frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jq_state* %0, %struct.jq_state** %2, align 8
  %6 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %7 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %11 = call %struct.frame* @frame_current(%struct.jq_state* %10)
  store %struct.frame* %11, %struct.frame** %3, align 8
  %12 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %13 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %12, i32 0, i32 1
  %14 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %15 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @stack_pop_will_free(i32* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.frame*, %struct.frame** %3, align 8
  %21 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %35, %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32* @frame_local_var(%struct.jq_state* %30, i32 %31, i32 0)
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @jv_free(i32 %33)
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %41 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %40, i32 0, i32 1
  %42 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %43 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.frame*, %struct.frame** %3, align 8
  %46 = getelementptr inbounds %struct.frame, %struct.frame* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i32 @frame_size(%struct.TYPE_2__* %47)
  %49 = call i32 @stack_pop_block(i32* %41, i32 %44, i32 %48)
  %50 = load %struct.jq_state*, %struct.jq_state** %2, align 8
  %51 = getelementptr inbounds %struct.jq_state, %struct.jq_state* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.frame* @frame_current(%struct.jq_state*) #1

declare dso_local i64 @stack_pop_will_free(i32*, i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32* @frame_local_var(%struct.jq_state*, i32, i32) #1

declare dso_local i32 @stack_pop_block(i32*, i32, i32) #1

declare dso_local i32 @frame_size(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
