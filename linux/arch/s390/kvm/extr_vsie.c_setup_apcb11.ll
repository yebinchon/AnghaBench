; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_setup_apcb11.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_setup_apcb11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64*, i64, i64*)* @setup_apcb11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_apcb11(%struct.kvm_vcpu* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = call i64 @read_guest_real(%struct.kvm_vcpu* %10, i64 %11, i64* %12, i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %4
  %19 = load i64*, i64** %7, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = call i32 @bitmap_and(i64* %19, i64* %20, i64* %21, i32 4)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i64 @read_guest_real(%struct.kvm_vcpu*, i64, i64*, i32) #1

declare dso_local i32 @bitmap_and(i64*, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
