; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_pci_get_pbm_props.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_pci_get_pbm_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ino-bitmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_get_pbm_props(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca i64*, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %2, align 8
  %4 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %5 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64* @of_get_property(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64* %10, i64** %3, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %15 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %14, i32 0, i32 3
  store i64 %13, i64* %15, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %20 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %22 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64* @of_get_property(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64* %27, i64** %3, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %1
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = shl i64 %33, 32
  %35 = load i64*, i64** %3, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = shl i64 %37, 0
  %39 = or i64 %34, %38
  %40 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %41 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %30, %1
  ret void
}

declare dso_local i64* @of_get_property(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
