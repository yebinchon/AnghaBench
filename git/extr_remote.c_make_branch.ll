; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_make_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_make_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32*, i32 }

@branches_nr = common dso_local global i32 0, align 4
@branches = common dso_local global %struct.branch** null, align 8
@branches_alloc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"refs/heads/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.branch* (i8*, i32)* @make_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.branch* @make_branch(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.branch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.branch*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @branches_nr, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.branch**, %struct.branch*** @branches, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.branch*, %struct.branch** %17, i64 %19
  %21 = load %struct.branch*, %struct.branch** %20, align 8
  %22 = getelementptr inbounds %struct.branch, %struct.branch* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @strncmp(i8* %16, i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %15
  %28 = load %struct.branch**, %struct.branch*** @branches, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.branch*, %struct.branch** %28, i64 %30
  %32 = load %struct.branch*, %struct.branch** %31, align 8
  %33 = getelementptr inbounds %struct.branch, %struct.branch* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %57, label %51

40:                                               ; preds = %12
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.branch**, %struct.branch*** @branches, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.branch*, %struct.branch** %42, i64 %44
  %46 = load %struct.branch*, %struct.branch** %45, align 8
  %47 = getelementptr inbounds %struct.branch, %struct.branch* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @strcmp(i8* %41, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %40, %27
  %52 = load %struct.branch**, %struct.branch*** @branches, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.branch*, %struct.branch** %52, i64 %54
  %56 = load %struct.branch*, %struct.branch** %55, align 8
  store %struct.branch* %56, %struct.branch** %3, align 8
  br label %95

57:                                               ; preds = %40, %27, %15
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load %struct.branch**, %struct.branch*** @branches, align 8
  %63 = load i32, i32* @branches_nr, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @branches_alloc, align 4
  %66 = call i32 @ALLOC_GROW(%struct.branch** %62, i32 %64, i32 %65)
  %67 = call %struct.branch* @xcalloc(i32 1, i32 16)
  store %struct.branch* %67, %struct.branch** %6, align 8
  %68 = load %struct.branch*, %struct.branch** %6, align 8
  %69 = load %struct.branch**, %struct.branch*** @branches, align 8
  %70 = load i32, i32* @branches_nr, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @branches_nr, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.branch*, %struct.branch** %69, i64 %72
  store %struct.branch* %68, %struct.branch** %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %61
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32* @xstrndup(i8* %77, i32 %78)
  %80 = load %struct.branch*, %struct.branch** %6, align 8
  %81 = getelementptr inbounds %struct.branch, %struct.branch* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  br label %87

82:                                               ; preds = %61
  %83 = load i8*, i8** %4, align 8
  %84 = call i32* @xstrdup(i8* %83)
  %85 = load %struct.branch*, %struct.branch** %6, align 8
  %86 = getelementptr inbounds %struct.branch, %struct.branch* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  br label %87

87:                                               ; preds = %82, %76
  %88 = load %struct.branch*, %struct.branch** %6, align 8
  %89 = getelementptr inbounds %struct.branch, %struct.branch* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @xstrfmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %90)
  %92 = load %struct.branch*, %struct.branch** %6, align 8
  %93 = getelementptr inbounds %struct.branch, %struct.branch* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.branch*, %struct.branch** %6, align 8
  store %struct.branch* %94, %struct.branch** %3, align 8
  br label %95

95:                                               ; preds = %87, %51
  %96 = load %struct.branch*, %struct.branch** %3, align 8
  ret %struct.branch* %96
}

declare dso_local i32 @strncmp(i8*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

declare dso_local i32 @ALLOC_GROW(%struct.branch**, i32, i32) #1

declare dso_local %struct.branch* @xcalloc(i32, i32) #1

declare dso_local i32* @xstrndup(i8*, i32) #1

declare dso_local i32* @xstrdup(i8*) #1

declare dso_local i32 @xstrfmt(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
