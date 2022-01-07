; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec.c_arch_crash_save_vmcoreinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec.c_arch_crash_save_vmcoreinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@lowcore_ptr = common dso_local global i32 0, align 4
@high_memory = common dso_local global i32 0, align 4
@NR_CPUS = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"SDMA=%lx\0A\00", align 1
@__sdma = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"EDMA=%lx\0A\00", align 1
@__edma = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"KERNELOFFSET=%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_crash_save_vmcoreinfo() #0 {
  %1 = load i32, i32* @lowcore_ptr, align 4
  %2 = call i32 @VMCOREINFO_SYMBOL(i32 %1)
  %3 = load i32, i32* @high_memory, align 4
  %4 = call i32 @VMCOREINFO_SYMBOL(i32 %3)
  %5 = load i32, i32* @lowcore_ptr, align 4
  %6 = load i32, i32* @NR_CPUS, align 4
  %7 = call i32 @VMCOREINFO_LENGTH(i32 %5, i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 4
  %9 = call i32 (...) @paddr_vmcoreinfo_note()
  %10 = call i32 @mem_assign_absolute(i32 %8, i32 %9)
  %11 = load i32, i32* @__sdma, align 4
  %12 = call i32 @vmcoreinfo_append_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @__edma, align 4
  %14 = call i32 @vmcoreinfo_append_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = call i32 (...) @kaslr_offset()
  %16 = call i32 @vmcoreinfo_append_str(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  ret void
}

declare dso_local i32 @VMCOREINFO_SYMBOL(i32) #1

declare dso_local i32 @VMCOREINFO_LENGTH(i32, i32) #1

declare dso_local i32 @mem_assign_absolute(i32, i32) #1

declare dso_local i32 @paddr_vmcoreinfo_note(...) #1

declare dso_local i32 @vmcoreinfo_append_str(i8*, i32) #1

declare dso_local i32 @kaslr_offset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
