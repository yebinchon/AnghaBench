; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_tlb.c___flush_tlb_pending.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_tlb.c___flush_tlb_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc64_tlb_batch = type { i32, i32, i32, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_tlb_pending(%struct.ppc64_tlb_batch* %0) #0 {
  %2 = alloca %struct.ppc64_tlb_batch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ppc64_tlb_batch* %0, %struct.ppc64_tlb_batch** %2, align 8
  %5 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %6 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %9 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @mm_is_thread_local(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %16 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %21 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %26 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %29 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @flush_hash_page(i32 %19, i32 %24, i32 %27, i32 %30, i32 %31)
  br label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @flush_hash_range(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %14
  %38 = load %struct.ppc64_tlb_batch*, %struct.ppc64_tlb_batch** %2, align 8
  %39 = getelementptr inbounds %struct.ppc64_tlb_batch, %struct.ppc64_tlb_batch* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  ret void
}

declare dso_local i32 @mm_is_thread_local(i32) #1

declare dso_local i32 @flush_hash_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @flush_hash_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
