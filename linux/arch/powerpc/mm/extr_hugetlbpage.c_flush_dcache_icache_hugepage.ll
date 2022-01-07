; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_flush_dcache_icache_hugepage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c_flush_dcache_icache_hugepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_icache_hugepage(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call i32 @PageCompound(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %38, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i32 @compound_nr(%struct.page* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %11
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @PageHighMem(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.page, %struct.page* %21, i64 %23
  %25 = call i8* @page_address(%struct.page* %24)
  %26 = call i32 @__flush_dcache_icache(i8* %25)
  br label %37

27:                                               ; preds = %16
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.page, %struct.page* %28, i64 %30
  %32 = call i8* @kmap_atomic(%struct.page* %31)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @__flush_dcache_icache(i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @kunmap_atomic(i8* %35)
  br label %37

37:                                               ; preds = %27, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %11

41:                                               ; preds = %11
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @compound_nr(%struct.page*) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i32 @__flush_dcache_icache(i8*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
