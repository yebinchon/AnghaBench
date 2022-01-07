; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_vcpu_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_vcpu_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_22__*, i64, i32, i32, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.kvm_vcpu_events = type { i32, %struct.TYPE_21__, i32, %struct.TYPE_20__, %struct.TYPE_19__, i32, i64, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { i32, i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64 }

@KVM_VCPUEVENT_VALID_NMI_PENDING = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_SIPI_VECTOR = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_SHADOW = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_SMM = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_PAYLOAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NMI_VECTOR = common dso_local global i32 0, align 4
@KVM_MP_STATE_INIT_RECEIVED = common dso_local global i64 0, align 8
@kvm_x86_ops = common dso_local global %struct.TYPE_13__* null, align 8
@HF_SMM_MASK = common dso_local global i32 0, align 4
@HF_SMM_INSIDE_NMI_MASK = common dso_local global i32 0, align 4
@KVM_APIC_INIT = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_vcpu_events*)* @kvm_vcpu_ioctl_x86_set_vcpu_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_ioctl_x86_set_vcpu_events(%struct.kvm_vcpu* %0, %struct.kvm_vcpu_events* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_vcpu_events*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_vcpu_events* %1, %struct.kvm_vcpu_events** %5, align 8
  %6 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @KVM_VCPUEVENT_VALID_NMI_PENDING, align 4
  %10 = load i32, i32* @KVM_VCPUEVENT_VALID_SIPI_VECTOR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @KVM_VCPUEVENT_VALID_SHADOW, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @KVM_VCPUEVENT_VALID_SMM, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @KVM_VCPUEVENT_VALID_PAYLOAD, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %8, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %381

24:                                               ; preds = %2
  %25 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @KVM_VCPUEVENT_VALID_PAYLOAD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %381

42:                                               ; preds = %31
  %43 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %48
  br label %62

56:                                               ; preds = %24
  %57 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %55
  %63 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %68, %62
  %75 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 31
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NMI_VECTOR, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80, %74
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %381

90:                                               ; preds = %80, %68
  %91 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @KVM_VCPUEVENT_VALID_SMM, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %90
  %98 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %105 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %103, %97
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @KVM_MP_STATE_INIT_RECEIVED, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %381

119:                                              ; preds = %109, %103, %90
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %121 = call i32 @process_nmi(%struct.kvm_vcpu* %120)
  %122 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 6
  store i64 %125, i64* %129, align 8
  %130 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %131 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %135 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 7
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 5
  store i64 %133, i64* %137, align 8
  %138 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %139 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 8
  %146 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %147 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %146, i32 0, i32 7
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %151 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 4
  store i32 %149, i32* %153, align 4
  %154 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %155 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %159 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 3
  store i32 %157, i32* %161, align 8
  %162 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %163 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %166 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 2
  store i64 %164, i64* %168, align 8
  %169 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %170 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %173 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  store i32 %171, i32* %175, align 4
  %176 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 2
  store i32 %179, i32* %183, align 8
  %184 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %185 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %189 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  store i32 %187, i32* %191, align 4
  %192 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %193 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %197 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  store i32 %195, i32* %199, align 8
  %200 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %201 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @KVM_VCPUEVENT_VALID_SHADOW, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %119
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kvm_x86_ops, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %208, align 8
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %211 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %212 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 %209(%struct.kvm_vcpu* %210, i32 %214)
  br label %216

216:                                              ; preds = %206, %119
  %217 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %218 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %222 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 5
  store i32 %220, i32* %223, align 4
  %224 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %225 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @KVM_VCPUEVENT_VALID_NMI_PENDING, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %216
  %231 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %232 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %236 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 4
  store i32 %234, i32* %237, align 8
  br label %238

238:                                              ; preds = %230, %216
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kvm_x86_ops, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %240, align 8
  %242 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %243 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %244 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 %241(%struct.kvm_vcpu* %242, i32 %246)
  %248 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %249 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @KVM_VCPUEVENT_VALID_SIPI_VECTOR, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %238
  %255 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %256 = call i64 @lapic_in_kernel(%struct.kvm_vcpu* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %254
  %259 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %260 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %263 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 1
  store i32 %261, i32* %266, align 4
  br label %267

267:                                              ; preds = %258, %254, %238
  %268 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %269 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @KVM_VCPUEVENT_VALID_SMM, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %377

274:                                              ; preds = %267
  %275 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %276 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @HF_SMM_MASK, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  %283 = xor i1 %282, true
  %284 = zext i1 %283 to i32
  %285 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %286 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %284, %288
  br i1 %289, label %290, label %314

290:                                              ; preds = %274
  %291 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %292 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %290
  %297 = load i32, i32* @HF_SMM_MASK, align 4
  %298 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %299 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %297
  store i32 %302, i32* %300, align 8
  br label %311

303:                                              ; preds = %290
  %304 = load i32, i32* @HF_SMM_MASK, align 4
  %305 = xor i32 %304, -1
  %306 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %307 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = and i32 %309, %305
  store i32 %310, i32* %308, align 8
  br label %311

311:                                              ; preds = %303, %296
  %312 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %313 = call i32 @kvm_smm_changed(%struct.kvm_vcpu* %312)
  br label %314

314:                                              ; preds = %311, %274
  %315 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %316 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %320 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 3
  store i64 %318, i64* %321, align 8
  %322 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %323 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %376

327:                                              ; preds = %314
  %328 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %329 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %327
  %334 = load i32, i32* @HF_SMM_INSIDE_NMI_MASK, align 4
  %335 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %336 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %334
  store i32 %339, i32* %337, align 8
  br label %348

340:                                              ; preds = %327
  %341 = load i32, i32* @HF_SMM_INSIDE_NMI_MASK, align 4
  %342 = xor i32 %341, -1
  %343 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %344 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = and i32 %346, %342
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %340, %333
  %349 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %350 = call i64 @lapic_in_kernel(%struct.kvm_vcpu* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %375

352:                                              ; preds = %348
  %353 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %354 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %352
  %359 = load i32, i32* @KVM_APIC_INIT, align 4
  %360 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %361 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 0
  %365 = call i32 @set_bit(i32 %359, i32* %364)
  br label %374

366:                                              ; preds = %352
  %367 = load i32, i32* @KVM_APIC_INIT, align 4
  %368 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %369 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_22__*, %struct.TYPE_22__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %371, i32 0, i32 0
  %373 = call i32 @clear_bit(i32 %367, i32* %372)
  br label %374

374:                                              ; preds = %366, %358
  br label %375

375:                                              ; preds = %374, %348
  br label %376

376:                                              ; preds = %375, %314
  br label %377

377:                                              ; preds = %376, %267
  %378 = load i32, i32* @KVM_REQ_EVENT, align 4
  %379 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %380 = call i32 @kvm_make_request(i32 %378, %struct.kvm_vcpu* %379)
  store i32 0, i32* %3, align 4
  br label %381

381:                                              ; preds = %377, %116, %87, %39, %21
  %382 = load i32, i32* %3, align 4
  ret i32 %382
}

declare dso_local i32 @process_nmi(%struct.kvm_vcpu*) #1

declare dso_local i64 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_smm_changed(%struct.kvm_vcpu*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
