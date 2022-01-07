; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_free_roots.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_free_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_mmu = type { i64, i64, i64, i64*, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@invalid_list = common dso_local global i32 0, align 4
@KVM_MMU_ROOT_CURRENT = common dso_local global i32 0, align 4
@KVM_MMU_NUM_PREV_ROOTS = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@PT64_ROOT_4LEVEL = common dso_local global i64 0, align 8
@INVALID_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mmu_free_roots(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_mmu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @invalid_list, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @KVM_MMU_ROOT_CURRENT, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @KVM_MMU_NUM_PREV_ROOTS, align 4
  %15 = load i32, i32* @BITS_PER_LONG, align 4
  %16 = icmp sge i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @VALID_PAGE(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %21, %3
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @KVM_MMU_NUM_PREV_ROOTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @KVM_MMU_ROOT_PREVIOUS(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %39, i32 0, i32 6
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @VALID_PAGE(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %54

50:                                               ; preds = %38, %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %28

54:                                               ; preds = %49, %28
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @KVM_MMU_NUM_PREV_ROOTS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %164

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %89, %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @KVM_MMU_NUM_PREV_ROOTS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @KVM_MMU_ROOT_PREVIOUS(i32 %72)
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %81 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %80, i32 0, i32 6
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @mmu_free_root_page(%struct.TYPE_5__* %79, i64* %86, i32* @invalid_list)
  br label %88

88:                                               ; preds = %76, %70
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %66

92:                                               ; preds = %66
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %154

95:                                               ; preds = %92
  %96 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %97 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %103 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %109 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107, %101
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %117 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %116, i32 0, i32 0
  %118 = call i32 @mmu_free_root_page(%struct.TYPE_5__* %115, i64* %117, i32* @invalid_list)
  br label %151

119:                                              ; preds = %107, %95
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %144, %119
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %123, label %147

123:                                              ; preds = %120
  %124 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %125 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %124, i32 0, i32 3
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %123
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 0
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %137 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %136, i32 0, i32 3
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = call i32 @mmu_free_root_page(%struct.TYPE_5__* %135, i64* %141, i32* @invalid_list)
  br label %143

143:                                              ; preds = %132, %123
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %120

147:                                              ; preds = %120
  %148 = load i64, i64* @INVALID_PAGE, align 8
  %149 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %150 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %112
  %152 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %153 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %92
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %156 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = call i32 @kvm_mmu_commit_zap_page(%struct.TYPE_5__* %157, i32* @invalid_list)
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %160 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock(i32* %162)
  br label %164

164:                                              ; preds = %154, %58
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @VALID_PAGE(i64) #1

declare dso_local i32 @KVM_MMU_ROOT_PREVIOUS(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mmu_free_root_page(%struct.TYPE_5__*, i64*, i32*) #1

declare dso_local i32 @kvm_mmu_commit_zap_page(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
