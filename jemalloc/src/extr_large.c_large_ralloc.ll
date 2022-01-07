; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_large.c_large_ralloc.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_large.c_large_ralloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@SC_LARGE_MAXCLASS = common dso_local global i64 0, align 8
@SC_LARGE_MINCLASS = common dso_local global i64 0, align 8
@hook_expand_realloc = common dso_local global i32 0, align 4
@hook_expand_rallocx = common dso_local global i32 0, align 4
@hook_alloc_realloc = common dso_local global i32 0, align 4
@hook_alloc_rallocx = common dso_local global i32 0, align 4
@hook_dalloc_realloc = common dso_local global i32 0, align 4
@hook_dalloc_rallocx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @large_ralloc(i32* %0, i32* %1, i8* %2, i64 %3, i64 %4, i32 %5, i32* %6, %struct.TYPE_3__* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %17, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = call i32* @iealloc(i32* %22, i8* %23)
  store i32* %24, i32** %18, align 8
  %25 = load i32*, i32** %18, align 8
  %26 = call i64 @extent_usize_get(i32* %25)
  store i64 %26, i64* %19, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @SC_LARGE_MAXCLASS, align 8
  %32 = icmp ule i64 %30, %31
  br label %33

33:                                               ; preds = %29, %8
  %34 = phi i1 [ false, %8 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %19, align 8
  %38 = load i64, i64* @SC_LARGE_MINCLASS, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @SC_LARGE_MINCLASS, align 8
  %43 = icmp uge i64 %41, %42
  br label %44

44:                                               ; preds = %40, %33
  %45 = phi i1 [ false, %33 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @large_ralloc_no_move(i32* %48, i32* %49, i64 %50, i64 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %44
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @hook_expand_realloc, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @hook_expand_rallocx, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load i8*, i8** %12, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @hook_invoke_expand(i32 %65, i8* %66, i64 %67, i64 %68, i64 %70, i32 %73)
  %75 = load i32*, i32** %18, align 8
  %76 = call i8* @extent_addr_get(i32* %75)
  store i8* %76, i8** %9, align 8
  br label %141

77:                                               ; preds = %44
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i8* @large_ralloc_move_helper(i32* %78, i32* %79, i64 %80, i64 %81, i32 %82)
  store i8* %83, i8** %20, align 8
  %84 = load i8*, i8** %20, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i8* null, i8** %9, align 8
  br label %141

87:                                               ; preds = %77
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @hook_alloc_realloc, align 4
  br label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @hook_alloc_rallocx, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load i8*, i8** %20, align 8
  %99 = load i8*, i8** %20, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @hook_invoke_alloc(i32 %97, i8* %98, i64 %100, i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* @hook_dalloc_realloc, align 4
  br label %113

111:                                              ; preds = %96
  %112 = load i32, i32* @hook_dalloc_rallocx, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load i8*, i8** %12, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @hook_invoke_dalloc(i32 %114, i8* %115, i32 %118)
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %19, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i64, i64* %13, align 8
  br label %127

125:                                              ; preds = %113
  %126 = load i64, i64* %19, align 8
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i64 [ %124, %123 ], [ %126, %125 ]
  store i64 %128, i64* %21, align 8
  %129 = load i8*, i8** %20, align 8
  %130 = load i32*, i32** %18, align 8
  %131 = call i8* @extent_addr_get(i32* %130)
  %132 = load i64, i64* %21, align 8
  %133 = call i32 @memcpy(i8* %129, i8* %131, i64 %132)
  %134 = load i32*, i32** %10, align 8
  %135 = load i32*, i32** %18, align 8
  %136 = call i8* @extent_addr_get(i32* %135)
  %137 = load i64, i64* %19, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = call i32 @isdalloct(i32* %134, i8* %136, i64 %137, i32* %138, i32* null, i32 1)
  %140 = load i8*, i8** %20, align 8
  store i8* %140, i8** %9, align 8
  br label %141

141:                                              ; preds = %127, %86, %64
  %142 = load i8*, i8** %9, align 8
  ret i8* %142
}

declare dso_local i32* @iealloc(i32*, i8*) #1

declare dso_local i64 @extent_usize_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @large_ralloc_no_move(i32*, i32*, i64, i64, i32) #1

declare dso_local i32 @hook_invoke_expand(i32, i8*, i64, i64, i64, i32) #1

declare dso_local i8* @extent_addr_get(i32*) #1

declare dso_local i8* @large_ralloc_move_helper(i32*, i32*, i64, i64, i32) #1

declare dso_local i32 @hook_invoke_alloc(i32, i8*, i64, i32) #1

declare dso_local i32 @hook_invoke_dalloc(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @isdalloct(i32*, i8*, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
