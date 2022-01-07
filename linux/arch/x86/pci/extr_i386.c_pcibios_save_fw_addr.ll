; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_i386.c_pcibios_save_fw_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_i386.c_pcibios_save_fw_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pcibios_fwaddrmap = type { i8**, i32, i32 }

@pcibios_fw_addr_done = common dso_local global i64 0, align 8
@pcibios_fwaddrmap_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pcibios_fwaddrmappings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i8*)* @pcibios_save_fw_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcibios_save_fw_addr(%struct.pci_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pcibios_fwaddrmap*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* @pcibios_fw_addr_done, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %58

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @pcibios_fwaddrmap_lock, i64 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call %struct.pcibios_fwaddrmap* @pcibios_fwaddrmap_lookup(%struct.pci_dev* %15)
  store %struct.pcibios_fwaddrmap* %16, %struct.pcibios_fwaddrmap** %8, align 8
  %17 = load %struct.pcibios_fwaddrmap*, %struct.pcibios_fwaddrmap** %8, align 8
  %18 = icmp ne %struct.pcibios_fwaddrmap* %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @pcibios_fwaddrmap_lock, i64 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.pcibios_fwaddrmap* @kzalloc(i32 16, i32 %22)
  store %struct.pcibios_fwaddrmap* %23, %struct.pcibios_fwaddrmap** %8, align 8
  %24 = load %struct.pcibios_fwaddrmap*, %struct.pcibios_fwaddrmap** %8, align 8
  %25 = icmp ne %struct.pcibios_fwaddrmap* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %58

27:                                               ; preds = %19
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_dev_get(%struct.pci_dev* %28)
  %30 = load %struct.pcibios_fwaddrmap*, %struct.pcibios_fwaddrmap** %8, align 8
  %31 = getelementptr inbounds %struct.pcibios_fwaddrmap, %struct.pcibios_fwaddrmap* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.pcibios_fwaddrmap*, %struct.pcibios_fwaddrmap** %8, align 8
  %34 = getelementptr inbounds %struct.pcibios_fwaddrmap, %struct.pcibios_fwaddrmap* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %32, i8** %38, align 8
  %39 = load %struct.pcibios_fwaddrmap*, %struct.pcibios_fwaddrmap** %8, align 8
  %40 = getelementptr inbounds %struct.pcibios_fwaddrmap, %struct.pcibios_fwaddrmap* %39, i32 0, i32 1
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* @pcibios_fwaddrmap_lock, i64 %42)
  %44 = load %struct.pcibios_fwaddrmap*, %struct.pcibios_fwaddrmap** %8, align 8
  %45 = getelementptr inbounds %struct.pcibios_fwaddrmap, %struct.pcibios_fwaddrmap* %44, i32 0, i32 1
  %46 = call i32 @list_add_tail(i32* %45, i32* @pcibios_fwaddrmappings)
  br label %55

47:                                               ; preds = %12
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.pcibios_fwaddrmap*, %struct.pcibios_fwaddrmap** %8, align 8
  %50 = getelementptr inbounds %struct.pcibios_fwaddrmap, %struct.pcibios_fwaddrmap* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  br label %55

55:                                               ; preds = %47, %27
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @pcibios_fwaddrmap_lock, i64 %56)
  br label %58

58:                                               ; preds = %55, %26, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pcibios_fwaddrmap* @pcibios_fwaddrmap_lookup(%struct.pci_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.pcibios_fwaddrmap* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
