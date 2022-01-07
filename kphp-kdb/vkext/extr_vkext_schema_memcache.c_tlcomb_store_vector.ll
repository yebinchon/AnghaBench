; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_vector.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@IS_ARRAY = common dso_local global i64 0, align 8
@TLUNI_OK = common dso_local global i64 0, align 8
@TLUNI_NEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_store_vector(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %6, align 8
  %16 = load i8*, i8** %14, align 8
  %17 = bitcast i8* %16 to i8**
  store i8** %17, i8*** %10, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = call i64 @Z_TYPE_PP(i32** %18)
  %20 = load i64, i64* @IS_ARRAY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %63

23:                                               ; preds = %4
  %24 = load i32**, i32*** %8, align 8
  %25 = call i32 @get_array_size(i32** %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @do_rpc_store_int(i32 %26)
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %58, %23
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32** @get_field(i32* %34, i32 0, i32 %35)
  store i32** %36, i32*** %13, align 8
  %37 = load i32**, i32*** %13, align 8
  %38 = icmp ne i32** %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i8* null, i8** %5, align 8
  br label %63

40:                                               ; preds = %32
  %41 = load i32**, i32*** %13, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** %8, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i32 1
  store i32** %44, i32*** %8, align 8
  store i32* %42, i32** %44, align 8
  %45 = load i8**, i8*** %10, align 8
  %46 = load i8**, i8*** %7, align 8
  %47 = load i32**, i32*** %8, align 8
  %48 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %49 = call i64 @TLUNI_START(i8** %45, i8** %46, i32** %47, %struct.tl_tree** %48)
  %50 = load i64, i64* @TLUNI_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32**, i32*** %8, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i32 -1
  store i32** %54, i32*** %8, align 8
  store i8* null, i8** %5, align 8
  br label %63

55:                                               ; preds = %40
  %56 = load i32**, i32*** %8, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i32 -1
  store i32** %57, i32*** %8, align 8
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load i32, i32* @TLUNI_NEXT, align 4
  br label %63

63:                                               ; preds = %61, %52, %39, %22
  %64 = load i8*, i8** %5, align 8
  ret i8* %64
}

declare dso_local i64 @Z_TYPE_PP(i32**) #1

declare dso_local i32 @get_array_size(i32**) #1

declare dso_local i32 @do_rpc_store_int(i32) #1

declare dso_local i32** @get_field(i32*, i32, i32) #1

declare dso_local i64 @TLUNI_START(i8**, i8**, i32**, %struct.tl_tree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
