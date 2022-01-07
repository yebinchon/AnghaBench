; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_simplify_away.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_simplify_away.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32, %struct.pathspec_item* }
%struct.pathspec_item = type { i32, i32 }

@PATHSPEC_FROMTOP = common dso_local global i32 0, align 4
@PATHSPEC_MAXDEPTH = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@PATHSPEC_GLOB = common dso_local global i32 0, align 4
@PATHSPEC_ICASE = common dso_local global i32 0, align 4
@PATHSPEC_EXCLUDE = common dso_local global i32 0, align 4
@PATHSPEC_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.pathspec*)* @simplify_away to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simplify_away(i8* %0, i32 %1, %struct.pathspec* %2) #0 {
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
  br label %71

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
  %32 = load i32, i32* @PATHSPEC_ATTR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @GUARD_PATHSPEC(%struct.pathspec* %20, i32 %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %67, %19
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %38 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  %42 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %43 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %42, i32 0, i32 1
  %44 = load %struct.pathspec_item*, %struct.pathspec_item** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %44, i64 %46
  store %struct.pathspec_item* %47, %struct.pathspec_item** %9, align 8
  %48 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %49 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %41
  %57 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %58 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %59 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @ps_strncmp(%struct.pathspec_item* %57, i32 %60, i8* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %71

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %35

70:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %65, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @GUARD_PATHSPEC(%struct.pathspec*, i32) #1

declare dso_local i32 @ps_strncmp(%struct.pathspec_item*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
