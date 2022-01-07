; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_resume_execution.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_resume_execution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.pt_regs = type { i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.kprobe_ctlblk = type { i32 }
%struct.ftrace_insn = type { i64 }

@KPROBE_ON_FTRACE_CALL = common dso_local global i64 0, align 8
@MCOUNT_INSN_SIZE = common dso_local global i32 0, align 4
@FIXUP_PSW_NORMAL = common dso_local global i32 0, align 4
@FIXUP_BRANCH_NOT_TAKEN = common dso_local global i32 0, align 4
@FIXUP_RETURN_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kprobe*, %struct.pt_regs*)* @resume_execution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resume_execution(%struct.kprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.kprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.kprobe_ctlblk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ftrace_insn*, align 8
  %9 = alloca %struct.ftrace_insn, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kprobe* %0, %struct.kprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %12 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %12, %struct.kprobe_ctlblk** %5, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %18 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @probe_get_fixup_type(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %23 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %2
  %28 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %29 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ftrace_insn*
  store %struct.ftrace_insn* %31, %struct.ftrace_insn** %8, align 8
  %32 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %33 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ftrace_generate_call_insn(%struct.ftrace_insn* %9, i64 %34)
  %36 = load %struct.ftrace_insn*, %struct.ftrace_insn** %8, align 8
  %37 = getelementptr inbounds %struct.ftrace_insn, %struct.ftrace_insn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @KPROBE_ON_FTRACE_CALL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.ftrace_insn, %struct.ftrace_insn* %9, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = mul nsw i64 %43, 2
  %45 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %44, %46
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %51 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %53, i64* %57, align 8
  br label %58

58:                                               ; preds = %41, %27
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @FIXUP_PSW_NORMAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %66 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %69 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = ptrtoint i32* %71 to i64
  %73 = sub i64 %67, %72
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %64, %59
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @FIXUP_BRANCH_NOT_TAKEN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %76
  %82 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %83 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 8
  %89 = call i32 @insn_length(i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %92 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = ptrtoint i32* %94 to i64
  %96 = sub i64 %90, %95
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %81
  %101 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %102 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %103, %105
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %100, %81
  br label %108

108:                                              ; preds = %107, %76
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @FIXUP_RETURN_REGISTER, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %108
  %114 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %115 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 240
  %121 = ashr i32 %120, 4
  store i32 %121, i32* %11, align 4
  %122 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %123 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %126 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = ptrtoint i32* %128 to i64
  %130 = sub i64 %124, %129
  %131 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, %130
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %113, %108
  %140 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %141 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %142 = load i64, i64* %6, align 8
  %143 = call i32 @disable_singlestep(%struct.kprobe_ctlblk* %140, %struct.pt_regs* %141, i64 %142)
  ret void
}

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local i32 @probe_get_fixup_type(i32*) #1

declare dso_local i32 @ftrace_generate_call_insn(%struct.ftrace_insn*, i64) #1

declare dso_local i32 @insn_length(i32) #1

declare dso_local i32 @disable_singlestep(%struct.kprobe_ctlblk*, %struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
