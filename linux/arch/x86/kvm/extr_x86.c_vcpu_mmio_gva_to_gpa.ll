; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_mmio_gva_to_gpa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_mmio_gva_to_gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 (%struct.kvm_vcpu*, i64, i32, %struct.x86_exception*)* }
%struct.x86_exception = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8
@PFERR_USER_MASK = common dso_local global i32 0, align 4
@PFERR_WRITE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@UNMAPPED_GVA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i64*, %struct.x86_exception*, i32)* @vcpu_mmio_gva_to_gpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_mmio_gva_to_gpa(%struct.kvm_vcpu* %0, i64 %1, i64* %2, %struct.x86_exception* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.x86_exception*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.x86_exception* %3, %struct.x86_exception** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %14, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %17 = call i32 %15(%struct.kvm_vcpu* %16)
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @PFERR_USER_MASK, align 4
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @PFERR_WRITE_MASK, align 4
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %23, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @vcpu_match_mmio_gva(%struct.kvm_vcpu* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %29
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @permission_fault(%struct.kvm_vcpu* %37, %struct.TYPE_5__* %41, i32 %45, i32 0, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %36
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = and i64 %56, %59
  %61 = or i64 %55, %60
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @trace_vcpu_match_mmio(i64 %63, i64 %65, i32 %66, i32 0)
  store i32 1, i32* %6, align 4
  br label %93

68:                                               ; preds = %36, %29
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64 (%struct.kvm_vcpu*, i64, i32, %struct.x86_exception*)*, i64 (%struct.kvm_vcpu*, i64, i32, %struct.x86_exception*)** %73, align 8
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.x86_exception*, %struct.x86_exception** %10, align 8
  %79 = call i64 %74(%struct.kvm_vcpu* %75, i64 %76, i32 %77, %struct.x86_exception* %78)
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UNMAPPED_GVA, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %93

86:                                               ; preds = %68
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @vcpu_is_mmio_gpa(%struct.kvm_vcpu* %87, i64 %88, i64 %90, i32 %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %86, %85, %49
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @vcpu_match_mmio_gva(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @permission_fault(%struct.kvm_vcpu*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @trace_vcpu_match_mmio(i64, i64, i32, i32) #1

declare dso_local i32 @vcpu_is_mmio_gpa(%struct.kvm_vcpu*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
