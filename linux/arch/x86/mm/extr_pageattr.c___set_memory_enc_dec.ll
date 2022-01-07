; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___set_memory_enc_dec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___set_memory_enc_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpa_data = type { i64*, i32, i32, i8*, i8* }

@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"misaligned address: %#lx\0A\00", align 1
@_PAGE_ENC = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @__set_memory_enc_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_memory_enc_dec(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpa_data, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @mem_encrypt_active()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @PAGE_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @WARN_ONCE(i64 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i64, i64* @PAGE_MASK, align 8
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %21, %13
  %26 = call i32 @memset(%struct.cpa_data* %8, i32 0, i32 32)
  %27 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %8, i32 0, i32 0
  store i64* %5, i64** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %8, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @_PAGE_ENC, align 4
  %34 = call i8* @__pgprot(i32 %33)
  br label %37

35:                                               ; preds = %25
  %36 = call i8* @__pgprot(i32 0)
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i8* [ %34, %32 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %8, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i8* @__pgprot(i32 0)
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @_PAGE_ENC, align 4
  %46 = call i8* @__pgprot(i32 %45)
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i8* [ %43, %42 ], [ %46, %44 ]
  %49 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %8, i32 0, i32 3
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_mm, i32 0, i32 0), align 4
  %51 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %8, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = call i32 (...) @kmap_flush_unused()
  %53 = call i32 (...) @vm_unmap_aliases()
  %54 = call i32 @cpa_flush(%struct.cpa_data* %8, i32 1)
  %55 = call i32 @__change_page_attr_set_clr(%struct.cpa_data* %8, i32 1)
  store i32 %55, i32* %9, align 4
  %56 = call i32 @cpa_flush(%struct.cpa_data* %8, i32 0)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %47, %12
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @mem_encrypt_active(...) #1

declare dso_local i64 @WARN_ONCE(i64, i8*, i64) #1

declare dso_local i32 @memset(%struct.cpa_data*, i32, i32) #1

declare dso_local i8* @__pgprot(i32) #1

declare dso_local i32 @kmap_flush_unused(...) #1

declare dso_local i32 @vm_unmap_aliases(...) #1

declare dso_local i32 @cpa_flush(%struct.cpa_data*, i32) #1

declare dso_local i32 @__change_page_attr_set_clr(%struct.cpa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
