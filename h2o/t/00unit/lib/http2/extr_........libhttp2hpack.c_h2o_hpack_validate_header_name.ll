; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_........libhttp2hpack.c_h2o_hpack_validate_header_name.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_........libhttp2hpack.c_h2o_hpack_validate_header_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h2o_hpack_validate_header_name.valid_h2_header_name_char = internal constant <{ [127 x i8], [129 x i8] }> <{ [127 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\01\01\01\00\00\01\01\00\01\01\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\00\01", [129 x i8] zeroinitializer }>, align 16
@h2o_hpack_err_found_upper_case_in_header_name = common dso_local global i8* null, align 8
@h2o_hpack_soft_err_found_invalid_char_in_header_name = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_hpack_validate_header_name(i8* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  br label %9

9:                                                ; preds = %32, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %8, align 1
  %15 = load i8, i8* %8, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [127 x i8], [129 x i8] }>* @h2o_hpack_validate_header_name.valid_h2_header_name_char to [256 x i8]*), i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %22, 65
  %24 = icmp ult i32 %23, 26
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** @h2o_hpack_err_found_upper_case_in_header_name, align 8
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  store i32 0, i32* %4, align 4
  br label %38

28:                                               ; preds = %20
  %29 = load i8*, i8** @h2o_hpack_soft_err_found_invalid_char_in_header_name, align 8
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %28, %12
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %6, align 8
  br label %9

37:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
