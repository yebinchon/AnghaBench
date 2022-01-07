; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_match_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_match_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec_item = type { i32 }
%struct.name_entry = type { i32, i32 }

@PATHSPEC_ICASE = common dso_local global i32 0, align 4
@entry_not_interesting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pathspec_item*, %struct.name_entry*, i32, i8*, i32, i32*)* @match_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_entry(%struct.pathspec_item* %0, %struct.name_entry* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pathspec_item*, align 8
  %9 = alloca %struct.name_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.pathspec_item* %0, %struct.pathspec_item** %8, align 8
  store %struct.name_entry* %1, %struct.name_entry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 -1, i32* %14, align 4
  %15 = load %struct.pathspec_item*, %struct.pathspec_item** %8, align 8
  %16 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PATHSPEC_ICASE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @entry_not_interesting, align 4
  %23 = load i32*, i32** %13, align 8
  store i32 %22, i32* %23, align 4
  br label %51

24:                                               ; preds = %6
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @entry_not_interesting, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %32 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @strncmp(i8* %30, i32 %33, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %99

47:                                               ; preds = %41
  %48 = load i32, i32* @entry_not_interesting, align 4
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %24
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %99

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 47
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %99

69:                                               ; preds = %60
  %70 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %71 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @S_ISDIR(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %69
  %76 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %77 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @S_ISGITLINK(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %99

82:                                               ; preds = %75, %69
  br label %83

83:                                               ; preds = %82, %56
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.pathspec_item*, %struct.pathspec_item** %8, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %90 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @ps_strncmp(%struct.pathspec_item* %87, i8* %88, i32 %91, i32 %92)
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %86, %83
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  store i32 1, i32* %7, align 4
  br label %99

98:                                               ; preds = %94
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %97, %81, %68, %55, %46
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i32 @ps_strncmp(%struct.pathspec_item*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
