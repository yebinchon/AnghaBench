; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attr_file.c_attr_file_oid_from_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attr_file.c_attr_file_oid_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @attr_file_oid_from_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_file_oid_from_index(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @git_repository_index__weakptr(i32** %9, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @git_index__find_pos(i64* %10, i32* %16, i8* %17, i32 0, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call %struct.TYPE_3__* @git_index_get_byindex(i32* %23, i64 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %11, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %22
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %27, %20
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @git_repository_index__weakptr(i32**, i32*) #1

declare dso_local i32 @git_index__find_pos(i64*, i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @git_index_get_byindex(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
