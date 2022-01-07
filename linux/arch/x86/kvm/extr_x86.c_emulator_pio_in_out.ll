; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_pio_in_out.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_pio_in_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i16, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i16, i32, i32, i32 }

@KVM_EXIT_IO = common dso_local global i32 0, align 4
@KVM_EXIT_IO_IN = common dso_local global i32 0, align 4
@KVM_EXIT_IO_OUT = common dso_local global i32 0, align 4
@KVM_PIO_PAGE_OFFSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i16, i8*, i32, i32)* @emulator_pio_in_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_pio_in_out(%struct.kvm_vcpu* %0, i32 %1, i16 zeroext %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i16, i16* %10, align 2
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i16 %14, i16* %18, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i32 %29, i32* %33, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kernel_pio(%struct.kvm_vcpu* %34, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %6
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  store i32 1, i32* %7, align 4
  br label %91

46:                                               ; preds = %6
  %47 = load i32, i32* @KVM_EXIT_IO, align 4
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @KVM_EXIT_IO_IN, align 4
  br label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @KVM_EXIT_IO_OUT, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* @KVM_PIO_PAGE_OFFSET, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 %79, i32* %84, align 4
  %85 = load i16, i16* %10, align 2
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  store i16 %85, i16* %90, align 4
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %58, %41
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @kernel_pio(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
