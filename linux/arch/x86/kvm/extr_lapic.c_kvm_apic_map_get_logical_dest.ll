; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_map_get_logical_dest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_map_get_logical_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_apic_map = type { i32, i32, %struct.kvm_lapic***, %struct.kvm_lapic**, %struct.kvm_lapic** }
%struct.kvm_lapic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_apic_map*, i32, %struct.kvm_lapic***, i32*)* @kvm_apic_map_get_logical_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_apic_map_get_logical_dest(%struct.kvm_apic_map* %0, i32 %1, %struct.kvm_lapic*** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_apic_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_lapic***, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_apic_map* %0, %struct.kvm_apic_map** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.kvm_lapic*** %2, %struct.kvm_lapic**** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %76 [
    i32 130, label %16
    i32 128, label %54
    i32 129, label %62
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 16
  %19 = mul nsw i32 %18, 16
  store i32 %19, i32* %10, align 4
  %20 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %16
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = call i32 @min(i32 %30, i32 16)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %34 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @array_index_nospec(i32 %32, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %39 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %38, i32 0, i32 4
  %40 = load %struct.kvm_lapic**, %struct.kvm_lapic*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.kvm_lapic*, %struct.kvm_lapic** %40, i64 %42
  %44 = load %struct.kvm_lapic***, %struct.kvm_lapic**** %8, align 8
  store %struct.kvm_lapic** %43, %struct.kvm_lapic*** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 16, %46
  %48 = ashr i32 65535, %47
  %49 = and i32 %45, %48
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %53

51:                                               ; preds = %16
  %52 = load i32*, i32** %9, align 8
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %26
  store i32 1, i32* %5, align 4
  br label %77

54:                                               ; preds = %4
  %55 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %56 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %55, i32 0, i32 3
  %57 = load %struct.kvm_lapic**, %struct.kvm_lapic*** %56, align 8
  %58 = load %struct.kvm_lapic***, %struct.kvm_lapic**** %8, align 8
  store %struct.kvm_lapic** %57, %struct.kvm_lapic*** %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 255
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  store i32 1, i32* %5, align 4
  br label %77

62:                                               ; preds = %4
  %63 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %6, align 8
  %64 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %63, i32 0, i32 2
  %65 = load %struct.kvm_lapic***, %struct.kvm_lapic**** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 4
  %68 = and i32 %67, 15
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.kvm_lapic**, %struct.kvm_lapic*** %65, i64 %69
  %71 = load %struct.kvm_lapic**, %struct.kvm_lapic*** %70, align 8
  %72 = load %struct.kvm_lapic***, %struct.kvm_lapic**** %8, align 8
  store %struct.kvm_lapic** %71, %struct.kvm_lapic*** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 15
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  store i32 1, i32* %5, align 4
  br label %77

76:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %62, %54, %53
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
