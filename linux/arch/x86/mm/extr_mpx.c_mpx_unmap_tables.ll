; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_unmap_tables.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_unmap_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i64)* @mpx_unmap_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpx_unmap_tables(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @trace_mpx_unmap_search(i64 %12, i64 %13)
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %41, %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, 1
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = call i32 @bd_entry_virt_space(%struct.mm_struct* %23)
  %25 = call i64 @ALIGN(i64 %22, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %30, %20
  %33 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @try_unmap_single_bt(%struct.mm_struct* %33, i64 %34, i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %32
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %8, align 8
  br label %16

43:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @trace_mpx_unmap_search(i64, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @bd_entry_virt_space(%struct.mm_struct*) #1

declare dso_local i32 @try_unmap_single_bt(%struct.mm_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
