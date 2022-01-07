; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___x86_set_memory_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___x86_set_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memslots = type { i32 }
%struct.kvm_memory_slot = type { i32, i32 }
%struct.kvm_userspace_memory_region = type { i32, i64, i64, i32, i64 }

@KVM_MEM_SLOTS_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@KVM_ADDRESS_SPACE_NUM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__x86_set_memory_region(%struct.kvm* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.kvm_memslots*, align 8
  %14 = alloca %struct.kvm_memory_slot*, align 8
  %15 = alloca %struct.kvm_memory_slot, align 4
  %16 = alloca %struct.kvm_userspace_memory_region, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load %struct.kvm*, %struct.kvm** %6, align 8
  %18 = call %struct.kvm_memslots* @kvm_memslots(%struct.kvm* %17)
  store %struct.kvm_memslots* %18, %struct.kvm_memslots** %13, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @KVM_MEM_SLOTS_NUM, align 4
  %21 = icmp sge i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %110

28:                                               ; preds = %4
  %29 = load %struct.kvm_memslots*, %struct.kvm_memslots** %13, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.kvm_memory_slot* @id_to_memslot(%struct.kvm_memslots* %29, i32 %30)
  store %struct.kvm_memory_slot* %31, %struct.kvm_memory_slot** %14, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %14, align 8
  %36 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %110

42:                                               ; preds = %34
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* @PROT_READ, align 4
  %45 = load i32, i32* @PROT_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MAP_SHARED, align 4
  %48 = load i32, i32* @MAP_ANONYMOUS, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @vm_mmap(i32* null, i32 0, i64 %43, i32 %46, i32 %49, i32 0)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load i64, i64* %12, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %5, align 4
  br label %110

59:                                               ; preds = %42
  br label %67

60:                                               ; preds = %28
  %61 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %14, align 8
  %62 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %110

66:                                               ; preds = %60
  store i64 0, i64* %12, align 8
  br label %67

67:                                               ; preds = %66, %59
  %68 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %14, align 8
  %69 = bitcast %struct.kvm_memory_slot* %15 to i8*
  %70 = bitcast %struct.kvm_memory_slot* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 8, i1 false)
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %95, %67
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @KVM_ADDRESS_SPACE_NUM, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 %77, 16
  %79 = or i32 %76, %78
  %80 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %16, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %16, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %16, i32 0, i32 3
  store i32 %82, i32* %83, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %16, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %16, i32 0, i32 2
  store i64 %86, i64* %87, align 8
  %88 = load %struct.kvm*, %struct.kvm** %6, align 8
  %89 = call i32 @__kvm_set_memory_region(%struct.kvm* %88, %struct.kvm_userspace_memory_region* %16)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %75
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %110

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %71

98:                                               ; preds = %71
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %15, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %15, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = mul nsw i32 %105, %106
  %108 = call i32 @vm_munmap(i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %101, %98
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %92, %65, %55, %39, %25
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.kvm_memslots* @kvm_memslots(%struct.kvm*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.kvm_memory_slot* @id_to_memslot(%struct.kvm_memslots*, i32) #1

declare dso_local i64 @vm_mmap(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__kvm_set_memory_region(%struct.kvm*, %struct.kvm_userspace_memory_region*) #1

declare dso_local i32 @vm_munmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
