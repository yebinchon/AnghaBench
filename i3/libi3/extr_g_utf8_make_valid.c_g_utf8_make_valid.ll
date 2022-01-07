; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_g_utf8_make_valid.c_g_utf8_make_valid.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_g_utf8_make_valid.c_g_utf8_make_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"\EF\BF\BD\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @g_utf8_make_valid(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @g_return_val_if_fail(i32 %13, i32* null)
  %15 = load i64, i64* %5, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @strlen(i32* %18)
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %17, %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %46, %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @g_utf8_validate(i32* %28, i32 %29, i32** %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %59

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = icmp eq %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.TYPE_7__* @g_string_sized_new(i32 %44)
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %6, align 8
  br label %46

46:                                               ; preds = %43, %33
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @g_string_append_len(%struct.TYPE_7__* %47, i32* %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = call i32 @g_string_append(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32* %58, i32** %7, align 8
  br label %24

59:                                               ; preds = %32, %24
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = icmp eq %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32* @g_strndup(i32* %63, i64 %64)
  store i32* %65, i32** %3, align 8
  br label %81

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @g_string_append_len(%struct.TYPE_7__* %67, i32* %68, i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = call i32 @g_string_append_c(%struct.TYPE_7__* %71, i8 signext 0)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @g_utf8_validate(i32* %75, i32 -1, i32** null)
  %77 = call i32 @g_assert(i64 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i32* @g_string_free(%struct.TYPE_7__* %78, i32 %79)
  store i32* %80, i32** %3, align 8
  br label %81

81:                                               ; preds = %66, %62
  %82 = load i32*, i32** %3, align 8
  ret i32* %82
}

declare dso_local i32 @g_return_val_if_fail(i32, i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @g_utf8_validate(i32*, i32, i32**) #1

declare dso_local %struct.TYPE_7__* @g_string_sized_new(i32) #1

declare dso_local i32 @g_string_append_len(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @g_string_append(%struct.TYPE_7__*, i8*) #1

declare dso_local i32* @g_strndup(i32*, i64) #1

declare dso_local i32 @g_string_append_c(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @g_assert(i64) #1

declare dso_local i32* @g_string_free(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
