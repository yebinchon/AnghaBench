; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ftrace.c_ftrace_make_nop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ftrace.c_ftrace_make_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.dyn_ftrace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftrace_make_nop(%struct.module* %0, %struct.dyn_ftrace* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.dyn_ftrace*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.dyn_ftrace* %1, %struct.dyn_ftrace** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @ftrace_make_nop_check(%struct.dyn_ftrace* %10, i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %3
  %18 = call i8* (...) @ftrace_nop_replace()
  store i8* %18, i8** %9, align 8
  %19 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %6, align 8
  %20 = getelementptr inbounds %struct.dyn_ftrace, %struct.dyn_ftrace* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @ftrace_modify_code(i32 %21, i32* null, i8* %22, i32 0)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %17, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @ftrace_make_nop_check(%struct.dyn_ftrace*, i64) #1

declare dso_local i8* @ftrace_nop_replace(...) #1

declare dso_local i32 @ftrace_modify_code(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
