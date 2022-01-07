; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_ptrace.c_task_user_regset_view.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_ptrace.c_task_user_regset_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_regset_view = type { i32 }
%struct.task_struct = type { i32 }

@ELF_NGREG = common dso_local global i32 0, align 4
@ELF_NFPREG = common dso_local global i32 0, align 4
@user_parisc_native_view = common dso_local global %struct.user_regset_view zeroinitializer, align 4
@user_parisc_compat_view = common dso_local global %struct.user_regset_view zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.user_regset_view* @task_user_regset_view(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load i32, i32* @ELF_NGREG, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 0, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUILD_BUG_ON(i32 %6)
  %8 = load i32, i32* @ELF_NFPREG, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 1, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  ret %struct.user_regset_view* @user_parisc_native_view
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
