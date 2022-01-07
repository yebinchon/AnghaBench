; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_guest_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_guest_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32*, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.kvm_guest_debug = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@KVM_GUESTDBG_INJECT_DB = common dso_local global i32 0, align 4
@KVM_GUESTDBG_INJECT_BP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@BP_VECTOR = common dso_local global i32 0, align 4
@KVM_GUESTDBG_ENABLE = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@KVM_NR_DB_REGS = common dso_local global i32 0, align 4
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_guest_debug(%struct.kvm_vcpu* %0, %struct.kvm_guest_debug* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_guest_debug*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_guest_debug* %1, %struct.kvm_guest_debug** %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i32 @vcpu_load(%struct.kvm_vcpu* %8)
  %10 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @KVM_GUESTDBG_INJECT_DB, align 4
  %14 = load i32, i32* @KVM_GUESTDBG_INJECT_BP, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %155

28:                                               ; preds = %18
  %29 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @KVM_GUESTDBG_INJECT_DB, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load i32, i32* @DB_VECTOR, align 4
  %38 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %36, i32 %37)
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = load i32, i32* @BP_VECTOR, align 4
  %42 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = call i64 @kvm_get_rflags(%struct.kvm_vcpu* %45)
  store i64 %46, i64* %5, align 8
  %47 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @KVM_GUESTDBG_ENABLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %44
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %89, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @KVM_NR_DB_REGS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %75 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %81, i32* %88, align 4
  br label %89

89:                                               ; preds = %73
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %69

92:                                               ; preds = %69
  %93 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 8
  br label %127

102:                                              ; preds = %61
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %123, %102
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @KVM_NR_DB_REGS, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %103
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %109 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %115, i32* %122, align 4
  br label %123

123:                                              ; preds = %107
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %103

126:                                              ; preds = %103
  br label %127

127:                                              ; preds = %126, %92
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = call i32 @kvm_update_dr7(%struct.kvm_vcpu* %128)
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %127
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %138 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %137)
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %140 = load i32, i32* @VCPU_SREG_CS, align 4
  %141 = call i64 @get_segment_base(%struct.kvm_vcpu* %139, i32 %140)
  %142 = add nsw i64 %138, %141
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i64 %142, i64* %145, align 8
  br label %146

146:                                              ; preds = %136, %127
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %148 = load i64, i64* %5, align 8
  %149 = call i32 @kvm_set_rflags(%struct.kvm_vcpu* %147, i64 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %151, align 8
  %153 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %154 = call i32 %152(%struct.kvm_vcpu* %153)
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %146, %27
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %157 = call i32 @vcpu_put(%struct.kvm_vcpu* %156)
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_update_dr7(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i64 @get_segment_base(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_set_rflags(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
