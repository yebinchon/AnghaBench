; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_stacktrace.c_save_stack_address_nosched.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_stacktrace.c_save_stack_address_nosched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_trace = type { i64, i64, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @save_stack_address_nosched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_stack_address_nosched(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stack_trace*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.stack_trace*
  store %struct.stack_trace* %9, %struct.stack_trace** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %46

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @in_sched_functions(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %46

18:                                               ; preds = %13
  %19 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %20 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %25 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  br label %46

28:                                               ; preds = %18
  %29 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %30 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %33 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %39 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %42 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds i64, i64* %40, i64 %43
  store i64 %37, i64* %45, align 8
  br label %46

46:                                               ; preds = %12, %17, %23, %36, %28
  ret void
}

declare dso_local i64 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
