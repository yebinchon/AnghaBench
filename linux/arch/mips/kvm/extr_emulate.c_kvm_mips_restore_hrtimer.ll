; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_restore_hrtimer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_restore_hrtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_restore_hrtimer(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @kvm_mips_ktime_to_count(%struct.kvm_vcpu* %20, i32 %21)
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %12, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %32
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %15, align 4
  br label %78

39:                                               ; preds = %4
  %40 = call i32 (...) @ktime_get()
  store i32 %40, i32* %9, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @kvm_mips_ktime_to_count(%struct.kvm_vcpu* %45, i32 %46)
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %15, align 4
  br label %78

63:                                               ; preds = %39
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @NSEC_PER_SEC, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @div_u64(i32 %69, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @ktime_sub_ns(i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %63, %54, %30
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %15, align 4
  ret i32 %83
}

declare dso_local i32 @kvm_mips_ktime_to_count(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @ktime_sub_ns(i32, i32) #1

declare dso_local i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
