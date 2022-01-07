; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pgtable.c_get_pmd_from_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pgtable.c_get_pmd_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@PMD_FRAG_NR = common dso_local global i32 0, align 4
@PMD_FRAG_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mm_struct*)* @get_pmd_from_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_pmd_from_cache(%struct.mm_struct* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %6 = load i32, i32* @PMD_FRAG_NR, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %42

9:                                                ; preds = %1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %9
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @PMD_FRAG_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %20, i64 %22
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* @PAGE_MASK, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i8* null, i8** %4, align 8
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  br label %36

36:                                               ; preds = %31, %9
  %37 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %2, align 8
  br label %42

42:                                               ; preds = %36, %8
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
