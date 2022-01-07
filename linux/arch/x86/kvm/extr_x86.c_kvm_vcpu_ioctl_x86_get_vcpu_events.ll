; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_vcpu_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_vcpu_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_20__*, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_vcpu_events = type { i32, i32, %struct.TYPE_18__, i64, %struct.TYPE_16__, %struct.TYPE_15__, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_11__* null, align 8
@HF_SMM_INSIDE_NMI_MASK = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_NMI_PENDING = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_SHADOW = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_SMM = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_vcpu_events*)* @kvm_vcpu_ioctl_x86_get_vcpu_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vcpu_ioctl_x86_get_vcpu_events(%struct.kvm_vcpu* %0, %struct.kvm_vcpu_events* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_vcpu_events*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_vcpu_events* %1, %struct.kvm_vcpu_events** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @process_nmi(%struct.kvm_vcpu* %5)
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @kvm_exception_is_soft(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  store i32 0, i32* %20, align 8
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %21
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %45, %21
  br label %57

57:                                               ; preds = %56, %14
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %57
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %102, %57
  %111 = phi i1 [ false, %57 ], [ %109, %102 ]
  %112 = zext i1 %111 to i32
  %113 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 3
  store i32 %120, i32* %123, align 8
  %124 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %125 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kvm_x86_ops, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %128, align 8
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = call i32 %129(%struct.kvm_vcpu* %130)
  %132 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 4
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %149 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kvm_x86_ops, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %152, align 8
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %155 = call i32 %153(%struct.kvm_vcpu* %154)
  %156 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %157 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  store i32 %155, i32* %158, align 8
  %159 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %160 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  %162 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %163 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %162, i32 0, i32 3
  store i64 0, i64* %163, align 8
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %165 = call i32 @is_smm(%struct.kvm_vcpu* %164)
  %166 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %167 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 3
  store i32 %165, i32* %168, align 4
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %170 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %174 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 8
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @HF_SMM_INSIDE_NMI_MASK, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %187 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %190 = call i32 @kvm_lapic_latched_init(%struct.kvm_vcpu* %189)
  %191 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %192 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  store i32 %190, i32* %193, align 4
  %194 = load i32, i32* @KVM_VCPUEVENT_VALID_NMI_PENDING, align 4
  %195 = load i32, i32* @KVM_VCPUEVENT_VALID_SHADOW, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @KVM_VCPUEVENT_VALID_SMM, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %200 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %202 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %201, i32 0, i32 0
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %110
  %209 = load i32, i32* @KVM_VCPUEVENT_VALID_PAYLOAD, align 4
  %210 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %211 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %208, %110
  %215 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %216 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %215, i32 0, i32 1
  %217 = call i32 @memset(i32* %216, i32 0, i32 4)
  ret void
}

declare dso_local i32 @process_nmi(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_exception_is_soft(i32) #1

declare dso_local i32 @is_smm(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lapic_latched_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
