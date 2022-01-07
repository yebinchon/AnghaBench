; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_add_revmap_chain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_add_revmap_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.revmap_entry* }
%struct.revmap_entry = type { i64, i64 }

@KVMPPC_RMAP_PRESENT = common dso_local global i64 0, align 8
@KVMPPC_RMAP_INDEX = common dso_local global i64 0, align 8
@KVMPPC_RMAP_HPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_add_revmap_chain(%struct.kvm* %0, %struct.revmap_entry* %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.revmap_entry*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.revmap_entry*, align 8
  %12 = alloca %struct.revmap_entry*, align 8
  %13 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.revmap_entry* %1, %struct.revmap_entry** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KVMPPC_RMAP_PRESENT, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %5
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KVMPPC_RMAP_INDEX, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load %struct.kvm*, %struct.kvm** %6, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.revmap_entry*, %struct.revmap_entry** %27, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %28, i64 %29
  store %struct.revmap_entry* %30, %struct.revmap_entry** %11, align 8
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %35 = call %struct.revmap_entry* @real_vmalloc_addr(%struct.revmap_entry* %34)
  store %struct.revmap_entry* %35, %struct.revmap_entry** %11, align 8
  br label %36

36:                                               ; preds = %33, %19
  %37 = load %struct.kvm*, %struct.kvm** %6, align 8
  %38 = getelementptr inbounds %struct.kvm, %struct.kvm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.revmap_entry*, %struct.revmap_entry** %40, align 8
  %42 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %43 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %41, i64 %44
  store %struct.revmap_entry* %45, %struct.revmap_entry** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load %struct.revmap_entry*, %struct.revmap_entry** %12, align 8
  %50 = call %struct.revmap_entry* @real_vmalloc_addr(%struct.revmap_entry* %49)
  store %struct.revmap_entry* %50, %struct.revmap_entry** %12, align 8
  br label %51

51:                                               ; preds = %48, %36
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.revmap_entry*, %struct.revmap_entry** %7, align 8
  %54 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %56 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.revmap_entry*, %struct.revmap_entry** %7, align 8
  %59 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.revmap_entry*, %struct.revmap_entry** %12, align 8
  %62 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %65 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %84

66:                                               ; preds = %5
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.revmap_entry*, %struct.revmap_entry** %7, align 8
  %69 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.revmap_entry*, %struct.revmap_entry** %7, align 8
  %71 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %70, i32 0, i32 1
  store i64 %67, i64* %71, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @KVMPPC_RMAP_INDEX, align 8
  %75 = xor i64 %74, -1
  %76 = and i64 %73, %75
  %77 = load i64, i64* %9, align 8
  %78 = or i64 %76, %77
  %79 = load i64, i64* @KVMPPC_RMAP_PRESENT, align 8
  %80 = or i64 %78, %79
  %81 = load i64, i64* @KVMPPC_RMAP_HPT, align 8
  %82 = or i64 %80, %81
  %83 = load i64*, i64** %8, align 8
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %66, %51
  %85 = load i64*, i64** %8, align 8
  %86 = call i32 @unlock_rmap(i64* %85)
  ret void
}

declare dso_local %struct.revmap_entry* @real_vmalloc_addr(%struct.revmap_entry*) #1

declare dso_local i32 @unlock_rmap(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
