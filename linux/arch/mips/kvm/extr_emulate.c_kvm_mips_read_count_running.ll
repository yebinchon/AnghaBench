; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_read_count_running.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_read_count_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@kvm_mips_callbacks = common dso_local global %struct.TYPE_4__* null, align 8
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i32)* @kvm_mips_read_count_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_mips_read_count_running(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mips_coproc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load %struct.mips_coproc*, %struct.mips_coproc** %14, align 8
  store %struct.mips_coproc* %15, %struct.mips_coproc** %6, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @kvm_mips_ktime_to_count(%struct.kvm_vcpu* %20, i32 %21)
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %25 = call i64 @kvm_read_c0_guest_compare(%struct.mips_coproc* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %3, align 8
  br label %76

32:                                               ; preds = %2
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @hrtimer_get_expires(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 4
  %43 = call i32 @ktime_add_ns(i32 %37, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @ktime_before(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %32
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @hrtimer_cancel(i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_mips_callbacks, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %54, align 8
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %57 = call i32 %55(%struct.kvm_vcpu* %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ktime_add_ns(i32 %61, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %72 = call i32 @hrtimer_start(i32* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %60, %48
  br label %74

74:                                               ; preds = %73, %32
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %74, %30
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i64 @kvm_mips_ktime_to_count(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_read_c0_guest_compare(%struct.mips_coproc*) #1

declare dso_local i32 @hrtimer_get_expires(i32*) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
