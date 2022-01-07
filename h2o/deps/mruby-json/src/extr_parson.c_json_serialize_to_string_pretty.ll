; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_serialize_to_string_pretty.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_serialize_to_string_pretty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSONFailure = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_serialize_to_string_pretty(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i64, i64* @JSONFailure, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @json_serialization_size_pretty(i32* %8)
  store i64 %9, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @parson_malloc(i64 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %33

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @json_serialize_to_buffer_pretty(i32* %21, i8* %22, i64 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @JSONFailure, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @json_free_serialized_string(i8* %29)
  store i8* null, i8** %2, align 8
  br label %33

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %31, %28, %19, %12
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i64 @json_serialization_size_pretty(i32*) #1

declare dso_local i64 @parson_malloc(i64) #1

declare dso_local i64 @json_serialize_to_buffer_pretty(i32*, i8*, i64) #1

declare dso_local i32 @json_free_serialized_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
