; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_mailmap.c_parse_mailmap_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_mailmap.c_parse_mailmap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @parse_mailmap_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mailmap_entry(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @git_buf_clear(i32* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @git_buf_clear(i32* %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @git_buf_clear(i32* %18)
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @git_buf_clear(i32* %20)
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @git_parse_advance_ws(i32* %22)
  %24 = load i32*, i32** %11, align 8
  %25 = call i64 @is_eol(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %81

28:                                               ; preds = %5
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @advance_until(i8** %12, i64* %13, i32* %29, i8 signext 60)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %81

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @git_buf_attach_notowned(i32* %34, i8* %35, i64 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @git_buf_rtrim(i32* %38)
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @advance_until(i8** %12, i64* %13, i32* %40, i8 signext 62)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %81

44:                                               ; preds = %33
  %45 = load i32*, i32** %11, align 8
  %46 = call i64 @is_eol(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @git_buf_attach_notowned(i32* %49, i8* %50, i64 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @git_parse_advance_ws(i32* %53)
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @advance_until(i8** %12, i64* %13, i32* %55, i8 signext 60)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 -1, i32* %6, align 4
  br label %81

59:                                               ; preds = %48
  %60 = load i32*, i32** %9, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @git_buf_attach_notowned(i32* %60, i8* %61, i64 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @git_buf_rtrim(i32* %64)
  %66 = load i32*, i32** %11, align 8
  %67 = call i64 @advance_until(i8** %12, i64* %13, i32* %66, i8 signext 62)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 -1, i32* %6, align 4
  br label %81

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i32*, i32** %10, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @git_buf_attach_notowned(i32* %72, i8* %73, i64 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = call i64 @is_eol(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  store i32 -1, i32* %6, align 4
  br label %81

80:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %79, %69, %58, %43, %32, %27
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_parse_advance_ws(i32*) #1

declare dso_local i64 @is_eol(i32*) #1

declare dso_local i64 @advance_until(i8**, i64*, i32*, i8 signext) #1

declare dso_local i32 @git_buf_attach_notowned(i32*, i8*, i64) #1

declare dso_local i32 @git_buf_rtrim(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
