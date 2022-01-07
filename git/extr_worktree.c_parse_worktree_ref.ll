; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_parse_worktree_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_parse_worktree_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"main-worktree/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"worktrees/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_worktree_ref(i8* %0, i8** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @skip_prefix(i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  br label %81

19:                                               ; preds = %14
  %20 = load i8**, i8*** %7, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8**, i8*** %7, align 8
  store i8* null, i8** %23, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i8**, i8*** %9, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i8**, i8*** %9, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  store i32 0, i32* %5, align 4
  br label %81

36:                                               ; preds = %4
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @skip_prefix(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 47)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %45, %40
  store i32 -1, i32* %5, align 4
  br label %81

55:                                               ; preds = %49
  %56 = load i8**, i8*** %7, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = load i8**, i8*** %7, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %61
  %73 = load i8**, i8*** %9, align 8
  %74 = icmp ne i8** %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8**, i8*** %9, align 8
  store i8* %77, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %72
  store i32 0, i32* %5, align 4
  br label %81

80:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %79, %54, %35, %18
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
