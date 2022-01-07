; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_count_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_count_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmm_page_array = type { i64, i64*, %struct.cmm_page_array* }
%struct.memory_isolate_notify = type { i64, i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@cmm_lock = common dso_local global i32 0, align 4
@cmm_page_list = common dso_local global %struct.cmm_page_array* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @cmm_count_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cmm_count_pages(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.memory_isolate_notify*, align 8
  %4 = alloca %struct.cmm_page_array*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.memory_isolate_notify*
  store %struct.memory_isolate_notify* %9, %struct.memory_isolate_notify** %3, align 8
  %10 = load %struct.memory_isolate_notify*, %struct.memory_isolate_notify** %3, align 8
  %11 = getelementptr inbounds %struct.memory_isolate_notify, %struct.memory_isolate_notify* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pfn_to_kaddr(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.memory_isolate_notify*, %struct.memory_isolate_notify** %3, align 8
  %16 = getelementptr inbounds %struct.memory_isolate_notify, %struct.memory_isolate_notify* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = add i64 %14, %19
  store i64 %20, i64* %6, align 8
  %21 = call i32 @spin_lock(i32* @cmm_lock)
  %22 = load %struct.cmm_page_array*, %struct.cmm_page_array** @cmm_page_list, align 8
  store %struct.cmm_page_array* %22, %struct.cmm_page_array** %4, align 8
  br label %23

23:                                               ; preds = %75, %1
  %24 = load %struct.cmm_page_array*, %struct.cmm_page_array** %4, align 8
  %25 = icmp ne %struct.cmm_page_array* %24, null
  br i1 %25, label %26, label %79

26:                                               ; preds = %23
  %27 = load %struct.cmm_page_array*, %struct.cmm_page_array** %4, align 8
  %28 = ptrtoint %struct.cmm_page_array* %27 to i64
  %29 = load i64, i64* %5, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.cmm_page_array*, %struct.cmm_page_array** %4, align 8
  %33 = ptrtoint %struct.cmm_page_array* %32 to i64
  %34 = load i64, i64* %6, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.memory_isolate_notify*, %struct.memory_isolate_notify** %3, align 8
  %38 = getelementptr inbounds %struct.memory_isolate_notify, %struct.memory_isolate_notify* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %36, %31, %26
  store i64 0, i64* %7, align 8
  br label %42

42:                                               ; preds = %72, %41
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.cmm_page_array*, %struct.cmm_page_array** %4, align 8
  %45 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  %49 = load %struct.cmm_page_array*, %struct.cmm_page_array** %4, align 8
  %50 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %48
  %58 = load %struct.cmm_page_array*, %struct.cmm_page_array** %4, align 8
  %59 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.memory_isolate_notify*, %struct.memory_isolate_notify** %3, align 8
  %68 = getelementptr inbounds %struct.memory_isolate_notify, %struct.memory_isolate_notify* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %57, %48
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %42

75:                                               ; preds = %42
  %76 = load %struct.cmm_page_array*, %struct.cmm_page_array** %4, align 8
  %77 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %76, i32 0, i32 2
  %78 = load %struct.cmm_page_array*, %struct.cmm_page_array** %77, align 8
  store %struct.cmm_page_array* %78, %struct.cmm_page_array** %4, align 8
  br label %23

79:                                               ; preds = %23
  %80 = call i32 @spin_unlock(i32* @cmm_lock)
  ret i64 0
}

declare dso_local i64 @pfn_to_kaddr(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
