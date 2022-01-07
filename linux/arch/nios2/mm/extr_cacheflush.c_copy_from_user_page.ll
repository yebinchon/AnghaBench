; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c_copy_from_user_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c_copy_from_user_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_from_user_page(%struct.vm_area_struct* %0, %struct.page* %1, i64 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.page*, %struct.page** %8, align 8
  %16 = call i32 @page_to_pfn(%struct.page* %15)
  %17 = call i32 @flush_cache_page(%struct.vm_area_struct* %13, i64 %14, i32 %16)
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @memcpy(i8* %18, i8* %19, i32 %20)
  %22 = load i8*, i8** %11, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load i8*, i8** %11, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = call i32 @__flush_dcache(i64 %23, i64 %28)
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VM_EXEC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %6
  %37 = load i8*, i8** %11, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load i8*, i8** %11, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %40, %42
  %44 = call i32 @__flush_icache(i64 %38, i64 %43)
  br label %45

45:                                               ; preds = %36, %6
  ret void
}

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @__flush_dcache(i64, i64) #1

declare dso_local i32 @__flush_icache(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
