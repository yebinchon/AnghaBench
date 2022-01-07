; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@TLUNI_OK = common dso_local global i64 0, align 8
@TLUNI_NEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_store_array(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
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
  %18 = load i8**, i8*** %7, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 -1
  store i8** %19, i8*** %7, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @var_nat_const_to_int(i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i8**, i8*** %7, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @DEC_REF(i8* %23)
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %55, %4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load i32**, i32*** %8, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32** @get_field(i32* %31, i32 0, i32 %32)
  store i32** %33, i32*** %13, align 8
  %34 = load i32**, i32*** %13, align 8
  %35 = icmp ne i32** %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i8* null, i8** %5, align 8
  br label %60

37:                                               ; preds = %29
  %38 = load i32**, i32*** %13, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = load i32**, i32*** %8, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i32 1
  store i32** %41, i32*** %8, align 8
  store i32* %39, i32** %41, align 8
  %42 = load i8**, i8*** %10, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = load i32**, i32*** %8, align 8
  %45 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %46 = call i64 @TLUNI_START(i8** %42, i8** %43, i32** %44, %struct.tl_tree** %45)
  %47 = load i64, i64* @TLUNI_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32**, i32*** %8, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i32 -1
  store i32** %51, i32*** %8, align 8
  store i8* null, i8** %5, align 8
  br label %60

52:                                               ; preds = %37
  %53 = load i32**, i32*** %8, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i32 -1
  store i32** %54, i32*** %8, align 8
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load i32, i32* @TLUNI_NEXT, align 4
  br label %60

60:                                               ; preds = %58, %49, %36
  %61 = load i8*, i8** %5, align 8
  ret i8* %61
}

declare dso_local i32 @var_nat_const_to_int(i8*) #1

declare dso_local i32 @DEC_REF(i8*) #1

declare dso_local i32** @get_field(i32*, i32, i32) #1

declare dso_local i64 @TLUNI_START(i8**, i8**, i32**, %struct.tl_tree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
