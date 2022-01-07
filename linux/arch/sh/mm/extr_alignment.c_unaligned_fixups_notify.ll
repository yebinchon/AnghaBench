; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_alignment.c_unaligned_fixups_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_alignment.c_unaligned_fixups_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }

@se_usermode = common dso_local global i32 0, align 4
@UM_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Fixing up unaligned userspace access in \22%s\22 pid=%d pc=0x%p ins=0x%04hx\0A\00", align 1
@se_kernmode_warn = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"Fixing up unaligned kernel access in \22%s\22 pid=%d pc=0x%p ins=0x%04hx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unaligned_fixups_notify(%struct.task_struct* %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %8 = call i64 @user_mode(%struct.pt_regs* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i32, i32* @se_usermode, align 4
  %12 = load i32, i32* @UM_WARN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = call i32 @task_pid_nr(%struct.task_struct* %19)
  %21 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %22 = call i64 @instruction_pointer(%struct.pt_regs* %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pr_notice_ratelimited(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i8* %23, i32 %24)
  br label %41

26:                                               ; preds = %10, %3
  %27 = load i64, i64* @se_kernmode_warn, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = call i32 @task_pid_nr(%struct.task_struct* %33)
  %35 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %36 = call i64 @instruction_pointer(%struct.pt_regs* %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pr_notice_ratelimited(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34, i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %26
  br label %41

41:                                               ; preds = %40, %15
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @pr_notice_ratelimited(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @task_pid_nr(%struct.task_struct*) #1

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
