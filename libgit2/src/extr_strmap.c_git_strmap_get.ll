; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_strmap.c_git_strmap_get.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_strmap.c_git_strmap_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_strmap_get(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @str, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @kh_get(i32 %7, i32* %8, i8* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @kh_end(i32* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @kh_exist(i32* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  store i8* null, i8** %3, align 8
  br label %25

21:                                               ; preds = %15
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @kh_val(i32* %22, i64 %23)
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local i64 @kh_get(i32, i32*, i8*) #1

declare dso_local i64 @kh_end(i32*) #1

declare dso_local i32 @kh_exist(i32*, i64) #1

declare dso_local i8* @kh_val(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
