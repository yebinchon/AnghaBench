; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lib/extr_dump_tlb.c_dump_tlb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lib/extr_dump_tlb.c_dump_tlb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Index    : %0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"PageMask : %0x\0A\00", align 1
@cpu_has_guestid = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"GuestCtl1: %0x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"EntryHi  : %0*lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"EntryLo0 : %0*lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"EntryLo1 : %0*lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Wired    : %0x\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"FrameMask: %0x\0A\00", align 1
@cpu_has_small_pages = common dso_local global i64 0, align 8
@cpu_has_rixi = common dso_local global i64 0, align 8
@cpu_has_xpa = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"PageGrain: %0x\0A\00", align 1
@cpu_has_htw = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"PWField  : %0*lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"PWSize   : %0*lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"PWCtl    : %0x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_tlb_regs() #0 {
  %1 = alloca i32, align 4
  store i32 16, i32* %1, align 4
  %2 = call i32 (...) @read_c0_index()
  %3 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = call i32 (...) @read_c0_pagemask()
  %5 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = load i64, i64* @cpu_has_guestid, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 (...) @read_c0_guestctl1()
  %10 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = call i32 (...) @read_c0_entryhi()
  %13 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 16, i32 %12)
  %14 = call i32 (...) @read_c0_entrylo0()
  %15 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 16, i32 %14)
  %16 = call i32 (...) @read_c0_entrylo1()
  %17 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 16, i32 %16)
  %18 = call i32 (...) @read_c0_wired()
  %19 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = call i32 (...) @current_cpu_type()
  switch i32 %20, label %24 [
    i32 131, label %21
    i32 130, label %21
    i32 129, label %21
    i32 128, label %21
  ]

21:                                               ; preds = %11, %11, %11, %11
  %22 = call i32 (...) @read_c0_framemask()
  %23 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %11, %21
  %25 = load i64, i64* @cpu_has_small_pages, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @cpu_has_rixi, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @cpu_has_xpa, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27, %24
  %34 = call i32 (...) @read_c0_pagegrain()
  %35 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @cpu_has_htw, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = call i32 (...) @read_c0_pwfield()
  %41 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 16, i32 %40)
  %42 = call i32 (...) @read_c0_pwsize()
  %43 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 16, i32 %42)
  %44 = call i32 (...) @read_c0_pwctl()
  %45 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @read_c0_pagemask(...) #1

declare dso_local i32 @read_c0_guestctl1(...) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @read_c0_entrylo0(...) #1

declare dso_local i32 @read_c0_entrylo1(...) #1

declare dso_local i32 @read_c0_wired(...) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @read_c0_framemask(...) #1

declare dso_local i32 @read_c0_pagegrain(...) #1

declare dso_local i32 @read_c0_pwfield(...) #1

declare dso_local i32 @read_c0_pwsize(...) #1

declare dso_local i32 @read_c0_pwctl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
