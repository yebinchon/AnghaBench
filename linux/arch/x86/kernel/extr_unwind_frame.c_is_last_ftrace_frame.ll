; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_is_last_ftrace_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_is_last_ftrace_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_state*)* @is_last_ftrace_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_last_ftrace_frame(%struct.unwind_state* %0) #0 {
  %2 = alloca %struct.unwind_state*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %2, align 8
  %5 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %6 = call i64* @last_frame(%struct.unwind_state* %5)
  store i64* %6, i64** %3, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 -3
  store i64* %8, i64** %4, align 8
  %9 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %10 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = icmp eq i64* %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %16 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %20 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %14
  %26 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %27 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %32 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %30, %35
  br label %37

37:                                               ; preds = %25, %14, %1
  %38 = phi i1 [ false, %14 ], [ false, %1 ], [ %36, %25 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i64* @last_frame(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
