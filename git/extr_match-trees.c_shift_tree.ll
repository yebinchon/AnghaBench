; ModuleID = '/home/carl/AnghaBench/git/extr_match-trees.c_shift_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_match-trees.c_shift_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot find path %s in tree %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shift_tree(%struct.repository* %0, %struct.object_id* %1, %struct.object_id* %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 2, i32* %10, align 4
  br label %19

19:                                               ; preds = %18, %5
  %20 = load %struct.object_id*, %struct.object_id** %7, align 8
  %21 = load %struct.object_id*, %struct.object_id** %8, align 8
  %22 = call i32 @score_trees(%struct.object_id* %20, %struct.object_id* %21)
  store i32 %22, i32* %14, align 4
  store i32 %22, i32* %13, align 4
  %23 = call i8* @xcalloc(i32 1, i32 1)
  store i8* %23, i8** %11, align 8
  %24 = call i8* @xcalloc(i32 1, i32 1)
  store i8* %24, i8** %12, align 8
  %25 = load %struct.object_id*, %struct.object_id** %7, align 8
  %26 = load %struct.object_id*, %struct.object_id** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @match_trees(%struct.object_id* %25, %struct.object_id* %26, i32* %13, i8** %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.object_id*, %struct.object_id** %8, align 8
  %30 = load %struct.object_id*, %struct.object_id** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @match_trees(%struct.object_id* %29, %struct.object_id* %30, i32* %14, i8** %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.object_id*, %struct.object_id** %9, align 8
  %34 = load %struct.object_id*, %struct.object_id** %8, align 8
  %35 = call i32 @oidcpy(%struct.object_id* %33, %struct.object_id* %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %19
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %68

44:                                               ; preds = %39
  %45 = load %struct.repository*, %struct.repository** %6, align 8
  %46 = load %struct.object_id*, %struct.object_id** %8, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.object_id*, %struct.object_id** %9, align 8
  %49 = call i64 @get_tree_entry(%struct.repository* %45, %struct.object_id* %46, i8* %47, %struct.object_id* %48, i16* %15)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.object_id*, %struct.object_id** %8, align 8
  %54 = call i32 @oid_to_hex(%struct.object_id* %53)
  %55 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %54)
  br label %56

56:                                               ; preds = %51, %44
  br label %68

57:                                               ; preds = %19
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %68

62:                                               ; preds = %57
  %63 = load %struct.object_id*, %struct.object_id** %7, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.object_id*, %struct.object_id** %8, align 8
  %66 = load %struct.object_id*, %struct.object_id** %9, align 8
  %67 = call i32 @splice_tree(%struct.object_id* %63, i8* %64, %struct.object_id* %65, %struct.object_id* %66)
  br label %68

68:                                               ; preds = %62, %61, %56, %43
  ret void
}

declare dso_local i32 @score_trees(%struct.object_id*, %struct.object_id*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @match_trees(%struct.object_id*, %struct.object_id*, i32*, i8**, i8*, i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i64 @get_tree_entry(%struct.repository*, %struct.object_id*, i8*, %struct.object_id*, i16*) #1

declare dso_local i32 @die(i8*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @splice_tree(%struct.object_id*, i8*, %struct.object_id*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
