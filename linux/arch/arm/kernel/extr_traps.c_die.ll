; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_traps.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@BUG_TRAP_TYPE_NONE = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Oops - BUG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(i8* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @BUG_TRAP_TYPE_NONE, align 4
  store i32 %10, i32* %7, align 4
  %11 = call i64 (...) @oops_begin()
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @SIGSEGV, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = call i32 @user_mode(%struct.pt_regs* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %21 = call i32 @report_bug(i32 %19, %struct.pt_regs* %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BUG_TRAP_TYPE_NONE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %31 = call i64 @__die(i8* %28, i32 %29, %struct.pt_regs* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @oops_end(i64 %35, %struct.pt_regs* %36, i32 %37)
  ret void
}

declare dso_local i64 @oops_begin(...) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @report_bug(i32, %struct.pt_regs*) #1

declare dso_local i64 @__die(i8*, i32, %struct.pt_regs*) #1

declare dso_local i32 @oops_end(i64, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
