; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_pte_list_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_pte_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_rmap_head = type { i64 }
%struct.pte_list_desc = type { i32**, %struct.pte_list_desc* }

@.str = private unnamed_addr constant [28 x i8] c"pte_list_add: %p %llx 0->1\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"pte_list_add: %p %llx 1->many\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"pte_list_add: %p %llx many->many\0A\00", align 1
@PTE_LIST_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32*, %struct.kvm_rmap_head*)* @pte_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_list_add(%struct.kvm_vcpu* %0, i32* %1, %struct.kvm_rmap_head* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvm_rmap_head*, align 8
  %7 = alloca %struct.pte_list_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.kvm_rmap_head* %2, %struct.kvm_rmap_head** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %6, align 8
  %11 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rmap_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %15, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = ptrtoint i32* %19 to i64
  %21 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %6, align 8
  %22 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %135

23:                                               ; preds = %3
  %24 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %6, align 8
  %25 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %26, 1
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rmap_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %30, i32 %32)
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i8* @mmu_alloc_pte_list_desc(%struct.kvm_vcpu* %34)
  %36 = bitcast i8* %35 to %struct.pte_list_desc*
  store %struct.pte_list_desc* %36, %struct.pte_list_desc** %7, align 8
  %37 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %6, align 8
  %38 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %42 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  store i32* %40, i32** %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %47 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  store i32* %45, i32** %49, align 8
  %50 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %51 = ptrtoint %struct.pte_list_desc* %50 to i64
  %52 = or i64 %51, 1
  %53 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %6, align 8
  %54 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %134

57:                                               ; preds = %23
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rmap_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %58, i32 %60)
  %62 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %6, align 8
  %63 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, -2
  %66 = inttoptr i64 %65 to %struct.pte_list_desc*
  store %struct.pte_list_desc* %66, %struct.pte_list_desc** %7, align 8
  br label %67

67:                                               ; preds = %84, %57
  %68 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %69 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* @PTE_LIST_EXT, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %79 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %78, i32 0, i32 1
  %80 = load %struct.pte_list_desc*, %struct.pte_list_desc** %79, align 8
  %81 = icmp ne %struct.pte_list_desc* %80, null
  br label %82

82:                                               ; preds = %77, %67
  %83 = phi i1 [ false, %67 ], [ %81, %77 ]
  br i1 %83, label %84, label %91

84:                                               ; preds = %82
  %85 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %86 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %85, i32 0, i32 1
  %87 = load %struct.pte_list_desc*, %struct.pte_list_desc** %86, align 8
  store %struct.pte_list_desc* %87, %struct.pte_list_desc** %7, align 8
  %88 = load i32, i32* @PTE_LIST_EXT, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %67

91:                                               ; preds = %82
  %92 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %93 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* @PTE_LIST_EXT, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %94, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %103 = call i8* @mmu_alloc_pte_list_desc(%struct.kvm_vcpu* %102)
  %104 = bitcast i8* %103 to %struct.pte_list_desc*
  %105 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %106 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %105, i32 0, i32 1
  store %struct.pte_list_desc* %104, %struct.pte_list_desc** %106, align 8
  %107 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %108 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %107, i32 0, i32 1
  %109 = load %struct.pte_list_desc*, %struct.pte_list_desc** %108, align 8
  store %struct.pte_list_desc* %109, %struct.pte_list_desc** %7, align 8
  br label %110

110:                                              ; preds = %101, %91
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %123, %110
  %112 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %113 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %111

126:                                              ; preds = %111
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.pte_list_desc*, %struct.pte_list_desc** %7, align 8
  %129 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  store i32* %127, i32** %133, align 8
  br label %134

134:                                              ; preds = %126, %29
  br label %135

135:                                              ; preds = %134, %14
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32 @rmap_printk(i8*, i32*, i32) #1

declare dso_local i8* @mmu_alloc_pte_list_desc(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
