; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_msi.c_sparc64_teardown_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_msi.c_sparc64_teardown_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_pbm_info* }
%struct.pci_pbm_info = type { i32, i32*, i32, i32, %struct.sparc64_msiq_ops* }
%struct.sparc64_msiq_ops = type { i32 (%struct.pci_pbm_info.0*, i32)* }
%struct.pci_pbm_info.0 = type opaque

@.str = private unnamed_addr constant [33 x i8] c"%s: teardown: No MSI for irq %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"%s: teardown: ops->teardown() on MSI %u, irq %u, gives error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_dev*)* @sparc64_teardown_msi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc64_teardown_msi_irq(i32 %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_pbm_info*, align 8
  %6 = alloca %struct.sparc64_msiq_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %13, align 8
  store %struct.pci_pbm_info* %14, %struct.pci_pbm_info** %5, align 8
  %15 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %16 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %15, i32 0, i32 4
  %17 = load %struct.sparc64_msiq_ops*, %struct.sparc64_msiq_ops** %16, align 8
  store %struct.sparc64_msiq_ops* %17, %struct.sparc64_msiq_ops** %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %36, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %21 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %26 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %39

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %18

39:                                               ; preds = %34, %18
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %42 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %48 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (%struct.pci_dev*, i8*, i32, i32, ...) @pci_err(%struct.pci_dev* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %90

52:                                               ; preds = %39
  %53 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %54 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %59 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 -1, i32* %63, align 4
  %64 = load %struct.sparc64_msiq_ops*, %struct.sparc64_msiq_ops** %6, align 8
  %65 = getelementptr inbounds %struct.sparc64_msiq_ops, %struct.sparc64_msiq_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.pci_pbm_info.0*, i32)*, i32 (%struct.pci_pbm_info.0*, i32)** %65, align 8
  %67 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %68 = bitcast %struct.pci_pbm_info* %67 to %struct.pci_pbm_info.0*
  %69 = load i32, i32* %7, align 4
  %70 = call i32 %66(%struct.pci_pbm_info.0* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %52
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %76 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (%struct.pci_dev*, i8*, i32, i32, ...) @pci_err(%struct.pci_dev* %74, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %80)
  br label %90

82:                                               ; preds = %52
  %83 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @free_msi(%struct.pci_pbm_info* %83, i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @irq_set_chip(i32 %86, i32* null)
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @irq_free(i32 %88)
  br label %90

90:                                               ; preds = %82, %73, %45
  ret void
}

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32, i32, ...) #1

declare dso_local i32 @free_msi(%struct.pci_pbm_info*, i32) #1

declare dso_local i32 @irq_set_chip(i32, i32*) #1

declare dso_local i32 @irq_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
