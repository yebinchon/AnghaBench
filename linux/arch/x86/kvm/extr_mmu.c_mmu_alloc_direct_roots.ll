; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_alloc_direct_roots.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_alloc_direct_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32*, {}*, i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_mmu_page = type { i32*, i32 }

@PT64_ROOT_4LEVEL = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@ACC_ALL = common dso_local global i32 0, align 4
@PT32E_ROOT_LEVEL = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PT32_ROOT_LEVEL = common dso_local global i64 0, align 8
@PT_PRESENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @mmu_alloc_direct_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_alloc_direct_roots(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i64 @make_mmu_pages_available(%struct.kvm_vcpu* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %174

32:                                               ; preds = %15
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @ACC_ALL, align 4
  %41 = call %struct.kvm_mmu_page* @kvm_mmu_get_page(%struct.kvm_vcpu* %33, i32 0, i32 0, i64 %39, i32 1, i32 %40)
  store %struct.kvm_mmu_page* %41, %struct.kvm_mmu_page** %4, align 8
  %42 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i8* @__pa(i32* %53)
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  store i8* %54, i8** %59, align 8
  br label %159

60:                                               ; preds = %1
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PT32E_ROOT_LEVEL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %156

69:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %140, %69
  %71 = load i32, i32* %5, align 4
  %72 = icmp ult i32 %71, 4
  br i1 %72, label %73, label %143

73:                                               ; preds = %70
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @VALID_PAGE(i32 %84)
  %86 = call i32 @MMU_WARN_ON(i32 %85)
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %93 = call i64 @make_mmu_pages_available(%struct.kvm_vcpu* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %73
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load i32, i32* @ENOSPC, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %174

103:                                              ; preds = %73
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @PAGE_SHIFT, align 4
  %107 = sub nsw i32 30, %106
  %108 = shl i32 %105, %107
  %109 = load i32, i32* %5, align 4
  %110 = shl i32 %109, 30
  %111 = load i64, i64* @PT32_ROOT_LEVEL, align 8
  %112 = load i32, i32* @ACC_ALL, align 4
  %113 = call %struct.kvm_mmu_page* @kvm_mmu_get_page(%struct.kvm_vcpu* %104, i32 %108, i32 %110, i64 %111, i32 1, i32 %112)
  store %struct.kvm_mmu_page* %113, %struct.kvm_mmu_page** %4, align 8
  %114 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %115 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i8* @__pa(i32* %116)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %6, align 4
  %119 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %120 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @PT_PRESENT_MASK, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %130, i32* %139, align 4
  br label %140

140:                                              ; preds = %103
  %141 = load i32, i32* %5, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %70

143:                                              ; preds = %70
  %144 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %145 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = call i8* @__pa(i32* %149)
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %152 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  store i8* %150, i8** %155, align 8
  br label %158

156:                                              ; preds = %60
  %157 = call i32 (...) @BUG()
  br label %158

158:                                              ; preds = %156, %143
  br label %159

159:                                              ; preds = %158, %32
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %161 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = bitcast {}** %164 to i32 (%struct.kvm_vcpu*)**
  %166 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %165, align 8
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %168 = call i32 %166(%struct.kvm_vcpu* %167)
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %170 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  store i32 %168, i32* %173, align 8
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %159, %95, %24
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @make_mmu_pages_available(%struct.kvm_vcpu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.kvm_mmu_page* @kvm_mmu_get_page(%struct.kvm_vcpu*, i32, i32, i64, i32, i32) #1

declare dso_local i8* @__pa(i32*) #1

declare dso_local i32 @MMU_WARN_ON(i32) #1

declare dso_local i32 @VALID_PAGE(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
