; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_hardware_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_hardware_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CVMVMCONF_MMUSIZEM1 = common dso_local global i32 0, align 4
@CVMVMCONF_MMUSIZEM1_S = common dso_local global i32 0, align 4
@CVMVMCONF_RMMUSIZEM1 = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@cpu_has_guestid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kvm_vz_hardware_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vz_hardware_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @kvm_vz_local_flush_guesttlb_all()
  %4 = call i32 (...) @current_cpu_type()
  switch i32 %4, label %26 [
    i32 128, label %5
  ]

5:                                                ; preds = %0
  %6 = call i32 (...) @read_c0_cvmvmconfig()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @CVMVMCONF_MMUSIZEM1, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @CVMVMCONF_MMUSIZEM1_S, align 4
  %11 = lshr i32 %9, %10
  %12 = add i32 %11, 1
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @CVMVMCONF_RMMUSIZEM1, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %1, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sub i32 %17, 1
  %19 = load i32, i32* %1, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @write_c0_cvmvmconfig(i32 %21)
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0), align 4
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 2, i32 0), align 4
  %25 = call i32 (...) @local_flush_tlb_all()
  br label %26

26:                                               ; preds = %0, %5
  %27 = load i64, i64* @cpu_has_guestid, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @write_c0_guestctl1(i32 0)
  %31 = call i32 (...) @kvm_vz_local_flush_roottlb_all_guests()
  br label %32

32:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @kvm_vz_local_flush_guesttlb_all(...) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @read_c0_cvmvmconfig(...) #1

declare dso_local i32 @write_c0_cvmvmconfig(i32) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @write_c0_guestctl1(i32) #1

declare dso_local i32 @kvm_vz_local_flush_roottlb_all_guests(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
