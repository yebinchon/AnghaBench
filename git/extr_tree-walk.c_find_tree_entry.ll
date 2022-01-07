; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_find_tree_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_find_tree_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree_desc = type { i32, i64 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.tree_desc*, i8*, %struct.object_id*, i16*)* @find_tree_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_tree_entry(%struct.repository* %0, %struct.tree_desc* %1, i8* %2, %struct.object_id* %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.tree_desc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.tree_desc* %1, %struct.tree_desc** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i16* %4, i16** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %12, align 4
  br label %19

19:                                               ; preds = %65, %45, %37, %5
  %20 = load %struct.tree_desc*, %struct.tree_desc** %8, align 8
  %21 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %89

24:                                               ; preds = %19
  %25 = load %struct.tree_desc*, %struct.tree_desc** %8, align 8
  %26 = load i16*, i16** %11, align 8
  %27 = call %struct.object_id* @tree_entry_extract(%struct.tree_desc* %25, i8** %13, i16* %26)
  %28 = call i32 @oidcpy(%struct.object_id* %14, %struct.object_id* %27)
  %29 = load %struct.tree_desc*, %struct.tree_desc** %8, align 8
  %30 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %29, i32 0, i32 0
  %31 = call i32 @tree_entry_len(i32* %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.tree_desc*, %struct.tree_desc** %8, align 8
  %33 = call i32 @update_tree_entry(%struct.tree_desc* %32)
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %19

38:                                               ; preds = %24
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @memcmp(i8* %39, i8* %40, i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %19

46:                                               ; preds = %38
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %89

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.object_id*, %struct.object_id** %10, align 8
  %56 = call i32 @oidcpy(%struct.object_id* %55, %struct.object_id* %14)
  store i32 0, i32* %6, align 4
  br label %90

57:                                               ; preds = %50
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 47
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %19

66:                                               ; preds = %57
  %67 = load i16*, i16** %11, align 8
  %68 = load i16, i16* %67, align 2
  %69 = call i32 @S_ISDIR(i16 zeroext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %89

72:                                               ; preds = %66
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.object_id*, %struct.object_id** %10, align 8
  %79 = call i32 @oidcpy(%struct.object_id* %78, %struct.object_id* %14)
  store i32 0, i32* %6, align 4
  br label %90

80:                                               ; preds = %72
  %81 = load %struct.repository*, %struct.repository** %7, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load %struct.object_id*, %struct.object_id** %10, align 8
  %87 = load i16*, i16** %11, align 8
  %88 = call i32 @get_tree_entry(%struct.repository* %81, %struct.object_id* %14, i8* %85, %struct.object_id* %86, i16* %87)
  store i32 %88, i32* %6, align 4
  br label %90

89:                                               ; preds = %71, %49, %19
  store i32 -1, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %80, %77, %54
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local %struct.object_id* @tree_entry_extract(%struct.tree_desc*, i8**, i16*) #1

declare dso_local i32 @tree_entry_len(i32*) #1

declare dso_local i32 @update_tree_entry(%struct.tree_desc*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @S_ISDIR(i16 zeroext) #1

declare dso_local i32 @get_tree_entry(%struct.repository*, %struct.object_id*, i8*, %struct.object_id*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
