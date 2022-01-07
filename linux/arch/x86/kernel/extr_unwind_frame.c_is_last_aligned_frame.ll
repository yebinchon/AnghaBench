; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_is_last_aligned_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_is_last_aligned_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_state*)* @is_last_aligned_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_last_aligned_frame(%struct.unwind_state* %0) #0 {
  %2 = alloca %struct.unwind_state*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %2, align 8
  %5 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %6 = call i64* @last_frame(%struct.unwind_state* %5)
  store i64* %6, i64** %3, align 8
  %7 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %8 = call i64* @last_aligned_frame(%struct.unwind_state* %7)
  store i64* %8, i64** %4, align 8
  %9 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %10 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = icmp eq i64* %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br label %22

22:                                               ; preds = %14, %1
  %23 = phi i1 [ false, %1 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64* @last_frame(%struct.unwind_state*) #1

declare dso_local i64* @last_aligned_frame(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
