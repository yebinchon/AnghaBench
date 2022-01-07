; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_traverse_pci_dn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_traverse_pci_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @traverse_pci_dn(%struct.pci_dn* %0, i8* (%struct.pci_dn*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_dn*, align 8
  %6 = alloca i8* (%struct.pci_dn*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pci_dn*, align 8
  %9 = alloca i8*, align 8
  store %struct.pci_dn* %0, %struct.pci_dn** %5, align 8
  store i8* (%struct.pci_dn*, i8*)* %1, i8* (%struct.pci_dn*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  store %struct.pci_dn* %10, %struct.pci_dn** %8, align 8
  %11 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %12 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %13 = call %struct.pci_dn* @pci_dn_next_one(%struct.pci_dn* %11, %struct.pci_dn* %12)
  store %struct.pci_dn* %13, %struct.pci_dn** %8, align 8
  br label %14

14:                                               ; preds = %27, %3
  %15 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %16 = icmp ne %struct.pci_dn* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i8* (%struct.pci_dn*, i8*)*, i8* (%struct.pci_dn*, i8*)** %6, align 8
  %19 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* %18(%struct.pci_dn* %19, i8* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** %4, align 8
  br label %32

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %29 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %30 = call %struct.pci_dn* @pci_dn_next_one(%struct.pci_dn* %28, %struct.pci_dn* %29)
  store %struct.pci_dn* %30, %struct.pci_dn** %8, align 8
  br label %14

31:                                               ; preds = %14
  store i8* null, i8** %4, align 8
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i8*, i8** %4, align 8
  ret i8* %33
}

declare dso_local %struct.pci_dn* @pci_dn_next_one(%struct.pci_dn*, %struct.pci_dn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
