; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_enable_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_enable_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_enable_cap = type { i32, i32*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_NR_RESERVED_IOAPIC_PINS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@KVM_IRQCHIP_SPLIT = common dso_local global i32 0, align 4
@KVM_X2APIC_API_VALID_FLAGS = common dso_local global i32 0, align 4
@KVM_X2APIC_API_USE_32BIT_IDS = common dso_local global i32 0, align 4
@KVM_X2APIC_API_DISABLE_BROADCAST_QUIRK = common dso_local global i32 0, align 4
@KVM_X86_DISABLE_VALID_EXITS = common dso_local global i32 0, align 4
@KVM_X86_DISABLE_EXITS_MWAIT = common dso_local global i32 0, align 4
@KVM_X86_DISABLE_EXITS_HLT = common dso_local global i32 0, align 4
@KVM_X86_DISABLE_EXITS_PAUSE = common dso_local global i32 0, align 4
@KVM_X86_DISABLE_EXITS_CSTATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_enable_cap(%struct.kvm* %0, %struct.kvm_enable_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_enable_cap*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_enable_cap* %1, %struct.kvm_enable_cap** %5, align 8
  %7 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %8 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %210

14:                                               ; preds = %2
  %15 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %205 [
    i32 133, label %18
    i32 130, label %27
    i32 129, label %78
    i32 128, label %118
    i32 131, label %187
    i32 132, label %196
  ]

18:                                               ; preds = %14
  %19 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvm*, %struct.kvm** %4, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  store i32 0, i32* %6, align 4
  br label %208

27:                                               ; preds = %14
  %28 = load %struct.kvm*, %struct.kvm** %4, align 8
  %29 = getelementptr inbounds %struct.kvm, %struct.kvm* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MAX_NR_RESERVED_IOAPIC_PINS, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %74

41:                                               ; preds = %27
  %42 = load i32, i32* @EEXIST, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.kvm*, %struct.kvm** %4, align 8
  %45 = call i32 @irqchip_in_kernel(%struct.kvm* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %74

48:                                               ; preds = %41
  %49 = load %struct.kvm*, %struct.kvm** %4, align 8
  %50 = getelementptr inbounds %struct.kvm, %struct.kvm* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %74

54:                                               ; preds = %48
  %55 = load %struct.kvm*, %struct.kvm** %4, align 8
  %56 = call i32 @kvm_setup_empty_irq_routing(%struct.kvm* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %74

60:                                               ; preds = %54
  %61 = call i32 (...) @smp_wmb()
  %62 = load i32, i32* @KVM_IRQCHIP_SPLIT, align 4
  %63 = load %struct.kvm*, %struct.kvm** %4, align 8
  %64 = getelementptr inbounds %struct.kvm, %struct.kvm* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 10
  store i32 %62, i32* %65, align 4
  %66 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %67 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kvm*, %struct.kvm** %4, align 8
  %72 = getelementptr inbounds %struct.kvm, %struct.kvm* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %60, %59, %53, %47, %40
  %75 = load %struct.kvm*, %struct.kvm** %4, align 8
  %76 = getelementptr inbounds %struct.kvm, %struct.kvm* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %208

78:                                               ; preds = %14
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  %81 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %82 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @KVM_X2APIC_API_VALID_FLAGS, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %208

91:                                               ; preds = %78
  %92 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %93 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @KVM_X2APIC_API_USE_32BIT_IDS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.kvm*, %struct.kvm** %4, align 8
  %102 = getelementptr inbounds %struct.kvm, %struct.kvm* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %91
  %105 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %106 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @KVM_X2APIC_API_DISABLE_BROADCAST_QUIRK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load %struct.kvm*, %struct.kvm** %4, align 8
  %115 = getelementptr inbounds %struct.kvm, %struct.kvm* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %104
  store i32 0, i32* %6, align 4
  br label %208

118:                                              ; preds = %14
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  %121 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %122 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @KVM_X86_DISABLE_VALID_EXITS, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  br label %208

131:                                              ; preds = %118
  %132 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %133 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @KVM_X86_DISABLE_EXITS_MWAIT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %131
  %141 = call i32 (...) @kvm_can_mwait_in_guest()
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.kvm*, %struct.kvm** %4, align 8
  %145 = getelementptr inbounds %struct.kvm, %struct.kvm* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 4
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %140, %131
  %148 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %149 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @KVM_X86_DISABLE_EXITS_HLT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load %struct.kvm*, %struct.kvm** %4, align 8
  %158 = getelementptr inbounds %struct.kvm, %struct.kvm* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 5
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %156, %147
  %161 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %162 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @KVM_X86_DISABLE_EXITS_PAUSE, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %160
  %170 = load %struct.kvm*, %struct.kvm** %4, align 8
  %171 = getelementptr inbounds %struct.kvm, %struct.kvm* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 6
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %160
  %174 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %175 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @KVM_X86_DISABLE_EXITS_CSTATE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %173
  %183 = load %struct.kvm*, %struct.kvm** %4, align 8
  %184 = getelementptr inbounds %struct.kvm, %struct.kvm* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 7
  store i32 1, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %173
  store i32 0, i32* %6, align 4
  br label %208

187:                                              ; preds = %14
  %188 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %189 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.kvm*, %struct.kvm** %4, align 8
  %194 = getelementptr inbounds %struct.kvm, %struct.kvm* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 8
  store i32 %192, i32* %195, align 4
  store i32 0, i32* %6, align 4
  br label %208

196:                                              ; preds = %14
  %197 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %198 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.kvm*, %struct.kvm** %4, align 8
  %203 = getelementptr inbounds %struct.kvm, %struct.kvm* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 9
  store i32 %201, i32* %204, align 4
  store i32 0, i32* %6, align 4
  br label %208

205:                                              ; preds = %14
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %205, %196, %187, %186, %130, %117, %90, %74, %18
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %11
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqchip_in_kernel(%struct.kvm*) #1

declare dso_local i32 @kvm_setup_empty_irq_routing(%struct.kvm*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvm_can_mwait_in_guest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
