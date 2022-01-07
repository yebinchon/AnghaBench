; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lib/extr_r3k_dump_tlb.c_dump_tlb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lib/extr_r3k_dump_tlb.c_dump_tlb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Index    : %0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"EntryHi  : %0lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"EntryLo  : %0lx\0A\00", align 1
@r3k_have_wired_reg = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Wired    : %0x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_tlb_regs() #0 {
  %1 = call i32 (...) @read_c0_index()
  %2 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = call i32 (...) @read_c0_entryhi()
  %4 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = call i32 (...) @read_c0_entrylo0()
  %6 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i64, i64* @r3k_have_wired_reg, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 (...) @read_c0_wired()
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %9, %0
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @read_c0_entrylo0(...) #1

declare dso_local i32 @read_c0_wired(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
