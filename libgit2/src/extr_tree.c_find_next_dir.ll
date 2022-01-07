; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_find_next_dir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_find_next_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i64)* @find_next_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_next_dir(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @git_index_entrycount(i32* %11)
  store i64 %12, i64* %9, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %52, %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.TYPE_3__* @git_index_get_byindex(i32* %21, i64 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %10, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %20
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @memcmp(i8* %33, i8* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 47
  br i1 %49, label %50, label %51

50:                                               ; preds = %41, %30, %20
  br label %55

51:                                               ; preds = %41, %38
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %16

55:                                               ; preds = %50, %16
  %56 = load i64, i64* %8, align 8
  ret i64 %56
}

declare dso_local i64 @git_index_entrycount(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_3__* @git_index_get_byindex(i32*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
