; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_process.c_show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_process.c_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"Format %02x  Vector: %04x  PC: %08lx  Status: %04x    %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"ORIG_D0: %08lx  D0: %08lx  A2: %08lx  A1: %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"A0: %08lx  D5: %08lx  D4: %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"D3: %08lx  D2: %08lx  D1: %08lx\0A\00", align 1
@PS_S = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"USP: %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %3, i32 0, i32 13
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 12
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (...) @print_tainted()
  %16 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14, i32 %15)
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PS_S, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %1
  %57 = call i32 (...) @rdusp()
  %58 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %1
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local i32 @rdusp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
