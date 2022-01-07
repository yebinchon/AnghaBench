; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_parse_int.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLI_BITS_PER_DIGIT = common dso_local global i64 0, align 8
@VLI_DIGIT_MASK = common dso_local global i8 0, align 1
@VLI_CONTINUE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [54 x i8] c"invalid delta: unexpected end of instructions section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*)* @parse_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_int(i8** %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  br label %13

13:                                               ; preds = %44, %3
  %14 = load i8*, i8** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %10, align 1
  %20 = load i64, i64* @VLI_BITS_PER_DIGIT, align 8
  %21 = load i64, i64* %8, align 8
  %22 = shl i64 %21, %20
  store i64 %22, i64* %8, align 8
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @VLI_DIGIT_MASK, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %8, align 8
  %31 = load i8, i8* %10, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @VLI_CONTINUE, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %17
  br label %44

38:                                               ; preds = %17
  %39 = load i64, i64* %8, align 8
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8**, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  store i32 0, i32* %4, align 4
  br label %49

44:                                               ; preds = %37
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  br label %13

47:                                               ; preds = %13
  %48 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %38
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
