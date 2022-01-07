; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_parse_value.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NESTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i64)* @parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_value(i8** %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MAX_NESTING, align 8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32* null, i32** %3, align 8
  br label %40

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 @SKIP_WHITESPACES(i8** %11)
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %39 [
    i32 123, label %17
    i32 91, label %22
    i32 34, label %27
    i32 102, label %30
    i32 116, label %30
    i32 45, label %33
    i32 48, label %33
    i32 49, label %33
    i32 50, label %33
    i32 51, label %33
    i32 52, label %33
    i32 53, label %33
    i32 54, label %33
    i32 55, label %33
    i32 56, label %33
    i32 57, label %33
    i32 110, label %36
  ]

17:                                               ; preds = %10
  %18 = load i8**, i8*** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  %21 = call i32* @parse_object_value(i8** %18, i64 %20)
  store i32* %21, i32** %3, align 8
  br label %40

22:                                               ; preds = %10
  %23 = load i8**, i8*** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  %26 = call i32* @parse_array_value(i8** %23, i64 %25)
  store i32* %26, i32** %3, align 8
  br label %40

27:                                               ; preds = %10
  %28 = load i8**, i8*** %4, align 8
  %29 = call i32* @parse_string_value(i8** %28)
  store i32* %29, i32** %3, align 8
  br label %40

30:                                               ; preds = %10, %10
  %31 = load i8**, i8*** %4, align 8
  %32 = call i32* @parse_boolean_value(i8** %31)
  store i32* %32, i32** %3, align 8
  br label %40

33:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %34 = load i8**, i8*** %4, align 8
  %35 = call i32* @parse_number_value(i8** %34)
  store i32* %35, i32** %3, align 8
  br label %40

36:                                               ; preds = %10
  %37 = load i8**, i8*** %4, align 8
  %38 = call i32* @parse_null_value(i8** %37)
  store i32* %38, i32** %3, align 8
  br label %40

39:                                               ; preds = %10
  store i32* null, i32** %3, align 8
  br label %40

40:                                               ; preds = %39, %36, %33, %30, %27, %22, %17, %9
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

declare dso_local i32 @SKIP_WHITESPACES(i8**) #1

declare dso_local i32* @parse_object_value(i8**, i64) #1

declare dso_local i32* @parse_array_value(i8**, i64) #1

declare dso_local i32* @parse_string_value(i8**) #1

declare dso_local i32* @parse_boolean_value(i8**) #1

declare dso_local i32* @parse_number_value(i8**) #1

declare dso_local i32* @parse_null_value(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
