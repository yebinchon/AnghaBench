; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_unwind_bc.c_unwind_get_return_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_unwind_bc.c_unwind_get_return_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unwind_get_return_address(%struct.unwind_state* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.unwind_state*, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %3, align 8
  %4 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %5 = call i64 @unwind_done(%struct.unwind_state* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %10 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @__kernel_text_address(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %16 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  br label %19

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i64 [ %17, %14 ], [ 0, %18 ]
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %19, %7
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i64 @unwind_done(%struct.unwind_state*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
