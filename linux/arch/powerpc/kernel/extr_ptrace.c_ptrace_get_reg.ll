; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_ptrace_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_ptrace_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@PT_MSR = common dso_local global i32 0, align 4
@PT_DSCR = common dso_local global i32 0, align 4
@PT_SOFTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_get_reg(%struct.task_struct* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %57

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PT_MSR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = call i64 @get_user_msr(%struct.task_struct* %25)
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  store i32 0, i32* %4, align 4
  br label %57

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PT_DSCR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = call i32 @get_user_dscr(%struct.task_struct* %33, i64* %34)
  store i32 %35, i32* %4, align 4
  br label %57

36:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @array_index_nospec(i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to i64*
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %4, align 4
  br label %57

54:                                               ; preds = %36
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %40, %32, %24, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @get_user_msr(%struct.task_struct*) #1

declare dso_local i32 @get_user_dscr(%struct.task_struct*, i64*) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
