; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_num_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_num_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@kvm_vz_get_one_regs = common dso_local global i32 0, align 4
@cpu_guest_has_userlocal = common dso_local global i64 0, align 8
@cpu_guest_has_badinstr = common dso_local global i64 0, align 8
@cpu_guest_has_badinstrp = common dso_local global i64 0, align 8
@cpu_guest_has_contextconfig = common dso_local global i64 0, align 8
@kvm_vz_get_one_regs_contextconfig = common dso_local global i32 0, align 4
@cpu_guest_has_segments = common dso_local global i64 0, align 8
@kvm_vz_get_one_regs_segments = common dso_local global i32 0, align 4
@cpu_guest_has_htw = common dso_local global i64 0, align 8
@kvm_vz_get_one_regs_htw = common dso_local global i32 0, align 4
@cpu_guest_has_maar = common dso_local global i64 0, align 8
@cpu_guest_has_dyn_maar = common dso_local global i32 0, align 4
@cpu_data = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*)* @kvm_vz_num_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_vz_num_regs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load i32, i32* @kvm_vz_get_one_regs, align 4
  %5 = call i64 @ARRAY_SIZE(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @cpu_guest_has_userlocal, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i64, i64* @cpu_guest_has_badinstr, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i64, i64* @cpu_guest_has_badinstrp, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* @cpu_guest_has_contextconfig, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @kvm_vz_get_one_regs_contextconfig, align 4
  %28 = call i64 @ARRAY_SIZE(i32 %27)
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i64, i64* @cpu_guest_has_segments, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @kvm_vz_get_one_regs_segments, align 4
  %36 = call i64 @ARRAY_SIZE(i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i64, i64* @cpu_guest_has_htw, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @kvm_vz_get_one_regs_htw, align 4
  %44 = call i64 @ARRAY_SIZE(i32 %43)
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i64, i64* @cpu_guest_has_maar, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32, i32* @cpu_guest_has_dyn_maar, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ARRAY_SIZE(i32 %57)
  %59 = add i64 1, %58
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %53, %50, %47
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpu_data, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @__arch_hweight8(i32 %67)
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i64 @__arch_hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
