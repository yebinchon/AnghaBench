; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_pembase64.c_ptls_compare_separator_line.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_pembase64.c_ptls_compare_separator_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @ptls_compare_separator_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptls_compare_separator_line(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  store i32 %12, i32* %7, align 4
  store i64 5, i64* %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @strncmp(i8* %20, i8* %21, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %15, %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 32
  store i32 %37, i32* %7, align 4
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %31, %28
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strlen(i8* %44)
  store i64 %45, i64* %10, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @strncmp(i8* %48, i8* %49, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %43, %40
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
