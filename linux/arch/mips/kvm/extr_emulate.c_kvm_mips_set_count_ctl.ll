; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_set_count_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_set_count_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@KVM_REG_MIPS_COUNT_CTL_DC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAUSEF_DC = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@kvm_mips_callbacks = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_set_count_ctl(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mips_coproc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load %struct.mips_coproc*, %struct.mips_coproc** %15, align 8
  store %struct.mips_coproc* %16, %struct.mips_coproc** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %17, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @KVM_REG_MIPS_COUNT_CTL_DC, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %114

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @KVM_REG_MIPS_COUNT_CTL_DC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %113

40:                                               ; preds = %31
  %41 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %42 = call i32 @kvm_read_c0_guest_cause(%struct.mips_coproc* %41)
  %43 = load i32, i32* @CAUSEF_DC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @KVM_REG_MIPS_COUNT_CTL_DC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = call i8* (...) @ktime_get()
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %46
  br label %112

57:                                               ; preds = %40
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @KVM_REG_MIPS_COUNT_CTL_DC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %64 = call i8* @kvm_mips_count_disable(%struct.kvm_vcpu* %63)
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  br label %111

68:                                               ; preds = %57
  %69 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %70 = call i32 @kvm_read_c0_guest_count(%struct.mips_coproc* %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %72 = call i32 @kvm_read_c0_guest_compare(%struct.mips_coproc* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @NSEC_PER_SEC, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @div_u64(i32 %80, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i8* @ktime_add_ns(i8* %89, i32 %90)
  store i8* %91, i8** %9, align 8
  %92 = call i8* (...) @ktime_get()
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @ktime_compare(i8* %93, i8* %94)
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %68
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_mips_callbacks, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %99, align 8
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %102 = call i32 %100(%struct.kvm_vcpu* %101)
  br label %103

103:                                              ; preds = %97, %68
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @kvm_mips_read_count_running(%struct.kvm_vcpu* %104, i8* %105)
  store i32 %106, i32* %11, align 4
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu* %107, i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %62
  br label %112

112:                                              ; preds = %111, %56
  br label %113

113:                                              ; preds = %112, %31
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %28
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @kvm_read_c0_guest_cause(%struct.mips_coproc*) #1

declare dso_local i8* @ktime_get(...) #1

declare dso_local i8* @kvm_mips_count_disable(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_c0_guest_count(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_read_c0_guest_compare(%struct.mips_coproc*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i8* @ktime_add_ns(i8*, i32) #1

declare dso_local i64 @ktime_compare(i8*, i8*) #1

declare dso_local i32 @kvm_mips_read_count_running(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
