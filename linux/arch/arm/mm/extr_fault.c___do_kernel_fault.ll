; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_fault.c___do_kernel_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_fault.c___do_kernel_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"8<--- cut here ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Unable to handle kernel %s at virtual address %08lx\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"NULL pointer dereference\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"paging request\00", align 1
@KERN_ALERT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Oops\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i32, %struct.pt_regs*)* @__do_kernel_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_kernel_fault(%struct.mm_struct* %0, i64 %1, i32 %2, %struct.pt_regs* %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_regs*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %10 = call i64 @fixup_exception(%struct.pt_regs* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %33

13:                                               ; preds = %4
  %14 = call i32 @bust_spinlocks(i32 1)
  %15 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = icmp ult i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %20, i64 %21)
  %23 = load i32, i32* @KERN_ALERT, align 4
  %24 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @show_pte(i32 %23, %struct.mm_struct* %24, i64 %25)
  %27 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @die(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.pt_regs* %27, i32 %28)
  %30 = call i32 @bust_spinlocks(i32 0)
  %31 = load i32, i32* @SIGKILL, align 4
  %32 = call i32 @do_exit(i32 %31)
  br label %33

33:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @fixup_exception(%struct.pt_regs*) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i32 @show_pte(i32, %struct.mm_struct*, i64) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
