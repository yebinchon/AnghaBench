; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_run_processes_parallel_tr2.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_run_processes_parallel_tr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"max:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_processes_parallel_tr2(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = call i32 (...) @online_cpus()
  br label %24

22:                                               ; preds = %7
  %23 = load i32, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @trace2_region_enter_printf(i8* %16, i8* %17, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @run_processes_parallel(i32 %27, i32 %28, i32 %29, i32 %30, i8* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @trace2_region_leave(i8* %33, i8* %34, i32* null)
  %36 = load i32, i32* %15, align 4
  ret i32 %36
}

declare dso_local i32 @trace2_region_enter_printf(i8*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @online_cpus(...) #1

declare dso_local i32 @run_processes_parallel(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @trace2_region_leave(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
