; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(i8* %0, %struct.pt_regs* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %9 = call i32 @TRAP(%struct.pt_regs* %8)
  %10 = icmp ne i32 %9, 256
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = call i64 @debugger(%struct.pt_regs* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %31

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %3
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = call i64 @oops_begin(%struct.pt_regs* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @__die(i8* %20, %struct.pt_regs* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @oops_end(i64 %27, %struct.pt_regs* %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %15
  ret void
}

declare dso_local i32 @TRAP(%struct.pt_regs*) #1

declare dso_local i64 @debugger(%struct.pt_regs*) #1

declare dso_local i64 @oops_begin(%struct.pt_regs*) #1

declare dso_local i64 @__die(i8*, %struct.pt_regs*, i64) #1

declare dso_local i32 @oops_end(i64, %struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
