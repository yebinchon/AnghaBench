; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_match_wildcard_base.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_match_wildcard_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec_item = type { i8*, i32 }

@entry_interesting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pathspec_item*, i8*, i32, i32*)* @match_wildcard_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_wildcard_base(%struct.pathspec_item* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pathspec_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pathspec_item* %0, %struct.pathspec_item** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %14 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %17 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @basecmp(%struct.pathspec_item* %28, i8* %29, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %70

36:                                               ; preds = %21
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %52, %36
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 47
  br label %50

50:                                               ; preds = %41, %38
  %51 = phi i1 [ false, %38 ], [ %49, %41 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %12, align 4
  br label %38

55:                                               ; preds = %50
  %56 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @basecmp(%struct.pathspec_item* %56, i8* %57, i8* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %70

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %68

66:                                               ; preds = %4
  %67 = load i32*, i32** %9, align 8
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* @entry_interesting, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %62, %25
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @basecmp(%struct.pathspec_item*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
