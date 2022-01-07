; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_basecmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_basecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec_item = type { i32, i32 }

@PATHSPEC_ICASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pathspec_item*, i8*, i8*, i32)* @basecmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basecmp(%struct.pathspec_item* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pathspec_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pathspec_item* %0, %struct.pathspec_item** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %13 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PATHSPEC_ICASE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %21 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %26 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  br label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @strncmp(i8* %32, i8* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %58

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %40, %4
  %53 = load %struct.pathspec_item*, %struct.pathspec_item** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ps_strncmp(%struct.pathspec_item* %53, i8* %54, i8* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %38
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ps_strncmp(%struct.pathspec_item*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
