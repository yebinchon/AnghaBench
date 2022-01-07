; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_stack_access_ok.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_stack_access_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i32, i32, %struct.stack_info }
%struct.stack_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_state*, i64, i64)* @stack_access_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stack_access_ok(%struct.unwind_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.unwind_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stack_info*, align 8
  %9 = alloca i8*, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %11 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %10, i32 0, i32 2
  store %struct.stack_info* %11, %struct.stack_info** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %9, align 8
  %14 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @on_stack(%struct.stack_info* %14, i8* %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %22 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %25 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %26 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %25, i32 0, i32 0
  %27 = call i64 @get_stack_info(i8* %20, i32 %23, %struct.stack_info* %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %31

30:                                               ; preds = %19, %3
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @on_stack(%struct.stack_info*, i8*, i64) #1

declare dso_local i64 @get_stack_info(i8*, i32, %struct.stack_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
