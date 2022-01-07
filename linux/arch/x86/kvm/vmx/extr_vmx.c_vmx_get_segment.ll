; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_get_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_get_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.vcpu_vmx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_segment*, i64 }

@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@VCPU_SREG_TR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_get_segment(%struct.kvm_vcpu* %0, %struct.kvm_segment* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_segment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu_vmx*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %9)
  store %struct.vcpu_vmx* %10, %struct.vcpu_vmx** %7, align 8
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %23 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.kvm_segment*, %struct.kvm_segment** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %25, i64 %27
  %29 = bitcast %struct.kvm_segment* %21 to i8*
  %30 = bitcast %struct.kvm_segment* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 56, i1 false)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @VCPU_SREG_TR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %20
  %35 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @vmx_read_guest_seg_selector(%struct.vcpu_vmx* %38, i32 %39)
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %20
  br label %120

43:                                               ; preds = %34
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @vmx_read_guest_seg_base(%struct.vcpu_vmx* %44, i32 %45)
  %47 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %47, i32 0, i32 11
  store i8* %46, i8** %48, align 8
  %49 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @vmx_read_guest_seg_selector(%struct.vcpu_vmx* %49, i32 %50)
  %52 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %120

54:                                               ; preds = %16, %3
  %55 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @vmx_read_guest_seg_base(%struct.vcpu_vmx* %55, i32 %56)
  %58 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %58, i32 0, i32 11
  store i8* %57, i8** %59, align 8
  %60 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @vmx_read_guest_seg_limit(%struct.vcpu_vmx* %60, i32 %61)
  %63 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %64 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 4
  %65 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @vmx_read_guest_seg_selector(%struct.vcpu_vmx* %65, i32 %66)
  %68 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %69 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @vmx_read_guest_seg_ar(%struct.vcpu_vmx* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = ashr i32 %73, 16
  %75 = and i32 %74, 1
  %76 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %77 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 15
  %80 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %81 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 4
  %84 = and i32 %83, 1
  %85 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %86 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 5
  %89 = and i32 %88, 3
  %90 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %91 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %93 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %99 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 12
  %102 = and i32 %101, 1
  %103 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %104 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = ashr i32 %105, 13
  %107 = and i32 %106, 1
  %108 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %109 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %8, align 4
  %111 = ashr i32 %110, 14
  %112 = and i32 %111, 1
  %113 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %114 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 15
  %117 = and i32 %116, 1
  %118 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %119 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %118, i32 0, i32 9
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %54, %43, %42
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vmx_read_guest_seg_selector(%struct.vcpu_vmx*, i32) #1

declare dso_local i8* @vmx_read_guest_seg_base(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_read_guest_seg_limit(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_read_guest_seg_ar(%struct.vcpu_vmx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
