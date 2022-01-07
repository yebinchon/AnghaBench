; ModuleID = '/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_compile.c_add_list_to_class.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_compile.c_add_list_to_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTACHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32, i32*, i32*, i32)* @add_list_to_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_list_to_class(i32* %0, i32** %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %63, %6
  %16 = load i32*, i32** %11, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NOTACHAR, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %15
  store i32 0, i32* %14, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = add i32 %37, %38
  %40 = add i32 %39, 1
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load i32*, i32** %7, align 8
  %47 = load i32**, i32*** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @add_to_class(i32* %46, i32** %47, i32 %48, i32* %49, i32 %52, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %45, %21
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32*, i32** %11, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %11, align 8
  br label %15

69:                                               ; preds = %15
  %70 = load i32, i32* %13, align 4
  ret i32 %70
}

declare dso_local i64 @add_to_class(i32*, i32**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
