; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_indexes.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_string_indexes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @JV_KIND_STRING, align 4
  %13 = call i32 @JVP_HAS_KIND(i32 %11, i32 %12)
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @JV_KIND_STRING, align 4
  %17 = call i32 @JVP_HAS_KIND(i32 %15, i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i8* @jv_string_value(i32 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @jv_string_value(i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @jv_copy(i32 %23)
  %25 = call i32 @jv_string_length_bytes(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @jv_copy(i32 %26)
  %28 = call i32 @jv_string_length_bytes(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = call i32 (...) @jv_array()
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %2
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %49, %32
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @_jq_memmem(i8* %35, i32 %44, i8* %45, i32 %46)
  store i8* %47, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @jv_number(i32 %56)
  %58 = call i32 @jv_array_append(i32 %50, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %7, align 8
  br label %34

63:                                               ; preds = %34
  br label %64

64:                                               ; preds = %63, %2
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @jv_free(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @jv_free(i32 %67)
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_array(...) #1

declare dso_local i8* @_jq_memmem(i8*, i32, i8*, i32) #1

declare dso_local i32 @jv_array_append(i32, i32) #1

declare dso_local i32 @jv_number(i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
