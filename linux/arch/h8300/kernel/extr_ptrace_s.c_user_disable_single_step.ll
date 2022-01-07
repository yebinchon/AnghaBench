; ModuleID = '/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace_s.c_user_disable_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace_s.c_user_disable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@PT_EXR = common dso_local global i32 0, align 4
@EXR_TRACE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_disable_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i8, align 1
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = load i32, i32* @PT_EXR, align 4
  %6 = call zeroext i8 @h8300_get_reg(%struct.task_struct* %4, i32 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8, i8* @EXR_TRACE, align 1
  %8 = zext i8 %7 to i32
  %9 = xor i32 %8, -1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, %9
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %3, align 1
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = load i32, i32* @PT_EXR, align 4
  %16 = load i8, i8* %3, align 1
  %17 = call i32 @h8300_put_reg(%struct.task_struct* %14, i32 %15, i8 zeroext %16)
  ret void
}

declare dso_local zeroext i8 @h8300_get_reg(%struct.task_struct*, i32) #1

declare dso_local i32 @h8300_put_reg(%struct.task_struct*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
