; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_vmcs12_to_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_vmcs12_to_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_vmcs_field = type { i32, i32 }
%struct.vcpu_vmx = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.vmcs* }
%struct.vmcs = type { i32 }
%struct.TYPE_3__ = type { %struct.vmcs* }
%struct.vmcs12 = type { i32 }

@shadow_read_write_fields = common dso_local global %struct.shadow_vmcs_field* null, align 8
@shadow_read_only_fields = common dso_local global %struct.shadow_vmcs_field* null, align 8
@max_shadow_read_write_fields = common dso_local global i32 0, align 4
@max_shadow_read_only_fields = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @copy_vmcs12_to_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_vmcs12_to_shadow(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca [2 x %struct.shadow_vmcs_field*], align 16
  %4 = alloca [2 x i32], align 4
  %5 = alloca %struct.vmcs*, align 8
  %6 = alloca %struct.vmcs12*, align 8
  %7 = alloca %struct.shadow_vmcs_field, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %11 = getelementptr inbounds [2 x %struct.shadow_vmcs_field*], [2 x %struct.shadow_vmcs_field*]* %3, i64 0, i64 0
  %12 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** @shadow_read_write_fields, align 8
  store %struct.shadow_vmcs_field* %12, %struct.shadow_vmcs_field** %11, align 8
  %13 = getelementptr inbounds %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** %11, i64 1
  %14 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** @shadow_read_only_fields, align 8
  store %struct.shadow_vmcs_field* %14, %struct.shadow_vmcs_field** %13, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* @max_shadow_read_write_fields, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @max_shadow_read_only_fields, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.vmcs*, %struct.vmcs** %21, align 8
  store %struct.vmcs* %22, %struct.vmcs** %5, align 8
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %24 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %23, i32 0, i32 1
  %25 = call %struct.vmcs12* @get_vmcs12(i32* %24)
  store %struct.vmcs12* %25, %struct.vmcs12** %6, align 8
  %26 = load %struct.vmcs*, %struct.vmcs** %5, align 8
  %27 = icmp ne %struct.vmcs* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %85

33:                                               ; preds = %1
  %34 = load %struct.vmcs*, %struct.vmcs** %5, align 8
  %35 = call i32 @vmcs_load(%struct.vmcs* %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %73, %33
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds [2 x %struct.shadow_vmcs_field*], [2 x %struct.shadow_vmcs_field*]* %3, i64 0, i64 0
  %39 = call i32 @ARRAY_SIZE(%struct.shadow_vmcs_field** %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %69, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x %struct.shadow_vmcs_field*], [2 x %struct.shadow_vmcs_field*]* %3, i64 0, i64 %51
  %53 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %53, i64 %55
  %57 = bitcast %struct.shadow_vmcs_field* %7 to i8*
  %58 = bitcast %struct.shadow_vmcs_field* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 8, i1 false)
  %59 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %60 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %7, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @vmcs12_read_any(%struct.vmcs12* %59, i32 %61, i32 %63)
  store i64 %64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @__vmcs_writel(i32 %66, i64 %67)
  br label %69

69:                                               ; preds = %49
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %42

72:                                               ; preds = %42
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %36

76:                                               ; preds = %36
  %77 = load %struct.vmcs*, %struct.vmcs** %5, align 8
  %78 = call i32 @vmcs_clear(%struct.vmcs* %77)
  %79 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %80 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.vmcs*, %struct.vmcs** %82, align 8
  %84 = call i32 @vmcs_load(%struct.vmcs* %83)
  br label %85

85:                                               ; preds = %76, %32
  ret void
}

declare dso_local %struct.vmcs12* @get_vmcs12(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @vmcs_load(%struct.vmcs*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.shadow_vmcs_field**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vmcs12_read_any(%struct.vmcs12*, i32, i32) #1

declare dso_local i32 @__vmcs_writel(i32, i64) #1

declare dso_local i32 @vmcs_clear(%struct.vmcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
