; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c___flush_ptrace_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c___flush_ptrace_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@FLAG_PA_CORE_IN_MM = common dso_local global i32 0, align 4
@FLAG_PA_IS_EXEC = common dso_local global i32 0, align 4
@flush_ptrace_access_other = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64, i8*, i64, i32)* @__flush_ptrace_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__flush_ptrace_access(%struct.page* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = call i64 (...) @cache_is_vivt()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @FLAG_PA_CORE_IN_MM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @__cpuc_coherent_kern_range(i64 %23, i64 %26)
  br label %28

28:                                               ; preds = %20, %15
  br label %67

29:                                               ; preds = %5
  %30 = call i64 (...) @cache_is_vipt_aliasing()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = call i32 @page_to_pfn(%struct.page* %33)
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @flush_pfn_alias(i32 %34, i64 %35)
  %37 = call i32 (...) @__flush_icache_all()
  br label %67

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @FLAG_PA_IS_EXEC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %44 to i64
  store i64 %45, i64* %12, align 8
  %46 = call i64 (...) @icache_is_vipt_aliasing()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @page_to_pfn(%struct.page* %49)
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @flush_icache_alias(i32 %50, i64 %51, i64 %52)
  br label %60

54:                                               ; preds = %43
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %56, %57
  %59 = call i32 @__cpuc_coherent_kern_range(i64 %55, i64 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = call i64 (...) @cache_ops_need_broadcast()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @flush_ptrace_access_other, align 4
  %65 = call i32 @smp_call_function(i32 %64, i32* null, i32 1)
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %28, %32, %66, %38
  ret void
}

declare dso_local i64 @cache_is_vivt(...) #1

declare dso_local i32 @__cpuc_coherent_kern_range(i64, i64) #1

declare dso_local i64 @cache_is_vipt_aliasing(...) #1

declare dso_local i32 @flush_pfn_alias(i32, i64) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @__flush_icache_all(...) #1

declare dso_local i64 @icache_is_vipt_aliasing(...) #1

declare dso_local i32 @flush_icache_alias(i32, i64, i64) #1

declare dso_local i64 @cache_ops_need_broadcast(...) #1

declare dso_local i32 @smp_call_function(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
