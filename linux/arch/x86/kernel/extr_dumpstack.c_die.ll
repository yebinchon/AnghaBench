; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(i8* %0, %struct.pt_regs* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i64 (...) @oops_begin()
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @SIGSEGV, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @__die(i8* %11, %struct.pt_regs* %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @oops_end(i64 %18, %struct.pt_regs* %19, i32 %20)
  ret void
}

declare dso_local i64 @oops_begin(...) #1

declare dso_local i64 @__die(i8*, %struct.pt_regs*, i64) #1

declare dso_local i32 @oops_end(i64, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
