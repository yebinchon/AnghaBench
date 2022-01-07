; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_unwind_get_return_address_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_unwind_get_return_address_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @unwind_get_return_address_ptr(%struct.unwind_state* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.unwind_state*, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %3, align 8
  %4 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %5 = call i64 @unwind_done(%struct.unwind_state* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64* null, i64** %2, align 8
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %10 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %15 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  br label %23

18:                                               ; preds = %8
  %19 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %20 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i64* [ %17, %13 ], [ %22, %18 ]
  store i64* %24, i64** %2, align 8
  br label %25

25:                                               ; preds = %23, %7
  %26 = load i64*, i64** %2, align 8
  ret i64* %26
}

declare dso_local i64 @unwind_done(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
