; ModuleID = '/home/carl/AnghaBench/i3/src/extr_load_layout.c_json_validate.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_load_layout.c_json_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yajl_allow_comments = common dso_local global i32 0, align 4
@yajl_allow_multiple_values = common dso_local global i32 0, align 4
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@yajl_status_ok = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"JSON parsing error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_validate(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %8 = call i32 @yajl_alloc(i32* null, i32* null, i32* null)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @yajl_allow_comments, align 4
  %11 = call i32 @yajl_config(i32 %9, i32 %10, i32 1)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @yajl_allow_multiple_values, align 4
  %14 = call i32 @yajl_config(i32 %12, i32 %13, i32 1)
  %15 = load i32, i32* @LC_NUMERIC, align 4
  %16 = call i32 @setlocale(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @yajl_parse(i32 %17, i8* %18, i64 %19)
  %21 = load i64, i64* @yajl_status_ok, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i8* @yajl_get_error(i32 %24, i32 1, i8* %25, i64 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @ELOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @yajl_free_error(i32 %30, i8* %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %23, %2
  %34 = load i32, i32* @LC_NUMERIC, align 4
  %35 = call i32 @setlocale(i32 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @yajl_complete_parse(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @yajl_free(i32 %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @yajl_alloc(i32*, i32*, i32*) #1

declare dso_local i32 @yajl_config(i32, i32, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i64 @yajl_parse(i32, i8*, i64) #1

declare dso_local i8* @yajl_get_error(i32, i32, i8*, i64) #1

declare dso_local i32 @ELOG(i8*, i8*) #1

declare dso_local i32 @yajl_free_error(i32, i8*) #1

declare dso_local i32 @yajl_complete_parse(i32) #1

declare dso_local i32 @yajl_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
