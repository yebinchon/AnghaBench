; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_cache.c_setup_protection_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_cache.c_setup_protection_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_rixi = common dso_local global i64 0, align 8
@_page_cachable_default = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_NO_EXEC = common dso_local global i32 0, align 4
@_PAGE_NO_READ = common dso_local global i32 0, align 4
@protection_map = common dso_local global i32* null, align 8
@_PAGE_WRITE = common dso_local global i32 0, align 4
@PAGE_NONE = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@PAGE_COPY = common dso_local global i32 0, align 4
@PAGE_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_protection_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_protection_map() #0 {
  %1 = load i64, i64* @cpu_has_rixi, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %132

3:                                                ; preds = %0
  %4 = load i32, i32* @_page_cachable_default, align 4
  %5 = load i32, i32* @_PAGE_PRESENT, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @_PAGE_NO_EXEC, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @_PAGE_NO_READ, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @__pgprot(i32 %10)
  %12 = load i32*, i32** @protection_map, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @_page_cachable_default, align 4
  %15 = load i32, i32* @_PAGE_PRESENT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @_PAGE_NO_EXEC, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @__pgprot(i32 %18)
  %20 = load i32*, i32** @protection_map, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @_page_cachable_default, align 4
  %23 = load i32, i32* @_PAGE_PRESENT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @_PAGE_NO_EXEC, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @_PAGE_NO_READ, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @__pgprot(i32 %28)
  %30 = load i32*, i32** @protection_map, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @_page_cachable_default, align 4
  %33 = load i32, i32* @_PAGE_PRESENT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @_PAGE_NO_EXEC, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @__pgprot(i32 %36)
  %38 = load i32*, i32** @protection_map, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @_page_cachable_default, align 4
  %41 = load i32, i32* @_PAGE_PRESENT, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @__pgprot(i32 %42)
  %44 = load i32*, i32** @protection_map, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @_page_cachable_default, align 4
  %47 = load i32, i32* @_PAGE_PRESENT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @__pgprot(i32 %48)
  %50 = load i32*, i32** @protection_map, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @_page_cachable_default, align 4
  %53 = load i32, i32* @_PAGE_PRESENT, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @__pgprot(i32 %54)
  %56 = load i32*, i32** @protection_map, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @_page_cachable_default, align 4
  %59 = load i32, i32* @_PAGE_PRESENT, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @__pgprot(i32 %60)
  %62 = load i32*, i32** @protection_map, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @_page_cachable_default, align 4
  %65 = load i32, i32* @_PAGE_PRESENT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @_PAGE_NO_EXEC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @_PAGE_NO_READ, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @__pgprot(i32 %70)
  %72 = load i32*, i32** @protection_map, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @_page_cachable_default, align 4
  %75 = load i32, i32* @_PAGE_PRESENT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @_PAGE_NO_EXEC, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @__pgprot(i32 %78)
  %80 = load i32*, i32** @protection_map, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 9
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @_page_cachable_default, align 4
  %83 = load i32, i32* @_PAGE_PRESENT, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @_PAGE_NO_EXEC, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @_PAGE_WRITE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @_PAGE_NO_READ, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @__pgprot(i32 %90)
  %92 = load i32*, i32** @protection_map, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 10
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @_page_cachable_default, align 4
  %95 = load i32, i32* @_PAGE_PRESENT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @_PAGE_NO_EXEC, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @_PAGE_WRITE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @__pgprot(i32 %100)
  %102 = load i32*, i32** @protection_map, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 11
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @_page_cachable_default, align 4
  %105 = load i32, i32* @_PAGE_PRESENT, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @__pgprot(i32 %106)
  %108 = load i32*, i32** @protection_map, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 12
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @_page_cachable_default, align 4
  %111 = load i32, i32* @_PAGE_PRESENT, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @__pgprot(i32 %112)
  %114 = load i32*, i32** @protection_map, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 13
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @_page_cachable_default, align 4
  %117 = load i32, i32* @_PAGE_PRESENT, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @_PAGE_WRITE, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @__pgprot(i32 %120)
  %122 = load i32*, i32** @protection_map, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 14
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @_page_cachable_default, align 4
  %125 = load i32, i32* @_PAGE_PRESENT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @_PAGE_WRITE, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @__pgprot(i32 %128)
  %130 = load i32*, i32** @protection_map, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 15
  store i32 %129, i32* %131, align 4
  br label %181

132:                                              ; preds = %0
  %133 = load i32, i32* @PAGE_NONE, align 4
  %134 = load i32*, i32** @protection_map, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @PAGE_READONLY, align 4
  %137 = load i32*, i32** @protection_map, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @PAGE_COPY, align 4
  %140 = load i32*, i32** @protection_map, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @PAGE_COPY, align 4
  %143 = load i32*, i32** @protection_map, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @PAGE_READONLY, align 4
  %146 = load i32*, i32** @protection_map, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @PAGE_READONLY, align 4
  %149 = load i32*, i32** @protection_map, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 5
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @PAGE_COPY, align 4
  %152 = load i32*, i32** @protection_map, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 6
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @PAGE_COPY, align 4
  %155 = load i32*, i32** @protection_map, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 7
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @PAGE_NONE, align 4
  %158 = load i32*, i32** @protection_map, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 8
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @PAGE_READONLY, align 4
  %161 = load i32*, i32** @protection_map, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 9
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @PAGE_SHARED, align 4
  %164 = load i32*, i32** @protection_map, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 10
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @PAGE_SHARED, align 4
  %167 = load i32*, i32** @protection_map, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 11
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @PAGE_READONLY, align 4
  %170 = load i32*, i32** @protection_map, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 12
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @PAGE_READONLY, align 4
  %173 = load i32*, i32** @protection_map, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 13
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @PAGE_SHARED, align 4
  %176 = load i32*, i32** @protection_map, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 14
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @PAGE_SHARED, align 4
  %179 = load i32*, i32** @protection_map, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 15
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %132, %3
  ret void
}

declare dso_local i32 @__pgprot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
