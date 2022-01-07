; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_set_field_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_set_field_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_field = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_field_string(i32** %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @set_field, align 4
  %10 = call i32 @ADD_CNT(i32 %9)
  %11 = load i32, i32* @set_field, align 4
  %12 = call i32 @START_TIMER(i32 %11)
  %13 = load i32**, i32*** %5, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @MAKE_STD_ZVAL(i32* %18)
  %20 = load i32**, i32*** %5, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @array_init(i32* %21)
  br label %23

23:                                               ; preds = %16, %4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @assert(i8* %24)
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32**, i32*** %5, align 8
  %31 = call i64 @Z_TYPE_PP(i32** %30)
  %32 = load i64, i64* @IS_ARRAY, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %29, %23
  %35 = phi i1 [ false, %23 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @assert(i8* %38)
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32**, i32*** %5, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @add_assoc_string(i32* %48, i8* %49, i8* %50, i32 1)
  br label %58

52:                                               ; preds = %42, %34
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @add_index_string(i32* %54, i32 %55, i8* %56, i32 1)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @set_field, align 4
  %60 = call i32 @END_TIMER(i32 %59)
  ret void
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @MAKE_STD_ZVAL(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @Z_TYPE_PP(i32**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*, i32) #1

declare dso_local i32 @add_index_string(i32*, i32, i8*, i32) #1

declare dso_local i32 @END_TIMER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
