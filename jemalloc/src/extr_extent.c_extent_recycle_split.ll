; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_recycle_split.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_recycle_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maps_coalesce = common dso_local global i32 0, align 4
@extent_split_interior_ok = common dso_local global i64 0, align 8
@opt_retain = common dso_local global i32 0, align 4
@extent_split_interior_error = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32**, i32*, i32*, i8*, i64, i64, i64, i32, i32, i32*, i32)* @extent_recycle_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_recycle_split(i32* %0, i32* %1, i32** %2, i32* %3, i32* %4, i8* %5, i64 %6, i64 %7, i64 %8, i32 %9, i32 %10, i32* %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32** %2, i32*** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i8* %5, i8** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i64 %8, i64* %23, align 8
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32* %11, i32** %26, align 8
  store i32 %12, i32* %27, align 4
  %34 = load i32*, i32** %15, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32**, i32*** %17, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = load i8*, i8** %20, align 8
  %39 = load i64, i64* %21, align 8
  %40 = load i64, i64* %22, align 8
  %41 = load i64, i64* %23, align 8
  %42 = load i32, i32* %24, align 4
  %43 = load i32, i32* %25, align 4
  %44 = load i32, i32* %27, align 4
  %45 = call i64 @extent_split_interior(i32* %34, i32* %35, i32** %36, i32* %37, i32** %26, i32** %28, i32** %29, i32** %30, i32** %31, i8* %38, i64 %39, i64 %40, i64 %41, i32 %42, i32 %43, i32 %44)
  store i64 %45, i64* %32, align 8
  %46 = load i32, i32* @maps_coalesce, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %13
  %49 = load i64, i64* %32, align 8
  %50 = load i64, i64* @extent_split_interior_ok, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32, i32* @opt_retain, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %30, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32*, i32** %28, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %29, align 8
  %63 = icmp eq i32* %62, null
  br label %64

64:                                               ; preds = %61, %58, %55
  %65 = phi i1 [ false, %58 ], [ false, %55 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32*, i32** %15, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = load i32*, i32** %30, align 8
  %72 = call i32 @extent_deactivate(i32* %68, i32* %69, i32* %70, i32* %71)
  store i32* null, i32** %14, align 8
  br label %133

73:                                               ; preds = %52, %48, %13
  %74 = load i64, i64* %32, align 8
  %75 = load i64, i64* @extent_split_interior_ok, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load i32*, i32** %28, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32*, i32** %15, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = load i32*, i32** %28, align 8
  %85 = call i32 @extent_deactivate(i32* %81, i32* %82, i32* %83, i32* %84)
  br label %86

86:                                               ; preds = %80, %77
  %87 = load i32*, i32** %29, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32*, i32** %15, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = load i32*, i32** %29, align 8
  %94 = call i32 @extent_deactivate(i32* %90, i32* %91, i32* %92, i32* %93)
  br label %95

95:                                               ; preds = %89, %86
  %96 = load i32*, i32** %26, align 8
  store i32* %96, i32** %14, align 8
  br label %133

97:                                               ; preds = %73
  %98 = load i64, i64* %32, align 8
  %99 = load i64, i64* @extent_split_interior_error, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32*, i32** %31, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32*, i32** %15, align 8
  %107 = load i32*, i32** %31, align 8
  %108 = call i32 @extent_deregister(i32* %106, i32* %107)
  br label %109

109:                                              ; preds = %105, %97
  %110 = load i32*, i32** %30, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load i32*, i32** %30, align 8
  %114 = call i8* @extent_base_get(i32* %113)
  store i8* %114, i8** %33, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = load i32*, i32** %30, align 8
  %117 = call i32 @extent_deregister_no_gdump_sub(i32* %115, i32* %116)
  %118 = load i32*, i32** %15, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = load i32**, i32*** %17, align 8
  %121 = load i32*, i32** %19, align 8
  %122 = load i32*, i32** %30, align 8
  %123 = load i32, i32* %27, align 4
  %124 = call i32 @extents_abandon_vm(i32* %118, i32* %119, i32** %120, i32* %121, i32* %122, i32 %123)
  %125 = load i32*, i32** %15, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = load i8*, i8** %33, align 8
  %128 = call i32* @extent_lock_from_addr(i32* %125, i32* %126, i8* %127, i32 0)
  %129 = icmp eq i32* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  br label %132

132:                                              ; preds = %112, %109
  store i32* null, i32** %14, align 8
  br label %133

133:                                              ; preds = %132, %95, %64
  %134 = load i32*, i32** %14, align 8
  ret i32* %134
}

declare dso_local i64 @extent_split_interior(i32*, i32*, i32**, i32*, i32**, i32**, i32**, i32**, i32**, i8*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extent_deactivate(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @extent_deregister(i32*, i32*) #1

declare dso_local i8* @extent_base_get(i32*) #1

declare dso_local i32 @extent_deregister_no_gdump_sub(i32*, i32*) #1

declare dso_local i32 @extents_abandon_vm(i32*, i32*, i32**, i32*, i32*, i32) #1

declare dso_local i32* @extent_lock_from_addr(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
