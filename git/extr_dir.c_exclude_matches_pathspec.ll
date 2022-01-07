; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_exclude_matches_pathspec.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_exclude_matches_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32, %struct.pathspec_item* }
%struct.pathspec_item = type { i32, i8* }

@PATHSPEC_FROMTOP = common dso_local global i32 0, align 4
@PATHSPEC_MAXDEPTH = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@PATHSPEC_GLOB = common dso_local global i32 0, align 4
@PATHSPEC_ICASE = common dso_local global i32 0, align 4
@PATHSPEC_EXCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.pathspec*)* @exclude_matches_pathspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exclude_matches_pathspec(i8* %0, i32 %1, %struct.pathspec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pathspec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pathspec_item*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pathspec* %2, %struct.pathspec** %7, align 8
  %11 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %12 = icmp ne %struct.pathspec* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %15 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %91

19:                                               ; preds = %13
  %20 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %21 = load i32, i32* @PATHSPEC_FROMTOP, align 4
  %22 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PATHSPEC_GLOB, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PATHSPEC_ICASE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @GUARD_PATHSPEC(%struct.pathspec* %20, i32 %31)
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %87, %19
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %36 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %33
  %40 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %41 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %40, i32 0, i32 1
  %42 = load %struct.pathspec_item*, %struct.pathspec_item** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %42, i64 %44
  store %struct.pathspec_item* %45, %struct.pathspec_item** %9, align 8
  %46 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %47 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %39
  %53 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %54 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %55 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ps_strncmp(%struct.pathspec_item* %53, i8* %56, i8* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  store i32 1, i32* %4, align 4
  br label %91

62:                                               ; preds = %52, %39
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %68 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 47
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %78 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %79 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @ps_strncmp(%struct.pathspec_item* %77, i8* %80, i8* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %91

86:                                               ; preds = %76, %66, %62
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %33

90:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %85, %61, %18
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @GUARD_PATHSPEC(%struct.pathspec*, i32) #1

declare dso_local i32 @ps_strncmp(%struct.pathspec_item*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
