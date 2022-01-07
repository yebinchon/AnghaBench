; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attr.c_push_attr_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attr.c_push_attr_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@git_attr_file__parse_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i8*, i8*, i32)* @push_attr_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_attr_file(i32* %0, i32* %1, i32* %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i32, i32* @git_attr_file__parse_buffer, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @git_attr_cache__get(i32** %17, i32* %18, i32* %19, i32 %20, i8* %21, i8* %22, i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %8, align 4
  br label %44

30:                                               ; preds = %7
  %31 = load i32*, i32** %17, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = call i32 @git_vector_insert(i32* %34, i32* %35)
  store i32 %36, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %17, align 8
  %40 = call i32 @git_attr_file__free(i32* %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %28
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @git_attr_cache__get(i32**, i32*, i32*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @git_vector_insert(i32*, i32*) #1

declare dso_local i32 @git_attr_file__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
