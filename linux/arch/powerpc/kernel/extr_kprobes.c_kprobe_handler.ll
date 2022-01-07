; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_kprobe_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_kprobe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64 }
%struct.kprobe = type { i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, %struct.TYPE_2__, i64 (%struct.kprobe*, %struct.pt_regs*)* }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.kprobe_ctlblk = type { i64, i32 }

@KPROBE_HIT_SS = common dso_local global i64 0, align 8
@MSR_SINGLESTEP = common dso_local global i32 0, align 4
@KPROBE_REENTER = common dso_local global i64 0, align 8
@BREAKPOINT_INSTRUCTION = common dso_local global i32 0, align 4
@KPROBE_HIT_ACTIVE = common dso_local global i64 0, align 8
@KPROBE_HIT_SSDONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kprobe_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.kprobe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kprobe_ctlblk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %6, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = call i64 @user_mode(%struct.pt_regs* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %188

19:                                               ; preds = %1
  %20 = call i32 (...) @preempt_disable()
  %21 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %21, %struct.kprobe_ctlblk** %7, align 8
  %22 = call i64 (...) @kprobe_running()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.kprobe* @get_kprobe(i32* %25)
  store %struct.kprobe* %26, %struct.kprobe** %4, align 8
  %27 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %28 = icmp ne %struct.kprobe* %27, null
  br i1 %28, label %29, label %90

29:                                               ; preds = %24
  %30 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %31 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %36 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @KPROBE_HIT_SS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @is_trap(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* @MSR_SINGLESTEP, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %52 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %185

58:                                               ; preds = %40, %29
  %59 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %60 = call i32 @save_previous_kprobe(%struct.kprobe_ctlblk* %59)
  %61 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %63 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %64 = call i32 @set_current_kprobe(%struct.kprobe* %61, %struct.pt_regs* %62, %struct.kprobe_ctlblk* %63)
  %65 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %66 = call i32 @kprobes_inc_nmissed_count(%struct.kprobe* %65)
  %67 = load i64, i64* @KPROBE_REENTER, align 8
  %68 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %69 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %71 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %58
  %76 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %78 = call i32 @try_to_emulate(%struct.kprobe* %76, %struct.pt_regs* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %83 = call i32 @restore_previous_kprobe(%struct.kprobe_ctlblk* %82)
  %84 = call i32 (...) @preempt_enable_no_resched()
  store i32 1, i32* %2, align 4
  br label %188

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %58
  %87 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %88 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %89 = call i32 @prepare_singlestep(%struct.kprobe* %87, %struct.pt_regs* %88)
  store i32 1, i32* %2, align 4
  br label %188

90:                                               ; preds = %24
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BREAKPOINT_INSTRUCTION, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @is_trap(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %185

102:                                              ; preds = %95
  store i32 1, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %90
  br label %104

104:                                              ; preds = %103
  br label %185

105:                                              ; preds = %19
  %106 = load i32*, i32** %6, align 8
  %107 = call %struct.kprobe* @get_kprobe(i32* %106)
  store %struct.kprobe* %107, %struct.kprobe** %4, align 8
  %108 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %109 = icmp ne %struct.kprobe* %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @BREAKPOINT_INSTRUCTION, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @is_trap(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %185

122:                                              ; preds = %115
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %110
  br label %185

124:                                              ; preds = %105
  %125 = load i64, i64* @KPROBE_HIT_ACTIVE, align 8
  %126 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %127 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %129 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %130 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %131 = call i32 @set_current_kprobe(%struct.kprobe* %128, %struct.pt_regs* %129, %struct.kprobe_ctlblk* %130)
  %132 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %133 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %132, i32 0, i32 2
  %134 = load i64 (%struct.kprobe*, %struct.pt_regs*)*, i64 (%struct.kprobe*, %struct.pt_regs*)** %133, align 8
  %135 = icmp ne i64 (%struct.kprobe*, %struct.pt_regs*)* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %124
  %137 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %138 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %137, i32 0, i32 2
  %139 = load i64 (%struct.kprobe*, %struct.pt_regs*)*, i64 (%struct.kprobe*, %struct.pt_regs*)** %138, align 8
  %140 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %141 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %142 = call i64 %139(%struct.kprobe* %140, %struct.pt_regs* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = call i32 (...) @reset_current_kprobe()
  %146 = call i32 (...) @preempt_enable_no_resched()
  store i32 1, i32* %2, align 4
  br label %188

147:                                              ; preds = %136, %124
  %148 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %149 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sge i64 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %147
  %154 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %155 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %156 = call i32 @try_to_emulate(%struct.kprobe* %154, %struct.pt_regs* %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %153
  %160 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %161 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %160, i32 0, i32 0
  %162 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %161, align 8
  %163 = icmp ne i32 (%struct.kprobe*, %struct.pt_regs*, i32)* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %166 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %165, i32 0, i32 0
  %167 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %166, align 8
  %168 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %169 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %170 = call i32 %167(%struct.kprobe* %168, %struct.pt_regs* %169, i32 0)
  br label %171

171:                                              ; preds = %164, %159
  %172 = load i64, i64* @KPROBE_HIT_SSDONE, align 8
  %173 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %174 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = call i32 (...) @reset_current_kprobe()
  %176 = call i32 (...) @preempt_enable_no_resched()
  store i32 1, i32* %2, align 4
  br label %188

177:                                              ; preds = %153
  br label %178

178:                                              ; preds = %177, %147
  %179 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %180 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %181 = call i32 @prepare_singlestep(%struct.kprobe* %179, %struct.pt_regs* %180)
  %182 = load i64, i64* @KPROBE_HIT_SS, align 8
  %183 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %184 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  store i32 1, i32* %2, align 4
  br label %188

185:                                              ; preds = %123, %121, %104, %101, %44
  %186 = call i32 (...) @preempt_enable_no_resched()
  %187 = load i32, i32* %5, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %185, %178, %171, %144, %86, %81, %18
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local i64 @kprobe_running(...) #1

declare dso_local %struct.kprobe* @get_kprobe(i32*) #1

declare dso_local i64 @is_trap(i32) #1

declare dso_local i32 @save_previous_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @set_current_kprobe(%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*) #1

declare dso_local i32 @kprobes_inc_nmissed_count(%struct.kprobe*) #1

declare dso_local i32 @try_to_emulate(%struct.kprobe*, %struct.pt_regs*) #1

declare dso_local i32 @restore_previous_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @prepare_singlestep(%struct.kprobe*, %struct.pt_regs*) #1

declare dso_local i32 @reset_current_kprobe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
