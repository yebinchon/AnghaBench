; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_set_field_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_set_field_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_field = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_field_int(i32** %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
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
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @add_assoc_long(i32* %32, i8* %33, i32 %34)
  br label %42

36:                                               ; preds = %26, %23
  %37 = load i32**, i32*** %5, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @add_index_long(i32* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @set_field, align 4
  %44 = call i32 @END_TIMER(i32 %43)
  ret void
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @MAKE_STD_ZVAL(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i32) #1

declare dso_local i32 @add_index_long(i32*, i32, i32) #1

declare dso_local i32 @END_TIMER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
