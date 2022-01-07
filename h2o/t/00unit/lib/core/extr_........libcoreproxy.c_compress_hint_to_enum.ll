; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreproxy.c_compress_hint_to_enum.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreproxy.c_compress_hint_to_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@H2O_COMPRESS_HINT_ENABLE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@H2O_COMPRESS_HINT_DISABLE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@H2O_COMPRESS_HINT_ENABLE_GZIP = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@H2O_COMPRESS_HINT_ENABLE_BR = common dso_local global i8 0, align 1
@H2O_COMPRESS_HINT_AUTO = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i64)* @compress_hint_to_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @compress_hint_to_enum(i8* %0, i64 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = call i64 @h2o_lcstris(i8* %6, i64 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8, i8* @H2O_COMPRESS_HINT_ENABLE, align 1
  store i8 %12, i8* %3, align 1
  br label %39

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i64 @h2o_lcstris(i8* %14, i64 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i8, i8* @H2O_COMPRESS_HINT_DISABLE, align 1
  store i8 %20, i8* %3, align 1
  br label %39

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i64 @h2o_lcstris(i8* %22, i64 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i8, i8* @H2O_COMPRESS_HINT_ENABLE_GZIP, align 1
  store i8 %28, i8* %3, align 1
  br label %39

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i64 @h2o_lcstris(i8* %30, i64 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i8, i8* @H2O_COMPRESS_HINT_ENABLE_BR, align 1
  store i8 %36, i8* %3, align 1
  br label %39

37:                                               ; preds = %29
  %38 = load i8, i8* @H2O_COMPRESS_HINT_AUTO, align 1
  store i8 %38, i8* %3, align 1
  br label %39

39:                                               ; preds = %37, %35, %27, %19, %11
  %40 = load i8, i8* %3, align 1
  ret i8 %40
}

declare dso_local i64 @h2o_lcstris(i8*, i64, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
