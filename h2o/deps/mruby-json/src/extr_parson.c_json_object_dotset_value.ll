; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_object_dotset_value.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_object_dotset_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSONFailure = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_object_dotset_value(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %3
  %21 = load i64, i64* @JSONFailure, align 8
  store i64 %21, i64* %4, align 8
  br label %79

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 46)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @json_object_set_value(i32* %28, i8* %29, i32* %30)
  store i64 %31, i64* %4, align 8
  br label %79

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @parson_strndup(i8* %33, i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32* @json_object_get_object(i32* %41, i8* %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %32
  %47 = call i32* (...) @json_value_init_object()
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @parson_free(i8* %51)
  %53 = load i64, i64* @JSONFailure, align 8
  store i64 %53, i64* %4, align 8
  br label %79

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i64 @json_object_add(i32* %55, i8* %56, i32* %57)
  %59 = load i64, i64* @JSONFailure, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @json_value_free(i32* %62)
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @parson_free(i8* %64)
  %66 = load i64, i64* @JSONFailure, align 8
  store i64 %66, i64* %4, align 8
  br label %79

67:                                               ; preds = %54
  %68 = load i32*, i32** %5, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32* @json_object_get_object(i32* %68, i8* %69)
  store i32* %70, i32** %10, align 8
  br label %71

71:                                               ; preds = %67, %32
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @parson_free(i8* %72)
  %74 = load i32*, i32** %10, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i32*, i32** %7, align 8
  %78 = call i64 @json_object_dotset_value(i32* %74, i8* %76, i32* %77)
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %71, %61, %50, %27, %20
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @json_object_set_value(i32*, i8*, i32*) #1

declare dso_local i8* @parson_strndup(i8*, i32) #1

declare dso_local i32* @json_object_get_object(i32*, i8*) #1

declare dso_local i32* @json_value_init_object(...) #1

declare dso_local i32 @parson_free(i8*) #1

declare dso_local i64 @json_object_add(i32*, i8*, i32*) #1

declare dso_local i32 @json_value_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
