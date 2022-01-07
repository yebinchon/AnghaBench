; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vmx_segment_field = type { i32, i32, i32, i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i32, i64 }
%struct.vcpu_vmx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_segment*, i64 }

@kvm_vmx_segment_fields = common dso_local global %struct.kvm_vmx_segment_field* null, align 8
@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@VCPU_SREG_TR = common dso_local global i32 0, align 4
@enable_unrestricted_guest = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_set_segment(%struct.kvm_vcpu* %0, %struct.kvm_segment* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_segment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu_vmx*, align 8
  %8 = alloca %struct.kvm_vmx_segment_field*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %9)
  store %struct.vcpu_vmx* %10, %struct.vcpu_vmx** %7, align 8
  %11 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** @kvm_vmx_segment_fields, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %11, i64 %13
  store %struct.kvm_vmx_segment_field* %14, %struct.kvm_vmx_segment_field** %8, align 8
  %15 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %16 = call i32 @vmx_segment_cache_clear(%struct.vcpu_vmx* %15)
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %22
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %28 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.kvm_segment*, %struct.kvm_segment** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %30, i64 %32
  %34 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %35 = bitcast %struct.kvm_segment* %33 to i8*
  %36 = bitcast %struct.kvm_segment* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @VCPU_SREG_TR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %26
  %41 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %42 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vmcs_write16(i32 %43, i32 %46)
  br label %64

48:                                               ; preds = %26
  %49 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %50 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %56 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.kvm_segment*, %struct.kvm_segment** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %58, i64 %60
  %62 = call i32 @fix_rmode_seg(i32 %54, %struct.kvm_segment* %61)
  br label %63

63:                                               ; preds = %53, %48
  br label %64

64:                                               ; preds = %63, %40
  br label %105

65:                                               ; preds = %22, %3
  %66 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %67 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @vmcs_writel(i32 %68, i32 %71)
  %73 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %74 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %77 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @vmcs_write32(i32 %75, i32 %78)
  %80 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %81 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %84 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @vmcs_write16(i32 %82, i32 %85)
  %87 = load i64, i64* @enable_unrestricted_guest, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %65
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %95 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %93, %89, %65
  %99 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %100 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %103 = call i32 @vmx_segment_access_rights(%struct.kvm_segment* %102)
  %104 = call i32 @vmcs_write32(i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %98, %64
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %107 = call i32 @emulation_required(%struct.kvm_vcpu* %106)
  %108 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %109 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_segment_cache_clear(%struct.vcpu_vmx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @fix_rmode_seg(i32, %struct.kvm_segment*) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vmx_segment_access_rights(%struct.kvm_segment*) #1

declare dso_local i32 @emulation_required(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
