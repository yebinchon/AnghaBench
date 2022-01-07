; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c_dump_backtrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c_dump_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Backtrace: \00", align 1
@current = common dso_local global %struct.task_struct* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"no frame pointer\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid frame pointer 0x%08x\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"frame pointer underflow\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.task_struct*)* @dump_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_backtrace(%struct.pt_regs* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  store i32 1, i32* %7, align 4
  %8 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %12, %struct.task_struct** %4, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %15 = icmp ne %struct.pt_regs* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %18 = call i32 @frame_pointer(%struct.pt_regs* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %20 = call i32 @processor_mode(%struct.pt_regs* %19)
  store i32 %20, i32* %6, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %24 = icmp ne %struct.task_struct* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %27 = call i32 @thread_saved_fp(%struct.task_struct* %26)
  store i32 %27, i32* %5, align 4
  store i32 16, i32* %6, align 4
  br label %30

28:                                               ; preds = %21
  %29 = call i32 asm "mov $0, fp", "=r,~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %29, i32* %5, align 4
  store i32 16, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %25
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %53

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @verify_stack(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 0, i32* %7, align 4
  br label %52

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %47 = call i64 @end_of_stack(%struct.task_struct* %46)
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %34
  %54 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @c_backtrace(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @frame_pointer(%struct.pt_regs*) #1

declare dso_local i32 @processor_mode(%struct.pt_regs*) #1

declare dso_local i32 @thread_saved_fp(%struct.task_struct*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i64 @verify_stack(i32) #1

declare dso_local i64 @end_of_stack(%struct.task_struct*) #1

declare dso_local i32 @c_backtrace(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 929}
