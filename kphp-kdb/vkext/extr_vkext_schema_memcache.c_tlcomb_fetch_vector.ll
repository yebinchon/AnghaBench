; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_vector.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@TLUNI_OK = common dso_local global i64 0, align 8
@TLUNI_NEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_fetch_vector(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %13 = call i32 (...) @tl_parse_int()
  store i32 %13, i32* %10, align 4
  %14 = call i64 (...) @tl_parse_error()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %60

17:                                               ; preds = %4
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @ALLOC_INIT_ZVAL(i32* %19)
  %21 = load i32**, i32*** %8, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @array_init(i32* %22)
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %6, align 8
  %26 = load i8*, i8** %24, align 8
  %27 = bitcast i8* %26 to i8**
  store i8** %27, i8*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %55, %17
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i32**, i32*** %8, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i32 1
  store i32** %34, i32*** %8, align 8
  store i32* null, i32** %34, align 8
  %35 = load i8**, i8*** %11, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = load i32**, i32*** %8, align 8
  %38 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %39 = call i64 @TLUNI_START(i8** %35, i8** %36, i32** %37, %struct.tl_tree** %38)
  %40 = load i64, i64* @TLUNI_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32**, i32*** %8, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i32 -1
  store i32** %44, i32*** %8, align 8
  store i8* null, i8** %5, align 8
  br label %60

45:                                               ; preds = %32
  %46 = load i32**, i32*** %8, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 -1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32**, i32*** %8, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @add_index_zval(i32* %48, i32 %49, i32* %51)
  %53 = load i32**, i32*** %8, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i32 -1
  store i32** %54, i32*** %8, align 8
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %28

58:                                               ; preds = %28
  %59 = load i32, i32* @TLUNI_NEXT, align 4
  br label %60

60:                                               ; preds = %58, %42, %16
  %61 = load i8*, i8** %5, align 8
  ret i8* %61
}

declare dso_local i32 @tl_parse_int(...) #1

declare dso_local i64 @tl_parse_error(...) #1

declare dso_local i32 @ALLOC_INIT_ZVAL(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i64 @TLUNI_START(i8**, i8**, i32**, %struct.tl_tree**) #1

declare dso_local i32 @add_index_zval(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
