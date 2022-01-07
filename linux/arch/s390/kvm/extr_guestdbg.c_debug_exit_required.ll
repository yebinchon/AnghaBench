; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_debug_exit_required.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_debug_exit_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.kvm_debug_exit_arch }
%struct.kvm_debug_exit_arch = type { i64, i8* }
%struct.kvm_hw_wp_info_arch = type { i64 }
%struct.kvm_hw_bp_info_arch = type { i32 }

@KVM_HW_WP_WRITE = common dso_local global i8* null, align 8
@KVM_HW_BP = common dso_local global i8* null, align 8
@KVM_SINGLESTEP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i64)* @debug_exit_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_exit_required(%struct.kvm_vcpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_debug_exit_arch*, align 8
  %9 = alloca %struct.kvm_hw_wp_info_arch*, align 8
  %10 = alloca %struct.kvm_hw_bp_info_arch*, align 8
  %11 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.kvm_debug_exit_arch* %16, %struct.kvm_debug_exit_arch** %8, align 8
  store %struct.kvm_hw_wp_info_arch* null, %struct.kvm_hw_wp_info_arch** %9, align 8
  store %struct.kvm_hw_bp_info_arch* null, %struct.kvm_hw_bp_info_arch** %10, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %25 = call i64 @guestdbg_hw_bp_enabled(%struct.kvm_vcpu* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %109

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @per_write_wp_event(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %40 = call %struct.kvm_hw_wp_info_arch* @any_wp_changed(%struct.kvm_vcpu* %39)
  store %struct.kvm_hw_wp_info_arch* %40, %struct.kvm_hw_wp_info_arch** %9, align 8
  %41 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %9, align 8
  %42 = icmp ne %struct.kvm_hw_wp_info_arch* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %9, align 8
  %45 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.kvm_debug_exit_arch*, %struct.kvm_debug_exit_arch** %8, align 8
  %48 = getelementptr inbounds %struct.kvm_debug_exit_arch, %struct.kvm_debug_exit_arch* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** @KVM_HW_WP_WRITE, align 8
  %50 = load %struct.kvm_debug_exit_arch*, %struct.kvm_debug_exit_arch** %8, align 8
  %51 = getelementptr inbounds %struct.kvm_debug_exit_arch, %struct.kvm_debug_exit_arch* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %125

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %31, %27
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @per_bp_event(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %108

57:                                               ; preds = %53
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %108

64:                                               ; preds = %57
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call %struct.kvm_hw_bp_info_arch* @find_hw_bp(%struct.kvm_vcpu* %65, i64 %66)
  store %struct.kvm_hw_bp_info_arch* %67, %struct.kvm_hw_bp_info_arch** %10, align 8
  %68 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %10, align 8
  %69 = icmp ne %struct.kvm_hw_bp_info_arch* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.kvm_debug_exit_arch*, %struct.kvm_debug_exit_arch** %8, align 8
  %77 = getelementptr inbounds %struct.kvm_debug_exit_arch, %struct.kvm_debug_exit_arch* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i8*, i8** @KVM_HW_BP, align 8
  %79 = load %struct.kvm_debug_exit_arch*, %struct.kvm_debug_exit_arch** %8, align 8
  %80 = getelementptr inbounds %struct.kvm_debug_exit_arch, %struct.kvm_debug_exit_arch* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  store i64 %81, i64* %85, align 8
  br label %125

86:                                               ; preds = %70, %64
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call %struct.kvm_hw_bp_info_arch* @find_hw_bp(%struct.kvm_vcpu* %87, i64 %88)
  store %struct.kvm_hw_bp_info_arch* %89, %struct.kvm_hw_bp_info_arch** %10, align 8
  %90 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %10, align 8
  %91 = icmp ne %struct.kvm_hw_bp_info_arch* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.kvm_debug_exit_arch*, %struct.kvm_debug_exit_arch** %8, align 8
  %103 = getelementptr inbounds %struct.kvm_debug_exit_arch, %struct.kvm_debug_exit_arch* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i8*, i8** @KVM_HW_BP, align 8
  %105 = load %struct.kvm_debug_exit_arch*, %struct.kvm_debug_exit_arch** %8, align 8
  %106 = getelementptr inbounds %struct.kvm_debug_exit_arch, %struct.kvm_debug_exit_arch* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %125

107:                                              ; preds = %92, %86
  br label %108

108:                                              ; preds = %107, %57, %53
  br label %109

109:                                              ; preds = %108, %3
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %111 = call i64 @guestdbg_sstep_enabled(%struct.kvm_vcpu* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = call i64 @per_bp_event(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.kvm_debug_exit_arch*, %struct.kvm_debug_exit_arch** %8, align 8
  %120 = getelementptr inbounds %struct.kvm_debug_exit_arch, %struct.kvm_debug_exit_arch* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i8*, i8** @KVM_SINGLESTEP, align 8
  %122 = load %struct.kvm_debug_exit_arch*, %struct.kvm_debug_exit_arch** %8, align 8
  %123 = getelementptr inbounds %struct.kvm_debug_exit_arch, %struct.kvm_debug_exit_arch* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %125

124:                                              ; preds = %113, %109
  store i32 0, i32* %4, align 4
  br label %126

125:                                              ; preds = %117, %100, %74, %43
  store i32 1, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %124
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @guestdbg_hw_bp_enabled(%struct.kvm_vcpu*) #1

declare dso_local i64 @per_write_wp_event(i32) #1

declare dso_local %struct.kvm_hw_wp_info_arch* @any_wp_changed(%struct.kvm_vcpu*) #1

declare dso_local i64 @per_bp_event(i32) #1

declare dso_local %struct.kvm_hw_bp_info_arch* @find_hw_bp(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @guestdbg_sstep_enabled(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
