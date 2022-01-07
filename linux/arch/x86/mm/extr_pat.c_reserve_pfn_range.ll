; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_reserve_pfn_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_reserve_pfn_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"x86/PAT: %s:%d map pfn RAM range req %s for [mem %#010Lx-%#010Lx], got %s\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@_PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"x86/PAT: %s:%d map pfn expected mapping type %s for [mem %#010Lx-%#010Lx], got %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, i32)* @reserve_pfn_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_pfn_range(i64 %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pgprot2cachemode(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @pat_pagerange_is_ram(i64 %18, i64 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %4
  %26 = call i32 (...) @pat_enabled()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %140

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @lookup_memtype(i64 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @cattr_name(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %45, %46
  %48 = sub i64 %47, 1
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @cattr_name(i32 %49)
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %43, i64 %44, i64 %48, i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pgprot_val(i32 %53)
  %55 = load i32, i32* @_PAGE_CACHE_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @cachemode2protval(i32 %58)
  %60 = or i32 %57, %59
  %61 = call i32 @__pgprot(i32 %60)
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %35, %29
  store i32 0, i32* %5, align 4
  br label %140

64:                                               ; preds = %4
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %66, %67
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @reserve_memtype(i64 %65, i64 %68, i32 %69, i32* %13)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %140

75:                                               ; preds = %64
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @is_new_memtype_allowed(i64 %83, i64 %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %82, %79
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %91, %92
  %94 = call i32 @free_memtype(i64 %90, i64 %93)
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @cattr_name(i32 %101)
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %104, %105
  %107 = sub i64 %106, 1
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @cattr_name(i32 %108)
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %100, i32 %102, i64 %103, i64 %107, i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %140

113:                                              ; preds = %82
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pgprot_val(i32 %115)
  %117 = load i32, i32* @_PAGE_CACHE_MASK, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @cachemode2protval(i32 %120)
  %122 = or i32 %119, %121
  %123 = call i32 @__pgprot(i32 %122)
  %124 = load i32*, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %113, %75
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i64 @kernel_map_sync_memtype(i64 %126, i64 %127, i32 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %133, %134
  %136 = call i32 @free_memtype(i64 %132, i64 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %140

139:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %131, %89, %73, %63, %28
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @pgprot2cachemode(i32) #1

declare dso_local i32 @pat_pagerange_is_ram(i64, i64) #1

declare dso_local i32 @pat_enabled(...) #1

declare dso_local i32 @lookup_memtype(i64) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @cattr_name(i32) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32 @cachemode2protval(i32) #1

declare dso_local i32 @reserve_memtype(i64, i64, i32, i32*) #1

declare dso_local i32 @is_new_memtype_allowed(i64, i64, i32, i32) #1

declare dso_local i32 @free_memtype(i64, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i64, i64, i32) #1

declare dso_local i64 @kernel_map_sync_memtype(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
