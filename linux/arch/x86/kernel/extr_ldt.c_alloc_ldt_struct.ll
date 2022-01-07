; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ldt.c_alloc_ldt_struct.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ldt.c_alloc_ldt_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldt_struct = type { i32, i32, i8* }

@LDT_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LDT_ENTRY_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ldt_struct* (i32)* @alloc_ldt_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ldt_struct* @alloc_ldt_struct(i32 %0) #0 {
  %2 = alloca %struct.ldt_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldt_struct*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @LDT_ENTRIES, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.ldt_struct* null, %struct.ldt_struct** %2, align 8
  br label %54

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ldt_struct* @kmalloc(i32 16, i32 %11)
  store %struct.ldt_struct* %12, %struct.ldt_struct** %4, align 8
  %13 = load %struct.ldt_struct*, %struct.ldt_struct** %4, align 8
  %14 = icmp ne %struct.ldt_struct* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.ldt_struct* null, %struct.ldt_struct** %2, align 8
  br label %54

16:                                               ; preds = %10
  %17 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %24 = mul i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @vzalloc(i32 %29)
  %31 = load %struct.ldt_struct*, %struct.ldt_struct** %4, align 8
  %32 = getelementptr inbounds %struct.ldt_struct, %struct.ldt_struct* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  br label %39

33:                                               ; preds = %16
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i64 @get_zeroed_page(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.ldt_struct*, %struct.ldt_struct** %4, align 8
  %38 = getelementptr inbounds %struct.ldt_struct, %struct.ldt_struct* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.ldt_struct*, %struct.ldt_struct** %4, align 8
  %41 = getelementptr inbounds %struct.ldt_struct, %struct.ldt_struct* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.ldt_struct*, %struct.ldt_struct** %4, align 8
  %46 = call i32 @kfree(%struct.ldt_struct* %45)
  store %struct.ldt_struct* null, %struct.ldt_struct** %2, align 8
  br label %54

47:                                               ; preds = %39
  %48 = load %struct.ldt_struct*, %struct.ldt_struct** %4, align 8
  %49 = getelementptr inbounds %struct.ldt_struct, %struct.ldt_struct* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.ldt_struct*, %struct.ldt_struct** %4, align 8
  %52 = getelementptr inbounds %struct.ldt_struct, %struct.ldt_struct* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ldt_struct*, %struct.ldt_struct** %4, align 8
  store %struct.ldt_struct* %53, %struct.ldt_struct** %2, align 8
  br label %54

54:                                               ; preds = %47, %44, %15, %9
  %55 = load %struct.ldt_struct*, %struct.ldt_struct** %2, align 8
  ret %struct.ldt_struct* %55
}

declare dso_local %struct.ldt_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @kfree(%struct.ldt_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
