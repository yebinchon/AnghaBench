; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_slot_rmap_walk_next.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_slot_rmap_walk_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot_rmap_walk_iterator = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slot_rmap_walk_iterator*)* @slot_rmap_walk_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slot_rmap_walk_next(%struct.slot_rmap_walk_iterator* %0) #0 {
  %2 = alloca %struct.slot_rmap_walk_iterator*, align 8
  store %struct.slot_rmap_walk_iterator* %0, %struct.slot_rmap_walk_iterator** %2, align 8
  %3 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %2, align 8
  %4 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %2, align 8
  %8 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %6, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %2, align 8
  %13 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @KVM_HPAGE_GFN_SHIFT(i64 %14)
  %16 = shl i64 1, %15
  %17 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %2, align 8
  %18 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, %16
  store i64 %20, i64* %18, align 8
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %2, align 8
  %23 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %2, align 8
  %27 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %2, align 8
  %32 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %39

33:                                               ; preds = %21
  %34 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %2, align 8
  %35 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %2, align 8
  %36 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @rmap_walk_init_level(%struct.slot_rmap_walk_iterator* %34, i64 %37)
  br label %39

39:                                               ; preds = %33, %30, %11
  ret void
}

declare dso_local i64 @KVM_HPAGE_GFN_SHIFT(i64) #1

declare dso_local i32 @rmap_walk_init_level(%struct.slot_rmap_walk_iterator*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
