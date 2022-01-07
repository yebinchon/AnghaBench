; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_set_field.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_set_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_ARRAY = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_field(i32** %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = call i32 @ADD_CNT(void (i32**, i32*, i8*, i32)* @set_field)
  %10 = call i32 @START_TIMER(void (i32**, i32*, i8*, i32)* @set_field)
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load i32**, i32*** %5, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @MAKE_STD_ZVAL(i32* %16)
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @array_init(i32* %19)
  br label %21

21:                                               ; preds = %14, %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @assert(i32* %22)
  %24 = load i32**, i32*** %5, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32**, i32*** %5, align 8
  %29 = call i64 @Z_TYPE_PP(i32** %28)
  %30 = load i64, i64* @IS_ARRAY, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %27, %21
  %33 = phi i1 [ false, %21 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @assert(i32* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32**, i32*** %5, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @add_assoc_zval(i32* %46, i8* %47, i32* %48)
  br label %56

50:                                               ; preds = %40, %32
  %51 = load i32**, i32*** %5, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @add_index_zval(i32* %52, i32 %53, i32* %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = call i32 @END_TIMER(void (i32**, i32*, i8*, i32)* @set_field)
  ret void
}

declare dso_local i32 @ADD_CNT(void (i32**, i32*, i8*, i32)*) #1

declare dso_local i32 @START_TIMER(void (i32**, i32*, i8*, i32)*) #1

declare dso_local i32 @MAKE_STD_ZVAL(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @Z_TYPE_PP(i32**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @add_assoc_zval(i32*, i8*, i32*) #1

declare dso_local i32 @add_index_zval(i32*, i32, i32*) #1

declare dso_local i32 @END_TIMER(void (i32**, i32*, i8*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
