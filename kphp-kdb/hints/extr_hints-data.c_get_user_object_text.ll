; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_get_user_object_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_get_user_object_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bad_requests = common dso_local global i32 0, align 4
@NOAIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_user_object_text(i32 %0, i32 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @check_user_id(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @check_type(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @check_object_id(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21, %17, %4
  %26 = load i32, i32* @bad_requests, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @bad_requests, align 4
  store i32 -1, i32* %5, align 4
  br label %70

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @get_local_user_id(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %70

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32* @conv_user_id(i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NOAIO, align 4
  %48 = call i32* @load_user_metafile(i32* %45, i32 %46, i32 %47)
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  store i32 -2, i32* %5, align 4
  br label %70

51:                                               ; preds = %34
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @user_get_object_local_id(i32* %52, i32 %53, i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %70

59:                                               ; preds = %51
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i8* @user_get_object_name(i32* %60, i32 %61)
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %70

66:                                               ; preds = %59
  %67 = load i8*, i8** %13, align 8
  %68 = call i8* @clean_str(i8* %67)
  %69 = load i8**, i8*** %9, align 8
  store i8* %68, i8** %69, align 8
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %65, %58, %50, %33, %25
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @check_user_id(i32) #1

declare dso_local i32 @check_type(i32) #1

declare dso_local i32 @check_object_id(i64) #1

declare dso_local i32 @get_local_user_id(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @conv_user_id(i32) #1

declare dso_local i32* @load_user_metafile(i32*, i32, i32) #1

declare dso_local i32 @user_get_object_local_id(i32*, i32, i64) #1

declare dso_local i8* @user_get_object_name(i32*, i32) #1

declare dso_local i8* @clean_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
