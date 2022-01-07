; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_complete_emulated_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_complete_emulated_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, i64, i32, %struct.TYPE_4__, i64, i64, %struct.kvm_mmio_fragment*, %struct.kvm_run* }
%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu.0*)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvm_mmio_fragment = type { i32, i32, i32 }
%struct.kvm_run = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@KVM_EXIT_MMIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @complete_emulated_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @complete_emulated_mmio(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca %struct.kvm_mmio_fragment*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 7
  %9 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  store %struct.kvm_run* %9, %struct.kvm_run** %4, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 6
  %19 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %18, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %19, i64 %22
  store %struct.kvm_mmio_fragment* %23, %struct.kvm_mmio_fragment** %5, align 8
  %24 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @min(i32 8, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %1
  %33 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @memcpy(i32 %35, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %1
  %43 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 8
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %48, i32 1
  store %struct.kvm_mmio_fragment* %49, %struct.kvm_mmio_fragment** %5, align 8
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %70

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %57 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %62 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %67 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %54, %47
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp uge i64 %73, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %70
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 1, i32* %2, align 4
  br label %135

86:                                               ; preds = %78
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = call i32 @complete_emulated_io(%struct.kvm_vcpu* %89)
  store i32 %90, i32* %2, align 4
  br label %135

91:                                               ; preds = %70
  %92 = load i32, i32* @KVM_EXIT_MMIO, align 4
  %93 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %96 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %99 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %91
  %106 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %107 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %111 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %114 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @min(i32 8, i32 %115)
  %117 = call i32 @memcpy(i32 %109, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %105, %91
  %119 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %5, align 8
  %120 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @min(i32 8, i32 %121)
  %123 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %124 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 8
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %130 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  store i64 %128, i64* %131, align 8
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 (%struct.kvm_vcpu.0*)* bitcast (i32 (%struct.kvm_vcpu*)* @complete_emulated_mmio to i32 (%struct.kvm_vcpu.0*)*), i32 (%struct.kvm_vcpu.0*)** %134, align 8
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %118, %86, %85
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @complete_emulated_io(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
