; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_resolve_dynamic_postbase.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_resolve_dynamic_postbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_qpack_header_t = type { i32 }
%struct.st_h2o_qpack_header_table_t = type { i32 }

@INT64_MAX = common dso_local global i64 0, align 8
@h2o_qpack_err_invalid_dynamic_reference = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_h2o_qpack_header_t* (%struct.st_h2o_qpack_header_table_t*, i64, i32**, i32*, i32, i8**)* @resolve_dynamic_postbase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_h2o_qpack_header_t* @resolve_dynamic_postbase(%struct.st_h2o_qpack_header_table_t* %0, i64 %1, i32** %2, i32* %3, i32 %4, i8** %5) #0 {
  %7 = alloca %struct.st_h2o_qpack_header_t*, align 8
  %8 = alloca %struct.st_h2o_qpack_header_table_t*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  store %struct.st_h2o_qpack_header_table_t* %0, %struct.st_h2o_qpack_header_table_t** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %15 = load i32**, i32*** %10, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call i64 @decode_int(i64* %14, i32** %15, i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %6
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* @INT64_MAX, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %23, 1
  %25 = sub nsw i64 %22, %24
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %6
  %28 = load i8*, i8** @h2o_qpack_err_invalid_dynamic_reference, align 8
  %29 = load i8**, i8*** %13, align 8
  store i8* %28, i8** %29, align 8
  store %struct.st_h2o_qpack_header_t* null, %struct.st_h2o_qpack_header_t** %7, align 8
  br label %38

30:                                               ; preds = %20
  %31 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %14, align 8
  %34 = add nsw i64 %32, %33
  %35 = add nsw i64 %34, 1
  %36 = load i8**, i8*** %13, align 8
  %37 = call %struct.st_h2o_qpack_header_t* @resolve_dynamic_abs(%struct.st_h2o_qpack_header_table_t* %31, i64 %35, i8** %36)
  store %struct.st_h2o_qpack_header_t* %37, %struct.st_h2o_qpack_header_t** %7, align 8
  br label %38

38:                                               ; preds = %30, %27
  %39 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %7, align 8
  ret %struct.st_h2o_qpack_header_t* %39
}

declare dso_local i64 @decode_int(i64*, i32**, i32*, i32) #1

declare dso_local %struct.st_h2o_qpack_header_t* @resolve_dynamic_abs(%struct.st_h2o_qpack_header_table_t*, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
