; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_walk.c_treewalk_skip_de_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_walk.c_treewalk_skip_de_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treewalk_skip_data = type { i64, i64, i32, i32 }

@GIT_OBJECT_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*)* @treewalk_skip_de_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treewalk_skip_de_cb(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.treewalk_skip_data*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.treewalk_skip_data*
  store %struct.treewalk_skip_data* %11, %struct.treewalk_skip_data** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i8* @git_tree_entry_name(i32* %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @GIT_UNUSED(i8* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @git_tree_entry_type(i32* %16)
  %18 = load i64, i64* @GIT_OBJECT_TREE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.treewalk_skip_data*, %struct.treewalk_skip_data** %8, align 8
  %22 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.treewalk_skip_data*, %struct.treewalk_skip_data** %8, align 8
  %27 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.treewalk_skip_data*, %struct.treewalk_skip_data** %8, align 8
  %32 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.treewalk_skip_data*, %struct.treewalk_skip_data** %8, align 8
  %38 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @strcmp(i8* %36, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %57

43:                                               ; preds = %35, %30
  %44 = load %struct.treewalk_skip_data*, %struct.treewalk_skip_data** %8, align 8
  %45 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.treewalk_skip_data*, %struct.treewalk_skip_data** %8, align 8
  %51 = getelementptr inbounds %struct.treewalk_skip_data, %struct.treewalk_skip_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @strcmp(i8* %49, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %57

56:                                               ; preds = %48, %43
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %42
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i8* @git_tree_entry_name(i32*) #1

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i64 @git_tree_entry_type(i32*) #1

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
