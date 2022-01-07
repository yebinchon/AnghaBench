; ModuleID = '/home/carl/AnghaBench/git/extr_pathspec.c_parse_element_magic.c'
source_filename = "/home/carl/AnghaBench/git/extr_pathspec.c_parse_element_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, %struct.pathspec_item*, i8*)* @parse_element_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_element_magic(i32* %0, i32* %1, %struct.pathspec_item* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pathspec_item*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.pathspec_item* %2, %struct.pathspec_item** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 58
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = call i64 (...) @get_literal_global()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %4
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %5, align 8
  br label %36

20:                                               ; preds = %15
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 40
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.pathspec_item*, %struct.pathspec_item** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @parse_long_magic(i32* %27, i32* %28, %struct.pathspec_item* %29, i8* %30)
  store i8* %31, i8** %5, align 8
  br label %36

32:                                               ; preds = %20
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i8* @parse_short_magic(i32* %33, i8* %34)
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %32, %26, %18
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

declare dso_local i64 @get_literal_global(...) #1

declare dso_local i8* @parse_long_magic(i32*, i32*, %struct.pathspec_item*, i8*) #1

declare dso_local i8* @parse_short_magic(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
