; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_kgdb_handle_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_kgdb_handle_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }

@SIGTRAP = common dso_local global i32 0, align 4
@BREAK_INSTR = common dso_local global i64 0, align 8
@BREAK_INSTR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @kgdb_handle_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgdb_handle_breakpoint(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %5 = call i64 @user_mode(%struct.pt_regs* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

8:                                                ; preds = %1
  %9 = load i32, i32* @SIGTRAP, align 4
  %10 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %11 = call i64 @kgdb_handle_exception(i32 1, i32 %9, i32 0, %struct.pt_regs* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %29

14:                                               ; preds = %8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BREAK_INSTR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i64, i64* @BREAK_INSTR_SIZE, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %22, %14
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %13, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @kgdb_handle_exception(i32, i32, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
