; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_insn.c_zpci_mod_fc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_insn.c_zpci_mod_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_fib = type { i32 }

@ZPCI_INSN_BUSY_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpci_mod_fc(i32 %0, %struct.zpci_fib* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zpci_fib*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.zpci_fib* %1, %struct.zpci_fib** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %8

8:                                                ; preds = %19, %3
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.zpci_fib*, %struct.zpci_fib** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @__mpcifc(i32 %9, %struct.zpci_fib* %10, i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @ZPCI_INSN_BUSY_DELAY, align 4
  %17 = call i32 @msleep(i32 %16)
  br label %18

18:                                               ; preds = %15, %8
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %8, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @zpci_err_insn(i32 %26, i32 %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @__mpcifc(i32, %struct.zpci_fib*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @zpci_err_insn(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
