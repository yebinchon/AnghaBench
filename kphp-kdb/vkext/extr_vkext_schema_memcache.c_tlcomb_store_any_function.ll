; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_any_function.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_any_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_combinator = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@TLUNI_NEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_store_any_function(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tl_combinator*, align 8
  %14 = alloca %struct.tl_tree**, align 8
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %16 = load i32**, i32*** %8, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = call i32** @get_field(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32** %18, i32*** %10, align 8
  %19 = load i32**, i32*** %10, align 8
  %20 = icmp ne i32** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %55

22:                                               ; preds = %4
  %23 = load i32**, i32*** %10, align 8
  %24 = call i8* @parse_zend_string(i32** %23, i32* %11)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call %struct.tl_combinator* @tl_fun_get_by_id(i8* %25)
  store %struct.tl_combinator* %26, %struct.tl_combinator** %13, align 8
  %27 = load %struct.tl_combinator*, %struct.tl_combinator** %13, align 8
  %28 = icmp ne %struct.tl_combinator* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i8* null, i8** %5, align 8
  br label %55

30:                                               ; preds = %22
  %31 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %32 = load %struct.tl_combinator*, %struct.tl_combinator** %13, align 8
  %33 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.tl_tree** @get_var_space(%struct.tl_tree** %31, i32 %34)
  store %struct.tl_tree** %35, %struct.tl_tree*** %14, align 8
  %36 = load %struct.tl_tree**, %struct.tl_tree*** %14, align 8
  %37 = icmp ne %struct.tl_tree** %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i8* null, i8** %5, align 8
  br label %55

39:                                               ; preds = %30
  %40 = load %struct.tl_combinator*, %struct.tl_combinator** %13, align 8
  %41 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = load i32**, i32*** %8, align 8
  %45 = load %struct.tl_tree**, %struct.tl_tree*** %14, align 8
  %46 = call i8* @TLUNI_START(i32 %42, i8** %43, i32** %44, %struct.tl_tree** %45)
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  store i8* null, i8** %5, align 8
  br label %55

50:                                               ; preds = %39
  %51 = load i8*, i8** %15, align 8
  %52 = load i8**, i8*** %7, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %7, align 8
  store i8* %51, i8** %52, align 8
  %54 = load i32, i32* @TLUNI_NEXT, align 4
  br label %55

55:                                               ; preds = %50, %49, %38, %29, %21
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i32** @get_field(i32*, i8*, i32) #1

declare dso_local i8* @parse_zend_string(i32**, i32*) #1

declare dso_local %struct.tl_combinator* @tl_fun_get_by_id(i8*) #1

declare dso_local %struct.tl_tree** @get_var_space(%struct.tl_tree**, i32) #1

declare dso_local i8* @TLUNI_START(i32, i8**, i32**, %struct.tl_tree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
