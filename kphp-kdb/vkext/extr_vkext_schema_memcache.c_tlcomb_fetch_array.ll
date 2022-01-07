; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@TLUNI_OK = common dso_local global i64 0, align 8
@TLUNI_NEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_fetch_array(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %6, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %10, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 -1
  store i8** %18, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @var_nat_const_to_int(i8* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @DEC_REF(i8* %22)
  %24 = load i32**, i32*** %8, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ALLOC_INIT_ZVAL(i32* %25)
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @array_init(i32* %28)
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %57, %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i32**, i32*** %8, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i32 1
  store i32** %36, i32*** %8, align 8
  store i32* null, i32** %36, align 8
  %37 = load i8**, i8*** %10, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load i32**, i32*** %8, align 8
  %40 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %41 = call i64 @TLUNI_START(i8** %37, i8** %38, i32** %39, %struct.tl_tree** %40)
  %42 = load i64, i64* @TLUNI_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32**, i32*** %8, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i32 -1
  store i32** %46, i32*** %8, align 8
  store i8* null, i8** %5, align 8
  br label %62

47:                                               ; preds = %34
  %48 = load i32**, i32*** %8, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 -1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @add_index_zval(i32* %50, i32 %51, i32* %53)
  %55 = load i32**, i32*** %8, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i32 -1
  store i32** %56, i32*** %8, align 8
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load i32, i32* @TLUNI_NEXT, align 4
  br label %62

62:                                               ; preds = %60, %44
  %63 = load i8*, i8** %5, align 8
  ret i8* %63
}

declare dso_local i32 @var_nat_const_to_int(i8*) #1

declare dso_local i32 @DEC_REF(i8*) #1

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
