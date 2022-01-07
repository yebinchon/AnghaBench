; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_swap_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_swap_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_insn_args = type { i64, %struct.kprobe* }
%struct.kprobe = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ftrace_insn = type { i64, i32 }

@BREAKPOINT_INSTRUCTION = common dso_local global i32 0, align 4
@KPROBE_ON_FTRACE_NOP = common dso_local global i64 0, align 8
@KPROBE_ON_FTRACE_CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @swap_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_instruction(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.swap_insn_args*, align 8
  %4 = alloca %struct.ftrace_insn, align 8
  %5 = alloca %struct.ftrace_insn*, align 8
  %6 = alloca %struct.kprobe*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.swap_insn_args*
  store %struct.swap_insn_args* %9, %struct.swap_insn_args** %3, align 8
  %10 = load %struct.swap_insn_args*, %struct.swap_insn_args** %3, align 8
  %11 = getelementptr inbounds %struct.swap_insn_args, %struct.swap_insn_args* %10, i32 0, i32 1
  %12 = load %struct.kprobe*, %struct.kprobe** %11, align 8
  store %struct.kprobe* %12, %struct.kprobe** %6, align 8
  %13 = load %struct.swap_insn_args*, %struct.swap_insn_args** %3, align 8
  %14 = getelementptr inbounds %struct.swap_insn_args, %struct.swap_insn_args* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @BREAKPOINT_INSTRUCTION, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %21 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi i32 [ %18, %17 ], [ %22, %19 ]
  %25 = getelementptr inbounds %struct.ftrace_insn, %struct.ftrace_insn* %4, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  store i64 4, i64* %7, align 8
  %26 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %27 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %66

32:                                               ; preds = %23
  store i64 16, i64* %7, align 8
  %33 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %34 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.ftrace_insn*
  store %struct.ftrace_insn* %36, %struct.ftrace_insn** %5, align 8
  %37 = load %struct.swap_insn_args*, %struct.swap_insn_args** %3, align 8
  %38 = getelementptr inbounds %struct.swap_insn_args, %struct.swap_insn_args* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.ftrace_insn*, %struct.ftrace_insn** %5, align 8
  %43 = call i64 @is_ftrace_nop(%struct.ftrace_insn* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* @KPROBE_ON_FTRACE_NOP, align 8
  %47 = getelementptr inbounds %struct.ftrace_insn, %struct.ftrace_insn* %4, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  br label %51

48:                                               ; preds = %41
  %49 = load i64, i64* @KPROBE_ON_FTRACE_CALL, align 8
  %50 = getelementptr inbounds %struct.ftrace_insn, %struct.ftrace_insn* %4, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  br label %65

52:                                               ; preds = %32
  %53 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %54 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ftrace_generate_call_insn(%struct.ftrace_insn* %4, i64 %55)
  %57 = load %struct.ftrace_insn*, %struct.ftrace_insn** %5, align 8
  %58 = getelementptr inbounds %struct.ftrace_insn, %struct.ftrace_insn* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @KPROBE_ON_FTRACE_NOP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = call i32 @ftrace_generate_nop_insn(%struct.ftrace_insn* %4)
  br label %64

64:                                               ; preds = %62, %52
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %68 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @s390_kernel_write(i64 %69, %struct.ftrace_insn* %4, i64 %70)
  ret i32 0
}

declare dso_local i64 @is_ftrace_nop(%struct.ftrace_insn*) #1

declare dso_local i32 @ftrace_generate_call_insn(%struct.ftrace_insn*, i64) #1

declare dso_local i32 @ftrace_generate_nop_insn(%struct.ftrace_insn*) #1

declare dso_local i32 @s390_kernel_write(i64, %struct.ftrace_insn*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
