; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_page_track.c_kvm_page_track_is_active.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_page_track.c_kvm_page_track_is_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_memory_slot = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32** }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_page_track_is_active(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @page_track_mode_is_valid(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu* %19, i32 %20)
  store %struct.kvm_memory_slot* %21, %struct.kvm_memory_slot** %8, align 8
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %23 = icmp ne %struct.kvm_memory_slot* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %49

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %28 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %31 = call i32 @gfn_to_index(i32 %26, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %33 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @READ_ONCE(i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %25, %24, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @page_track_mode_is_valid(i32) #1

declare dso_local %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @gfn_to_index(i32, i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
