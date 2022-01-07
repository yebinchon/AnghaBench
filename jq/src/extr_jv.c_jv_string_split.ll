; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_split.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_string_split(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @JV_KIND_STRING, align 4
  %15 = call i32 @JVP_HAS_KIND(i32 %13, i32 %14)
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @JV_KIND_STRING, align 4
  %19 = call i32 @JVP_HAS_KIND(i32 %17, i32 %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i8* @jv_string_value(i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @jv_copy(i32 %24)
  %26 = call i32 @jv_string_length_bytes(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i8* @jv_string_value(i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @jv_copy(i32 %31)
  %33 = call i32 @jv_string_length_bytes(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = call i32 (...) @jv_array()
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @jv_get_refcnt(i32 %35)
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @jvp_utf8_next(i8* %44, i8* %45, i32* %12)
  store i8* %46, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @jv_string(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @jv_string_append_codepoint(i32 %50, i32 %51)
  %53 = call i32 @jv_array_append(i32 %49, i32 %52)
  store i32 %53, i32* %11, align 4
  br label %43

54:                                               ; preds = %43
  br label %107

55:                                               ; preds = %2
  %56 = load i8*, i8** %5, align 8
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %101, %55
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %106

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @_jq_memmem(i8* %62, i32 %68, i8* %69, i32 %70)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i8*, i8** %6, align 8
  store i8* %75, i8** %9, align 8
  br label %76

76:                                               ; preds = %74, %61
  %77 = load i32, i32* %11, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @jv_string_sized(i8* %78, i32 %84)
  %86 = call i32 @jv_array_append(i32 %77, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8*, i8** %6, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %76
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @jv_string(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %99 = call i32 @jv_array_append(i32 %97, i32 %98)
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %96, %93, %76
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8* %105, i8** %8, align 8
  br label %57

106:                                              ; preds = %57
  br label %107

107:                                              ; preds = %106, %54
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @jv_free(i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @jv_free(i32 %110)
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_array(...) #1

declare dso_local i32 @jv_get_refcnt(i32) #1

declare dso_local i8* @jvp_utf8_next(i8*, i8*, i32*) #1

declare dso_local i32 @jv_array_append(i32, i32) #1

declare dso_local i32 @jv_string_append_codepoint(i32, i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i8* @_jq_memmem(i8*, i32, i8*, i32) #1

declare dso_local i32 @jv_string_sized(i8*, i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
