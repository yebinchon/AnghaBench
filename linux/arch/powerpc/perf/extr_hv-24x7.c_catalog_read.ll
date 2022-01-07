; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_catalog_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_catalog_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.hv_24x7_catalog_page_0 = type { i32, i32 }

@hv_page_cache = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"h_get_24x7_catalog_page(ver=%lld, page=%lld) failed: rc=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"catalog_read: offset=%lld(%lld) count=%zu catalog_len=%zu(%zu) => %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @catalog_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @catalog_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.hv_24x7_catalog_page_0*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i64 0, i64* %21, align 8
  %24 = load i32, i32* @hv_page_cache, align 4
  %25 = load i32, i32* @GFP_USER, align 4
  %26 = call i8* @kmem_cache_alloc(i32 %24, i32 %25)
  store i8* %26, i8** %22, align 8
  %27 = load i8*, i8** %22, align 8
  %28 = bitcast i8* %27 to %struct.hv_24x7_catalog_page_0*
  store %struct.hv_24x7_catalog_page_0* %28, %struct.hv_24x7_catalog_page_0** %23, align 8
  %29 = load i8*, i8** %22, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %7, align 8
  br label %114

34:                                               ; preds = %6
  %35 = load i8*, i8** %22, align 8
  %36 = call i64 @h_get_24x7_catalog_page(i8* %35, i64 0, i32 0)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64, i64* @EIO, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %15, align 8
  br label %94

42:                                               ; preds = %34
  %43 = load %struct.hv_24x7_catalog_page_0*, %struct.hv_24x7_catalog_page_0** %23, align 8
  %44 = getelementptr inbounds %struct.hv_24x7_catalog_page_0, %struct.hv_24x7_catalog_page_0* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @be64_to_cpu(i32 %45)
  store i64 %46, i64* %21, align 8
  %47 = load %struct.hv_24x7_catalog_page_0*, %struct.hv_24x7_catalog_page_0** %23, align 8
  %48 = getelementptr inbounds %struct.hv_24x7_catalog_page_0, %struct.hv_24x7_catalog_page_0* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be32_to_cpu(i32 %49)
  store i64 %50, i64* %17, align 8
  %51 = load i64, i64* %17, align 8
  %52 = mul i64 %51, 4096
  store i64 %52, i64* %16, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sdiv i32 %53, 4096
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %12, align 4
  %56 = srem i32 %55, 4096
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %17, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %42
  br label %94

62:                                               ; preds = %42
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i8*, i8** %22, align 8
  %67 = load i64, i64* %21, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call i64 @h_get_24x7_catalog_page(i8* %66, i64 %67, i32 %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i64, i64* @EIO, align 8
  %74 = sub i64 0, %73
  store i64 %74, i64* %15, align 8
  br label %94

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %62
  %77 = load i32, i32* %19, align 4
  %78 = sub nsw i32 4096, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %20, align 8
  %80 = load i64, i64* %20, align 8
  %81 = load i64, i64* %13, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i64, i64* %13, align 8
  store i64 %84, i64* %20, align 8
  br label %85

85:                                               ; preds = %83, %76
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %22, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %87, i64 %89
  %91 = load i64, i64* %20, align 8
  %92 = call i32 @memcpy(i8* %86, i8* %90, i64 %91)
  %93 = load i64, i64* %20, align 8
  store i64 %93, i64* %15, align 8
  br label %94

94:                                               ; preds = %85, %72, %61, %39
  %95 = load i64, i64* %14, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i64, i64* %21, align 8
  %99 = load i32, i32* %18, align 4
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %98, i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %97, %94
  %103 = load i32, i32* @hv_page_cache, align 4
  %104 = load i8*, i8** %22, align 8
  %105 = call i32 @kmem_cache_free(i32 %103, i8* %104)
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32 @pr_devel(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107, i64 %108, i64 %109, i64 %110, i64 %111)
  %113 = load i64, i64* %15, align 8
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %102, %31
  %115 = load i64, i64* %7, align 8
  ret i64 %115
}

declare dso_local i8* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @h_get_24x7_catalog_page(i8*, i64, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i64) #1

declare dso_local i32 @kmem_cache_free(i32, i8*) #1

declare dso_local i32 @pr_devel(i8*, i32, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
