; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_traps.c_do_fp_trap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_traps.c_do_fp_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@FPE_FLTINV = common dso_local global i32 0, align 4
@FPE_FLTDIV = common dso_local global i32 0, align 4
@FPE_FLTOVF = common dso_local global i32 0, align 4
@FPE_FLTUND = common dso_local global i32 0, align 4
@FPE_FLTRES = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"floating point exception\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @do_fp_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fp_trap(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 32768
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @FPE_FLTINV, align 4
  store i32 %14, i32* %5, align 4
  br label %43

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 16384
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @FPE_FLTDIV, align 4
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 8192
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @FPE_FLTOVF, align 4
  store i32 %26, i32* %5, align 4
  br label %41

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 4096
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @FPE_FLTUND, align 4
  store i32 %32, i32* %5, align 4
  br label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 2048
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @FPE_FLTRES, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %33
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %40, %25
  br label %42

42:                                               ; preds = %41, %19
  br label %43

43:                                               ; preds = %42, %13
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %46 = load i32, i32* @SIGFPE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @do_trap(%struct.pt_regs* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @do_trap(%struct.pt_regs*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
