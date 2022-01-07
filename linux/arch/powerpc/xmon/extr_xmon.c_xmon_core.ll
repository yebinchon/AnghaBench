; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_xmon_core.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_xmon_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32, i32 }
%struct.bpt = type { i64, i32*, i32 }

@JMP_BUF_LEN = common dso_local global i32 0, align 4
@tracing_enabled = common dso_local global i32 0, align 4
@in_xmon = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Exception %lx %s in xmon, returning to main loop\0A\00", align 1
@xmon_fault_jmp = common dso_local global i64** null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Stopped at breakpoint %tx (\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"WARNING: exception is not recoverable, can't continue\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"enter ? for help\0A\00", align 1
@MSR_IR = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@MSR_64BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Couldn't single-step %s instruction\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"rfid\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"mtmsrd\00", align 1
@EOF = common dso_local global i32 0, align 4
@MSR_DE = common dso_local global i32 0, align 4
@bus_error_jmp = common dso_local global i64* null, align 8
@catch_spr_faults = common dso_local global i64 0, align 8
@cpus_in_xmon = common dso_local global i32 0, align 4
@xmon_gate = common dso_local global i32 0, align 4
@xmon_owner = common dso_local global i32 0, align 4
@xmon_taken = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @xmon_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmon_core(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @JMP_BUF_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  %18 = call i32 (...) @hard_irq_disable()
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = call i32 (...) @tracing_is_on()
  store i32 %22, i32* @tracing_enabled, align 4
  %23 = call i32 (...) @tracing_off()
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.bpt* @in_breakpoint_table(i64 %27, i64* %9)
  store %struct.bpt* %28, %struct.bpt** %6, align 8
  %29 = load %struct.bpt*, %struct.bpt** %6, align 8
  %30 = icmp ne %struct.bpt* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.bpt*, %struct.bpt** %6, align 8
  %33 = getelementptr inbounds %struct.bpt, %struct.bpt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.bpt*, %struct.bpt** %6, align 8
  %40 = getelementptr inbounds %struct.bpt, %struct.bpt* %39, i32 0, i32 2
  %41 = call i32 @atomic_dec(i32* %40)
  br label %42

42:                                               ; preds = %31, %24
  %43 = call i32 (...) @remove_cpu_bpts()
  %44 = load i32, i32* @in_xmon, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %51 = call i32 @TRAP(%struct.pt_regs* %50)
  %52 = call i32 @getvecname(i32 %51)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i64**, i64*** @xmon_fault_jmp, align 8
  %55 = getelementptr inbounds i64*, i64** %54, i64 0
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 @longjmp(i64* %56, i32 1)
  br label %58

58:                                               ; preds = %46, %42
  %59 = call i64 @setjmp(i64* %15) #4
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = load i64**, i64*** @xmon_fault_jmp, align 8
  %63 = getelementptr inbounds i64*, i64** %62, i64 0
  store i64* %15, i64** %63, align 8
  store i32 1, i32* @in_xmon, align 4
  %64 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %65 = call i32 @excprint(%struct.pt_regs* %64)
  %66 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %67 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.bpt* @at_breakpoint(i64 %68)
  store %struct.bpt* %69, %struct.bpt** %6, align 8
  %70 = load %struct.bpt*, %struct.bpt** %6, align 8
  %71 = icmp ne %struct.bpt* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load %struct.bpt*, %struct.bpt** %6, align 8
  %74 = call i8* @BP_NUM(%struct.bpt* %73)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %77 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @xmon_print_symbol(i64 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %72, %61
  %81 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %82 = call i64 @unrecoverable_excp(%struct.pt_regs* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  %87 = call i32 (...) @remove_bpts()
  %88 = call i32 (...) @disable_surveillance()
  %89 = load %struct.bpt*, %struct.bpt** %6, align 8
  %90 = icmp ne %struct.bpt* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %93 = call i32 @TRAP(%struct.pt_regs* %92)
  %94 = icmp eq i32 %93, 3328
  br i1 %94, label %95, label %100

95:                                               ; preds = %91, %86
  %96 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @ppc_inst_dump(i64 %98, i32 1, i32 0)
  br label %100

100:                                              ; preds = %95, %91
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %58
  %103 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %104 = call i32 @cmds(%struct.pt_regs* %103)
  store i32 %104, i32* %5, align 4
  %105 = call i32 (...) @insert_bpts()
  store i32 0, i32* @in_xmon, align 4
  %106 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MSR_IR, align 4
  %110 = load i32, i32* @MSR_PR, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @MSR_64BIT, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %108, %113
  %115 = load i32, i32* @MSR_IR, align 4
  %116 = load i32, i32* @MSR_64BIT, align 4
  %117 = or i32 %115, %116
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %164

119:                                              ; preds = %102
  %120 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %121 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call %struct.bpt* @at_breakpoint(i64 %122)
  store %struct.bpt* %123, %struct.bpt** %6, align 8
  %124 = load %struct.bpt*, %struct.bpt** %6, align 8
  %125 = icmp ne %struct.bpt* %124, null
  br i1 %125, label %126, label %163

126:                                              ; preds = %119
  %127 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %128 = load %struct.bpt*, %struct.bpt** %6, align 8
  %129 = getelementptr inbounds %struct.bpt, %struct.bpt* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @emulate_step(%struct.pt_regs* %127, i32 %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %126
  %137 = load %struct.bpt*, %struct.bpt** %6, align 8
  %138 = getelementptr inbounds %struct.bpt, %struct.bpt* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = ptrtoint i32* %140 to i64
  %142 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %143 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.bpt*, %struct.bpt** %6, align 8
  %145 = getelementptr inbounds %struct.bpt, %struct.bpt* %144, i32 0, i32 2
  %146 = call i32 @atomic_inc(i32* %145)
  br label %162

147:                                              ; preds = %126
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load %struct.bpt*, %struct.bpt** %6, align 8
  %152 = getelementptr inbounds %struct.bpt, %struct.bpt* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @IS_RFID(i32 %155)
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %150, %147
  br label %162

162:                                              ; preds = %161, %136
  br label %163

163:                                              ; preds = %162, %119
  br label %164

164:                                              ; preds = %163, %102
  %165 = call i32 (...) @insert_cpu_bpts()
  %166 = call i32 (...) @touch_nmi_watchdog()
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @local_irq_restore(i64 %167)
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 88
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @EOF, align 4
  %174 = icmp ne i32 %172, %173
  br label %175

175:                                              ; preds = %171, %164
  %176 = phi i1 [ false, %164 ], [ %174, %171 ]
  %177 = zext i1 %176 to i32
  %178 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %178)
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @local_irq_save(i64) #2

declare dso_local i32 @hard_irq_disable(...) #2

declare dso_local i32 @tracing_is_on(...) #2

declare dso_local i32 @tracing_off(...) #2

declare dso_local %struct.bpt* @in_breakpoint_table(i64, i64*) #2

declare dso_local i32 @atomic_dec(i32*) #2

declare dso_local i32 @remove_cpu_bpts(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @getvecname(i32) #2

declare dso_local i32 @TRAP(%struct.pt_regs*) #2

declare dso_local i32 @longjmp(i64*, i32) #2

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i64*) #3

declare dso_local i32 @excprint(%struct.pt_regs*) #2

declare dso_local %struct.bpt* @at_breakpoint(i64) #2

declare dso_local i8* @BP_NUM(%struct.bpt*) #2

declare dso_local i32 @xmon_print_symbol(i64, i8*, i8*) #2

declare dso_local i64 @unrecoverable_excp(%struct.pt_regs*) #2

declare dso_local i32 @remove_bpts(...) #2

declare dso_local i32 @disable_surveillance(...) #2

declare dso_local i32 @ppc_inst_dump(i64, i32, i32) #2

declare dso_local i32 @cmds(%struct.pt_regs*) #2

declare dso_local i32 @insert_bpts(...) #2

declare dso_local i32 @emulate_step(%struct.pt_regs*, i32) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i64 @IS_RFID(i32) #2

declare dso_local i32 @insert_cpu_bpts(...) #2

declare dso_local i32 @touch_nmi_watchdog(...) #2

declare dso_local i32 @local_irq_restore(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
