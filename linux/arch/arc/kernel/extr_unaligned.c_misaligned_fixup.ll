; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unaligned.c_misaligned_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unaligned.c_misaligned_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i64, i32 }
%struct.callee_regs = type { i32 }
%struct.disasm_state = type { i32, i32*, i64, i64, i32, i64 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@unaligned_enabled = common dso_local global i32 0, align 4
@no_unaligned_warning = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [231 x i8] c"%s(%d) made unaligned access which was emulated by kernel assist\0A. This can degrade application performance significantly\0A. To enable further logging of such instances, please \0A echo 0 > /proc/sys/kernel/ignore-unaligned-usertrap\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%s(%d): unaligned access to/from 0x%lx by PC: 0x%lx\0A\00", align 1
@STATUS_DE_MASK = common dso_local global i32 0, align 4
@PERF_COUNT_SW_ALIGNMENT_FAULTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Alignment trap: fault in fix-up %08lx at [<%08lx>]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @misaligned_fixup(i64 %0, %struct.pt_regs* %1, %struct.callee_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.callee_regs*, align 8
  %8 = alloca %struct.disasm_state, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store %struct.callee_regs* %2, %struct.callee_regs** %7, align 8
  %12 = load i32, i32* @TASK_COMM_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %17 = call i32 @user_mode(%struct.pt_regs* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @unaligned_enabled, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %3
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %140

23:                                               ; preds = %19
  %24 = load i64, i64* @no_unaligned_warning, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @current, align 4
  %28 = call i32 @get_task_comm(i8* %15, i32 %27)
  %29 = load i32, i32* @current, align 4
  %30 = call i32 @task_pid_nr(i32 %29)
  %31 = call i32 @pr_warn_once(i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  br label %42

32:                                               ; preds = %23
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @get_task_comm(i8* %15, i32 %33)
  %35 = load i32, i32* @current, align 4
  %36 = call i32 @task_pid_nr(i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36, i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %32, %26
  %43 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %47 = load %struct.callee_regs*, %struct.callee_regs** %7, align 8
  %48 = call i32 @disasm_instr(i32 %45, %struct.disasm_state* %8, i32 1, %struct.pt_regs* %46, %struct.callee_regs* %47)
  %49 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %8, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %133

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %8, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  br label %133

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %8, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %68 = load %struct.callee_regs*, %struct.callee_regs** %7, align 8
  %69 = call i32 @fixup_load(%struct.disasm_state* %8, %struct.pt_regs* %67, %struct.callee_regs* %68)
  br label %74

70:                                               ; preds = %62
  %71 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %72 = load %struct.callee_regs*, %struct.callee_regs** %7, align 8
  %73 = call i32 @fixup_store(%struct.disasm_state* %8, %struct.pt_regs* %71, %struct.callee_regs* %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %8, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %133

79:                                               ; preds = %74
  %80 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %81 = call i64 @delay_mode(%struct.pt_regs* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, -2
  %88 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @STATUS_DE_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %128

96:                                               ; preds = %79
  %97 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %8, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %100 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  %105 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %106 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %109 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %96
  %113 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %114 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %124 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, -1
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %117, %112, %96
  br label %128

128:                                              ; preds = %127, %83
  %129 = load i32, i32* @PERF_COUNT_SW_ALIGNMENT_FAULTS, align 4
  %130 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @perf_sw_event(i32 %129, i32 1, %struct.pt_regs* %130, i64 %131)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %140

133:                                              ; preds = %78, %61, %52
  %134 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %8, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %5, align 8
  %139 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %137, i64 %138)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %140

140:                                              ; preds = %133, %128, %22
  %141 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #2

declare dso_local i32 @pr_warn_once(i8*, i32, i32) #2

declare dso_local i32 @get_task_comm(i8*, i32) #2

declare dso_local i32 @task_pid_nr(i32) #2

declare dso_local i32 @pr_warn(i8*, i32, i32, i64, i32) #2

declare dso_local i32 @disasm_instr(i32, %struct.disasm_state*, i32, %struct.pt_regs*, %struct.callee_regs*) #2

declare dso_local i32 @fixup_load(%struct.disasm_state*, %struct.pt_regs*, %struct.callee_regs*) #2

declare dso_local i32 @fixup_store(%struct.disasm_state*, %struct.pt_regs*, %struct.callee_regs*) #2

declare dso_local i64 @delay_mode(%struct.pt_regs*) #2

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i64) #2

declare dso_local i32 @pr_err(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
