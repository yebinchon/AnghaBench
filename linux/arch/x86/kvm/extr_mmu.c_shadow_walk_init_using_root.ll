; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_shadow_walk_init_using_root.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_shadow_walk_init_using_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_shadow_walk_iterator = type { i32, i64, i64 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64*, i32 }

@PT64_ROOT_4LEVEL = common dso_local global i64 0, align 8
@PT32E_ROOT_LEVEL = common dso_local global i64 0, align 8
@PT64_BASE_ADDR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_shadow_walk_iterator*, %struct.kvm_vcpu*, i64, i32)* @shadow_walk_init_using_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shadow_walk_init_using_root(%struct.kvm_shadow_walk_iterator* %0, %struct.kvm_vcpu* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_shadow_walk_iterator*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_shadow_walk_iterator* %0, %struct.kvm_shadow_walk_iterator** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %45, %37, %28, %4
  %51 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %52 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PT32E_ROOT_LEVEL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %50
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %57, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = ashr i32 %73, 30
  %75 = and i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %80 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* @PT64_BASE_ADDR_MASK, align 8
  %82 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %83 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %91 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %56
  %95 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %5, align 8
  %96 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %56
  br label %98

98:                                               ; preds = %97, %50
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
