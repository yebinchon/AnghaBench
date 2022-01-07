; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_mmio_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_mmio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KVM_MMIO_BUS = common dso_local global i32 0, align 4
@KVM_TRACE_MMIO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i8*)* @vcpu_mmio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_mmio_read(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %57, %4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @min(i32 %12, i32 8)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = call i64 @lapic_in_kernel(%struct.kvm_vcpu* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kvm_iodevice_read(%struct.kvm_vcpu* %18, i32* %23, i32 %24, i32 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %17, %11
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %31 = load i32, i32* @KVM_MMIO_BUS, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @kvm_io_bus_read(%struct.kvm_vcpu* %30, i32 %31, i32 %32, i32 %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %60

38:                                               ; preds = %29, %17
  %39 = load i32, i32* @KVM_TRACE_MMIO_READ, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @trace_kvm_mmio(i32 %39, i32 %40, i32 %41, i8* %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr i8, i8* %54, i64 %55
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %11, label %60

60:                                               ; preds = %57, %37
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_iodevice_read(%struct.kvm_vcpu*, i32*, i32, i32, i8*) #1

declare dso_local i64 @kvm_io_bus_read(%struct.kvm_vcpu*, i32, i32, i32, i8*) #1

declare dso_local i32 @trace_kvm_mmio(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
