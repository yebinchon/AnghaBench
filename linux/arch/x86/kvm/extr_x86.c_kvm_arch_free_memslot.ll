; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_free_memslot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_free_memslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32**, i32** }

@KVM_NR_PAGE_SIZES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_free_memslot(%struct.kvm* %0, %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %97, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @KVM_NR_PAGE_SIZES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %100

12:                                               ; preds = %8
  %13 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %14 = icmp ne %struct.kvm_memory_slot* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %25 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %23, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %15, %12
  %34 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kvfree(i32* %41)
  %43 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %33, %15
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %97

54:                                               ; preds = %50
  %55 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %56 = icmp ne %struct.kvm_memory_slot* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %61, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %68 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %66, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %57, %54
  %78 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %79 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %81, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @kvfree(i32* %86)
  %88 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %89 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %77, %57
  br label %97

97:                                               ; preds = %96, %53
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %8

100:                                              ; preds = %8
  %101 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %102 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %103 = call i32 @kvm_page_track_free_memslot(%struct.kvm_memory_slot* %101, %struct.kvm_memory_slot* %102)
  ret void
}

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @kvm_page_track_free_memslot(%struct.kvm_memory_slot*, %struct.kvm_memory_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
