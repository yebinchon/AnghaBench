; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_kvm_s390_handle_per_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_kvm_s390_handle_per_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@KVM_GUESTDBG_EXIT_PENDING = common dso_local global i32 0, align 4
@PGM_SPACE_SWITCH = common dso_local global i64 0, align 8
@PSW_BITS_AS_HOME = common dso_local global i32 0, align 4
@PSW_BITS_AS_PRIMARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_handle_per_event(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @debug_exit_required(%struct.kvm_vcpu* %7, i32 %13, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @KVM_GUESTDBG_EXIT_PENDING, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = call i32 @filter_guest_per_event(%struct.kvm_vcpu* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %108

35:                                               ; preds = %28
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PGM_SPACE_SWITCH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %35
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @psw_bits(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @PSW_BITS_AS_HOME, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = call i32 @old_as_is_home(%struct.kvm_vcpu* %64)
  %66 = xor i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %44
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = call i64 @pssec(%struct.kvm_vcpu* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = call i64 @hssec(%struct.kvm_vcpu* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72, %68
  %77 = load i64, i64* @PGM_SPACE_SWITCH, align 8
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 %77, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %72, %44
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @PSW_BITS_AS_PRIMARY, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = call i32 @old_as_is_home(%struct.kvm_vcpu* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %87
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %93 = call i64 @pssec(%struct.kvm_vcpu* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = call i64 @old_ssec(%struct.kvm_vcpu* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95, %91
  %100 = load i64, i64* @PGM_SPACE_SWITCH, align 8
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i64 %100, i64* %105, align 8
  br label %106

106:                                              ; preds = %99, %95, %87, %83
  br label %107

107:                                              ; preds = %106, %35
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %33
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @debug_exit_required(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @filter_guest_per_event(%struct.kvm_vcpu*) #1

declare dso_local i32 @psw_bits(i32) #1

declare dso_local i32 @old_as_is_home(%struct.kvm_vcpu*) #1

declare dso_local i64 @pssec(%struct.kvm_vcpu*) #1

declare dso_local i64 @hssec(%struct.kvm_vcpu*) #1

declare dso_local i64 @old_ssec(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
