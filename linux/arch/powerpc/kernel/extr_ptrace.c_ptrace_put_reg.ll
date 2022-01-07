; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_ptrace_put_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_ptrace_put_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@PT_MSR = common dso_local global i32 0, align 4
@PT_TRAP = common dso_local global i32 0, align 4
@PT_DSCR = common dso_local global i32 0, align 4
@PT_MAX_PUT_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_put_reg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %61

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PT_MSR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @set_user_msr(%struct.task_struct* %21, i64 %22)
  store i32 %23, i32* %4, align 4
  br label %61

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PT_TRAP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @set_user_trap(%struct.task_struct* %29, i64 %30)
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PT_DSCR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @set_user_dscr(%struct.task_struct* %37, i64 %38)
  store i32 %39, i32* %4, align 4
  br label %61

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PT_MAX_PUT_REG, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PT_MAX_PUT_REG, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @array_index_nospec(i32 %45, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to i64*
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %49, i64* %57, align 8
  store i32 0, i32* %4, align 4
  br label %61

58:                                               ; preds = %40
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %44, %36, %28, %20, %13
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @set_user_msr(%struct.task_struct*, i64) #1

declare dso_local i32 @set_user_trap(%struct.task_struct*, i64) #1

declare dso_local i32 @set_user_dscr(%struct.task_struct*, i64) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
