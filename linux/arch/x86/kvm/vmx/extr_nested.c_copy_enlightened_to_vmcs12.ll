; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_enlightened_to_vmcs12.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_enlightened_to_vmcs12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hv_enlightened_vmcs*, %struct.vmcs12* }
%struct.hv_enlightened_vmcs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vmcs12 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_BASIC = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_PROC = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_EXCPN = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_ENTRY = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_EVENT = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_HOST_GRP1 = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_GRP1 = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_IO_BITMAP = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_MSR_BITMAP = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP2 = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_GRP2 = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_CRDR = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_HOST_POINTER = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_XLAT = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*)* @copy_enlightened_to_vmcs12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_enlightened_to_vmcs12(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca %struct.vmcs12*, align 8
  %4 = alloca %struct.hv_enlightened_vmcs*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %5 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  store %struct.vmcs12* %8, %struct.vmcs12** %3, align 8
  %9 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %10 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %11, align 8
  store %struct.hv_enlightened_vmcs* %12, %struct.hv_enlightened_vmcs** %4, align 8
  %13 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %14 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %13, i32 0, i32 102
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %17 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %16, i32 0, i32 101
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %19 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %18, i32 0, i32 101
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %22 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %21, i32 0, i32 100
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %24 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_BASIC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %1
  %34 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %35 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %34, i32 0, i32 100
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %38 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %37, i32 0, i32 99
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %40 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %39, i32 0, i32 99
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %43 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %42, i32 0, i32 98
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %45 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %44, i32 0, i32 98
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %48 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %47, i32 0, i32 97
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %33, %1
  %50 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %51 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_PROC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %62 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %61, i32 0, i32 97
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %65 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %64, i32 0, i32 96
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %49
  %67 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %68 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_EXCPN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %79 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %78, i32 0, i32 96
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %82 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %81, i32 0, i32 95
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %66
  %84 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %85 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_ENTRY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %96 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %95, i32 0, i32 95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %99 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %98, i32 0, i32 94
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %83
  %101 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %102 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_EVENT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %100
  %112 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %113 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %112, i32 0, i32 94
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %116 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %115, i32 0, i32 93
  store i32 %114, i32* %116, align 4
  %117 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %118 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %117, i32 0, i32 93
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %121 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %120, i32 0, i32 92
  store i32 %119, i32* %121, align 4
  %122 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %123 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %122, i32 0, i32 92
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %126 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %125, i32 0, i32 91
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %111, %100
  %128 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %129 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_HOST_GRP1, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %219

138:                                              ; preds = %127
  %139 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %140 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %139, i32 0, i32 91
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %143 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %142, i32 0, i32 90
  store i32 %141, i32* %143, align 4
  %144 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %145 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %144, i32 0, i32 90
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %148 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %147, i32 0, i32 89
  store i32 %146, i32* %148, align 4
  %149 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %150 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %149, i32 0, i32 89
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %153 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %152, i32 0, i32 88
  store i32 %151, i32* %153, align 4
  %154 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %155 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %154, i32 0, i32 88
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %158 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %157, i32 0, i32 87
  store i32 %156, i32* %158, align 4
  %159 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %160 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %159, i32 0, i32 87
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %163 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %162, i32 0, i32 86
  store i32 %161, i32* %163, align 4
  %164 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %165 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %164, i32 0, i32 86
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %168 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %167, i32 0, i32 85
  store i32 %166, i32* %168, align 4
  %169 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %170 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %169, i32 0, i32 85
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %173 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %172, i32 0, i32 84
  store i32 %171, i32* %173, align 4
  %174 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %175 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %174, i32 0, i32 84
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %178 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %177, i32 0, i32 83
  store i32 %176, i32* %178, align 4
  %179 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %180 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %179, i32 0, i32 83
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %183 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %182, i32 0, i32 82
  store i32 %181, i32* %183, align 4
  %184 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %185 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %184, i32 0, i32 82
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %188 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %187, i32 0, i32 81
  store i32 %186, i32* %188, align 4
  %189 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %190 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %189, i32 0, i32 81
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %193 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %192, i32 0, i32 80
  store i32 %191, i32* %193, align 4
  %194 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %195 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %194, i32 0, i32 80
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %198 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %197, i32 0, i32 79
  store i32 %196, i32* %198, align 4
  %199 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %200 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %199, i32 0, i32 79
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %203 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %202, i32 0, i32 78
  store i32 %201, i32* %203, align 4
  %204 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %205 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %204, i32 0, i32 78
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %208 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %207, i32 0, i32 77
  store i32 %206, i32* %208, align 4
  %209 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %210 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %209, i32 0, i32 77
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %213 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %212, i32 0, i32 76
  store i32 %211, i32* %213, align 4
  %214 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %215 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %214, i32 0, i32 76
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %218 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %217, i32 0, i32 75
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %138, %127
  %220 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %221 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_GRP1, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  %227 = zext i1 %226 to i32
  %228 = call i64 @unlikely(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %246

230:                                              ; preds = %219
  %231 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %232 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %231, i32 0, i32 75
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %235 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %234, i32 0, i32 74
  store i32 %233, i32* %235, align 4
  %236 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %237 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %236, i32 0, i32 74
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %240 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %239, i32 0, i32 73
  store i32 %238, i32* %240, align 4
  %241 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %242 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %241, i32 0, i32 73
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %245 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %244, i32 0, i32 72
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %230, %219
  %247 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %248 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_IO_BITMAP, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = call i64 @unlikely(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %246
  %258 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %259 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %258, i32 0, i32 72
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %262 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %261, i32 0, i32 71
  store i32 %260, i32* %262, align 4
  %263 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %264 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %263, i32 0, i32 71
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %267 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %266, i32 0, i32 70
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %257, %246
  %269 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %270 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_MSR_BITMAP, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  %277 = call i64 @unlikely(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %268
  %280 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %281 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %280, i32 0, i32 70
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %284 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %283, i32 0, i32 69
  store i32 %282, i32* %284, align 4
  br label %285

285:                                              ; preds = %279, %268
  %286 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %287 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP2, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  %292 = xor i1 %291, true
  %293 = zext i1 %292 to i32
  %294 = call i64 @unlikely(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %477

296:                                              ; preds = %285
  %297 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %298 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %297, i32 0, i32 69
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %301 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %300, i32 0, i32 68
  store i32 %299, i32* %301, align 4
  %302 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %303 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %302, i32 0, i32 68
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %306 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %305, i32 0, i32 67
  store i32 %304, i32* %306, align 4
  %307 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %308 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %307, i32 0, i32 67
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %311 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %310, i32 0, i32 66
  store i32 %309, i32* %311, align 4
  %312 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %313 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %312, i32 0, i32 66
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %316 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %315, i32 0, i32 65
  store i32 %314, i32* %316, align 4
  %317 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %318 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %317, i32 0, i32 65
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %321 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %320, i32 0, i32 64
  store i32 %319, i32* %321, align 4
  %322 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %323 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %322, i32 0, i32 64
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %326 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %325, i32 0, i32 63
  store i32 %324, i32* %326, align 4
  %327 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %328 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %327, i32 0, i32 63
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %331 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %330, i32 0, i32 62
  store i32 %329, i32* %331, align 4
  %332 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %333 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %332, i32 0, i32 62
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %336 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %335, i32 0, i32 61
  store i32 %334, i32* %336, align 4
  %337 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %338 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %337, i32 0, i32 61
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %341 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %340, i32 0, i32 60
  store i32 %339, i32* %341, align 4
  %342 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %343 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %342, i32 0, i32 60
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %346 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %345, i32 0, i32 59
  store i32 %344, i32* %346, align 4
  %347 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %348 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %347, i32 0, i32 59
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %351 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %350, i32 0, i32 58
  store i32 %349, i32* %351, align 4
  %352 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %353 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %352, i32 0, i32 58
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %356 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %355, i32 0, i32 57
  store i32 %354, i32* %356, align 4
  %357 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %358 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %357, i32 0, i32 57
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %361 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %360, i32 0, i32 56
  store i32 %359, i32* %361, align 4
  %362 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %363 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %362, i32 0, i32 56
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %366 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %365, i32 0, i32 55
  store i32 %364, i32* %366, align 4
  %367 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %368 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %367, i32 0, i32 55
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %371 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %370, i32 0, i32 54
  store i32 %369, i32* %371, align 4
  %372 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %373 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %372, i32 0, i32 54
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %376 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %375, i32 0, i32 53
  store i32 %374, i32* %376, align 4
  %377 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %378 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %377, i32 0, i32 53
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %381 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %380, i32 0, i32 52
  store i32 %379, i32* %381, align 4
  %382 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %383 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %382, i32 0, i32 52
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %386 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %385, i32 0, i32 51
  store i32 %384, i32* %386, align 4
  %387 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %388 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %387, i32 0, i32 51
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %391 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %390, i32 0, i32 50
  store i32 %389, i32* %391, align 4
  %392 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %393 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %392, i32 0, i32 50
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %396 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %395, i32 0, i32 49
  store i32 %394, i32* %396, align 4
  %397 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %398 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %397, i32 0, i32 49
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %401 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %400, i32 0, i32 48
  store i32 %399, i32* %401, align 4
  %402 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %403 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %402, i32 0, i32 48
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %406 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %405, i32 0, i32 47
  store i32 %404, i32* %406, align 4
  %407 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %408 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %407, i32 0, i32 47
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %411 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %410, i32 0, i32 46
  store i32 %409, i32* %411, align 4
  %412 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %413 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %412, i32 0, i32 46
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %416 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %415, i32 0, i32 45
  store i32 %414, i32* %416, align 4
  %417 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %418 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %417, i32 0, i32 45
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %421 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %420, i32 0, i32 44
  store i32 %419, i32* %421, align 4
  %422 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %423 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %422, i32 0, i32 44
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %426 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %425, i32 0, i32 43
  store i32 %424, i32* %426, align 4
  %427 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %428 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %427, i32 0, i32 43
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %431 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %430, i32 0, i32 42
  store i32 %429, i32* %431, align 4
  %432 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %433 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %432, i32 0, i32 42
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %436 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %435, i32 0, i32 41
  store i32 %434, i32* %436, align 4
  %437 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %438 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %437, i32 0, i32 41
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %441 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %440, i32 0, i32 40
  store i32 %439, i32* %441, align 4
  %442 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %443 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %442, i32 0, i32 40
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %446 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %445, i32 0, i32 39
  store i32 %444, i32* %446, align 4
  %447 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %448 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %447, i32 0, i32 39
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %451 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %450, i32 0, i32 38
  store i32 %449, i32* %451, align 4
  %452 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %453 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %452, i32 0, i32 38
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %456 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %455, i32 0, i32 37
  store i32 %454, i32* %456, align 4
  %457 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %458 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %457, i32 0, i32 37
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %461 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %460, i32 0, i32 36
  store i32 %459, i32* %461, align 4
  %462 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %463 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %462, i32 0, i32 36
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %466 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %465, i32 0, i32 35
  store i32 %464, i32* %466, align 4
  %467 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %468 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %467, i32 0, i32 35
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %471 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %470, i32 0, i32 34
  store i32 %469, i32* %471, align 4
  %472 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %473 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %472, i32 0, i32 34
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %476 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %475, i32 0, i32 33
  store i32 %474, i32* %476, align 4
  br label %477

477:                                              ; preds = %296, %285
  %478 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %479 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_GRP2, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  %484 = xor i1 %483, true
  %485 = zext i1 %484 to i32
  %486 = call i64 @unlikely(i32 %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %504

488:                                              ; preds = %477
  %489 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %490 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %489, i32 0, i32 33
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %493 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %492, i32 0, i32 32
  store i32 %491, i32* %493, align 4
  %494 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %495 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %494, i32 0, i32 32
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %498 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %497, i32 0, i32 31
  store i32 %496, i32* %498, align 4
  %499 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %500 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %499, i32 0, i32 31
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %503 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %502, i32 0, i32 30
  store i32 %501, i32* %503, align 4
  br label %504

504:                                              ; preds = %488, %477
  %505 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %506 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_CRDR, align 4
  %509 = and i32 %507, %508
  %510 = icmp ne i32 %509, 0
  %511 = xor i1 %510, true
  %512 = zext i1 %511 to i32
  %513 = call i64 @unlikely(i32 %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %556

515:                                              ; preds = %504
  %516 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %517 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %516, i32 0, i32 30
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %520 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %519, i32 0, i32 29
  store i32 %518, i32* %520, align 4
  %521 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %522 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %521, i32 0, i32 29
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %525 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %524, i32 0, i32 28
  store i32 %523, i32* %525, align 4
  %526 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %527 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %526, i32 0, i32 28
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %530 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %529, i32 0, i32 27
  store i32 %528, i32* %530, align 4
  %531 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %532 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %531, i32 0, i32 27
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %535 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %534, i32 0, i32 26
  store i32 %533, i32* %535, align 4
  %536 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %537 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %536, i32 0, i32 26
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %540 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %539, i32 0, i32 25
  store i32 %538, i32* %540, align 4
  %541 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %542 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %541, i32 0, i32 25
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %545 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %544, i32 0, i32 24
  store i32 %543, i32* %545, align 4
  %546 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %547 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %546, i32 0, i32 24
  %548 = load i32, i32* %547, align 4
  %549 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %550 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %549, i32 0, i32 23
  store i32 %548, i32* %550, align 4
  %551 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %552 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %551, i32 0, i32 23
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %555 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %554, i32 0, i32 22
  store i32 %553, i32* %555, align 4
  br label %556

556:                                              ; preds = %515, %504
  %557 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %558 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_HOST_POINTER, align 4
  %561 = and i32 %559, %560
  %562 = icmp ne i32 %561, 0
  %563 = xor i1 %562, true
  %564 = zext i1 %563 to i32
  %565 = call i64 @unlikely(i32 %564)
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %598

567:                                              ; preds = %556
  %568 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %569 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %568, i32 0, i32 22
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %572 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %571, i32 0, i32 21
  store i32 %570, i32* %572, align 4
  %573 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %574 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %573, i32 0, i32 21
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %577 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %576, i32 0, i32 20
  store i32 %575, i32* %577, align 4
  %578 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %579 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %578, i32 0, i32 20
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %582 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %581, i32 0, i32 19
  store i32 %580, i32* %582, align 4
  %583 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %584 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %583, i32 0, i32 19
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %587 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %586, i32 0, i32 18
  store i32 %585, i32* %587, align 4
  %588 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %589 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %588, i32 0, i32 18
  %590 = load i32, i32* %589, align 4
  %591 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %592 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %591, i32 0, i32 17
  store i32 %590, i32* %592, align 4
  %593 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %594 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %593, i32 0, i32 17
  %595 = load i32, i32* %594, align 4
  %596 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %597 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %596, i32 0, i32 16
  store i32 %595, i32* %597, align 4
  br label %598

598:                                              ; preds = %567, %556
  %599 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %600 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_XLAT, align 4
  %603 = and i32 %601, %602
  %604 = icmp ne i32 %603, 0
  %605 = xor i1 %604, true
  %606 = zext i1 %605 to i32
  %607 = call i64 @unlikely(i32 %606)
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %620

609:                                              ; preds = %598
  %610 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %611 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %610, i32 0, i32 16
  %612 = load i32, i32* %611, align 4
  %613 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %614 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %613, i32 0, i32 15
  store i32 %612, i32* %614, align 4
  %615 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %616 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %615, i32 0, i32 15
  %617 = load i32, i32* %616, align 4
  %618 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %619 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %618, i32 0, i32 14
  store i32 %617, i32* %619, align 4
  br label %620

620:                                              ; preds = %609, %598
  %621 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %622 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1, align 4
  %625 = and i32 %623, %624
  %626 = icmp ne i32 %625, 0
  %627 = xor i1 %626, true
  %628 = zext i1 %627 to i32
  %629 = call i64 @unlikely(i32 %628)
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %631, label %702

631:                                              ; preds = %620
  %632 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %633 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %632, i32 0, i32 14
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %636 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %635, i32 0, i32 13
  store i32 %634, i32* %636, align 4
  %637 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %638 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %637, i32 0, i32 13
  %639 = load i32, i32* %638, align 4
  %640 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %641 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %640, i32 0, i32 12
  store i32 %639, i32* %641, align 4
  %642 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %643 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %642, i32 0, i32 12
  %644 = load i32, i32* %643, align 4
  %645 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %646 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %645, i32 0, i32 11
  store i32 %644, i32* %646, align 4
  %647 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %648 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %647, i32 0, i32 11
  %649 = load i32, i32* %648, align 4
  %650 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %651 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %650, i32 0, i32 10
  store i32 %649, i32* %651, align 4
  %652 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %653 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %652, i32 0, i32 10
  %654 = load i32, i32* %653, align 4
  %655 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %656 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %655, i32 0, i32 9
  store i32 %654, i32* %656, align 4
  %657 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %658 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %657, i32 0, i32 9
  %659 = load i32, i32* %658, align 4
  %660 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %661 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %660, i32 0, i32 8
  store i32 %659, i32* %661, align 4
  %662 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %663 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %662, i32 0, i32 8
  %664 = load i32, i32* %663, align 4
  %665 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %666 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %665, i32 0, i32 7
  store i32 %664, i32* %666, align 4
  %667 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %668 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %667, i32 0, i32 7
  %669 = load i32, i32* %668, align 4
  %670 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %671 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %670, i32 0, i32 6
  store i32 %669, i32* %671, align 4
  %672 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %673 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %672, i32 0, i32 6
  %674 = load i32, i32* %673, align 4
  %675 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %676 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %675, i32 0, i32 5
  store i32 %674, i32* %676, align 4
  %677 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %678 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %677, i32 0, i32 5
  %679 = load i32, i32* %678, align 4
  %680 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %681 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %680, i32 0, i32 4
  store i32 %679, i32* %681, align 4
  %682 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %683 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %682, i32 0, i32 4
  %684 = load i32, i32* %683, align 4
  %685 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %686 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %685, i32 0, i32 3
  store i32 %684, i32* %686, align 4
  %687 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %688 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %687, i32 0, i32 3
  %689 = load i32, i32* %688, align 4
  %690 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %691 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %690, i32 0, i32 2
  store i32 %689, i32* %691, align 4
  %692 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %693 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %692, i32 0, i32 2
  %694 = load i32, i32* %693, align 4
  %695 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %696 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %695, i32 0, i32 1
  store i32 %694, i32* %696, align 4
  %697 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %698 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %697, i32 0, i32 1
  %699 = load i32, i32* %698, align 4
  %700 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %701 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %700, i32 0, i32 0
  store i32 %699, i32* %701, align 4
  br label %702

702:                                              ; preds = %631, %620
  ret i32 0
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
