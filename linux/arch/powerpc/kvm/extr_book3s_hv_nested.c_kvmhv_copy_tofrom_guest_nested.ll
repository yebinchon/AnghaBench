; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_copy_tofrom_guest_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_copy_tofrom_guest_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_nested_guest = type { i32, i32 }

@H_PARAMETER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@H_NO_MEM = common dso_local global i64 0, align 8
@H_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmhv_copy_tofrom_guest_nested(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_nested_guest*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %14, i32 4)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %17, i32 5)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %20, i32 6)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %23, i32 7)
  %25 = ptrtoint i8* %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %26, i32 8)
  %28 = ptrtoint i8* %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %29, i32 9)
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @H_PARAMETER, align 8
  store i64 %43, i64* %2, align 8
  br label %132

44:                                               ; preds = %39, %1
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, -4503599627370496
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @H_PARAMETER, align 8
  store i64 %50, i64* %2, align 8
  br label %132

51:                                               ; preds = %44
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kzalloc(i64 %52, i32 %53)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* @H_NO_MEM, align 8
  store i64 %58, i64* %2, align 8
  br label %132

59:                                               ; preds = %51
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.kvm_nested_guest* @kvmhv_get_nested(i32 %62, i32 %63, i32 0)
  store %struct.kvm_nested_guest* %64, %struct.kvm_nested_guest** %4, align 8
  %65 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %4, align 8
  %66 = icmp ne %struct.kvm_nested_guest* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = load i64, i64* @H_PARAMETER, align 8
  store i64 %68, i64* %13, align 8
  br label %126

69:                                               ; preds = %59
  %70 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %70, i32 0, i32 0
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %69
  %76 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %4, align 8
  %77 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @__kvmhv_copy_tofrom_guest_radix(i32 %78, i32 %79, i32 %80, i8* %81, i8* null, i64 %82)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %130

87:                                               ; preds = %75
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i64 @kvm_vcpu_write_guest(%struct.kvm_vcpu* %88, i64 %89, i8* %90, i64 %91)
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %13, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %130

96:                                               ; preds = %87
  br label %119

97:                                               ; preds = %69
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @kvm_vcpu_read_guest(%struct.kvm_vcpu* %98, i64 %99, i8* %100, i64 %101)
  store i64 %102, i64* %13, align 8
  %103 = load i64, i64* %13, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %130

106:                                              ; preds = %97
  %107 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %4, align 8
  %108 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i64 @__kvmhv_copy_tofrom_guest_radix(i32 %109, i32 %110, i32 %111, i8* null, i8* %112, i64 %113)
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %130

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %96
  br label %120

120:                                              ; preds = %130, %119
  %121 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %4, align 8
  %122 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %4, align 8
  %125 = call i32 @kvmhv_put_nested(%struct.kvm_nested_guest* %124)
  br label %126

126:                                              ; preds = %120, %67
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @kfree(i8* %127)
  %129 = load i64, i64* %13, align 8
  store i64 %129, i64* %2, align 8
  br label %132

130:                                              ; preds = %117, %105, %95, %86
  %131 = load i64, i64* @H_NOT_FOUND, align 8
  store i64 %131, i64* %13, align 8
  br label %120

132:                                              ; preds = %126, %57, %49, %42
  %133 = load i64, i64* %2, align 8
  ret i64 %133
}

declare dso_local i8* @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local %struct.kvm_nested_guest* @kvmhv_get_nested(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__kvmhv_copy_tofrom_guest_radix(i32, i32, i32, i8*, i8*, i64) #1

declare dso_local i64 @kvm_vcpu_write_guest(%struct.kvm_vcpu*, i64, i8*, i64) #1

declare dso_local i64 @kvm_vcpu_read_guest(%struct.kvm_vcpu*, i64, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvmhv_put_nested(%struct.kvm_nested_guest*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
