; ModuleID = '/home/carl/AnghaBench/jq/src/extr_util.c_expand_path.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_util.c_expand_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not expand %s. (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_path(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @jv_get_kind(i32 %7)
  %9 = load i64, i64* @JV_KIND_STRING, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i8* @jv_string_value(i32 %13)
  store i8* %14, i8** %3, align 8
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @jv_copy(i32 %16)
  %18 = call i32 @jv_string_length_bytes(i32 %17)
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %58

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 126
  br i1 %25, label %26, label %58

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = call i32 (...) @get_home()
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @jv_is_valid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @jv_string_value(i32 %38)
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @jv_free(i32 %43)
  br label %55

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @jv_invalid_get_msg(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i8* @jv_string_value(i32 %49)
  %51 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %48, i8* %50)
  %52 = call i32 @jv_invalid_with_msg(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @jv_free(i32 %53)
  br label %55

55:                                               ; preds = %45, %37
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @jv_free(i32 %56)
  br label %58

58:                                               ; preds = %55, %26, %20, %1
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @get_home(...) #1

declare dso_local i64 @jv_is_valid(i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i8*, i8*) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_invalid_get_msg(i32) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
