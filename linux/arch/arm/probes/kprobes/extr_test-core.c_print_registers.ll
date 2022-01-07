; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_print_registers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_print_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"r0  %08lx | r1  %08lx | r2  %08lx | r3  %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"r4  %08lx | r5  %08lx | r6  %08lx | r7  %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"r8  %08lx | r9  %08lx | r10 %08lx | r11 %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"r12 %08lx | sp  %08lx | lr  %08lx | pc  %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cpsr %08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @print_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_registers(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %3, i32 0, i32 16
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 15
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 14
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14)
  %16 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %53)
  %55 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
