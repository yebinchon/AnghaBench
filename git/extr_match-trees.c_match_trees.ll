; ModuleID = '/home/carl/AnghaBench/git/extr_match-trees.c_match_trees.c'
source_filename = "/home/carl/AnghaBench/git/extr_match-trees.c_match_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.tree_desc = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%s/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, %struct.object_id*, i32*, i8**, i8*, i32)* @match_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_trees(%struct.object_id* %0, %struct.object_id* %1, i32* %2, i8** %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tree_desc, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.object_id*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.object_id* %0, %struct.object_id** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.object_id*, %struct.object_id** %7, align 8
  %21 = call i8* @fill_tree_desc_strict(%struct.tree_desc* %13, %struct.object_id* %20)
  store i8* %21, i8** %14, align 8
  br label %22

22:                                               ; preds = %67, %6
  %23 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %13, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = call %struct.object_id* @tree_entry_extract(%struct.tree_desc* %13, i8** %15, i16* %17)
  store %struct.object_id* %27, %struct.object_id** %16, align 8
  %28 = load i16, i16* %17, align 2
  %29 = call i32 @S_ISDIR(i16 zeroext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %67

32:                                               ; preds = %26
  %33 = load %struct.object_id*, %struct.object_id** %16, align 8
  %34 = load %struct.object_id*, %struct.object_id** %8, align 8
  %35 = call i32 @score_trees(%struct.object_id* %33, %struct.object_id* %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load i8**, i8*** %10, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = call i8* @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  %47 = load i8**, i8*** %10, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %32
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = call i8* @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55)
  store i8* %56, i8** %19, align 8
  %57 = load %struct.object_id*, %struct.object_id** %16, align 8
  %58 = load %struct.object_id*, %struct.object_id** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i8**, i8*** %10, align 8
  %61 = load i8*, i8** %19, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %62, 1
  call void @match_trees(%struct.object_id* %57, %struct.object_id* %58, i32* %59, i8** %60, i8* %61, i32 %63)
  %64 = load i8*, i8** %19, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %53, %50
  br label %67

67:                                               ; preds = %66, %31
  %68 = call i32 @update_tree_entry(%struct.tree_desc* %13)
  br label %22

69:                                               ; preds = %22
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @free(i8* %70)
  ret void
}

declare dso_local i8* @fill_tree_desc_strict(%struct.tree_desc*, %struct.object_id*) #1

declare dso_local %struct.object_id* @tree_entry_extract(%struct.tree_desc*, i8**, i16*) #1

declare dso_local i32 @S_ISDIR(i16 zeroext) #1

declare dso_local i32 @score_trees(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

declare dso_local i32 @update_tree_entry(%struct.tree_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
