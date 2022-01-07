; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_parse_zend_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_parse_zend_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_zend_long(i32** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  %4 = load i32**, i32*** %3, align 8
  %5 = call i32 @Z_TYPE_PP(i32** %4)
  switch i32 %5, label %16 [
    i32 129, label %6
    i32 130, label %9
    i32 128, label %12
  ]

6:                                                ; preds = %1
  %7 = load i32**, i32*** %3, align 8
  %8 = call i64 @Z_LVAL_PP(i32** %7)
  store i64 %8, i64* %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load i32**, i32*** %3, align 8
  %11 = call i64 @Z_DVAL_PP(i32** %10)
  store i64 %11, i64* %2, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load i32**, i32*** %3, align 8
  %14 = call i32 @Z_STRVAL_PP(i32** %13)
  %15 = call i64 @my_atoll(i32 %14)
  store i64 %15, i64* %2, align 8
  br label %21

16:                                               ; preds = %1
  %17 = load i32**, i32*** %3, align 8
  %18 = call i32 @convert_to_long_ex(i32** %17)
  %19 = load i32**, i32*** %3, align 8
  %20 = call i64 @Z_LVAL_PP(i32** %19)
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %16, %12, %9, %6
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i32 @Z_TYPE_PP(i32**) #1

declare dso_local i64 @Z_LVAL_PP(i32**) #1

declare dso_local i64 @Z_DVAL_PP(i32**) #1

declare dso_local i64 @my_atoll(i32) #1

declare dso_local i32 @Z_STRVAL_PP(i32**) #1

declare dso_local i32 @convert_to_long_ex(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
