; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mark_unsync.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mark_unsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @mark_unsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_unsync(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.kvm_mmu_page*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @__pa(i32* %5)
  %7 = call %struct.kvm_mmu_page* @page_header(i32 %6)
  store %struct.kvm_mmu_page* %7, %struct.kvm_mmu_page** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = ptrtoint i32* %8 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @__test_and_set_bit(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %34

24:                                               ; preds = %1
  %25 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %34

31:                                               ; preds = %24
  %32 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %33 = call i32 @kvm_mmu_mark_parents_unsync(%struct.kvm_mmu_page* %32)
  br label %34

34:                                               ; preds = %31, %30, %23
  ret void
}

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i64 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @kvm_mmu_mark_parents_unsync(%struct.kvm_mmu_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
