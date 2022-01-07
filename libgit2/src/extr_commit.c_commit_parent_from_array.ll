; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_commit_parent_from_array.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_commit_parent_from_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i8*)* @commit_parent_from_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit_parent_from_array(i64 %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @git_commit_owner(i32* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %33

30:                                               ; preds = %16
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @git_commit_id(i32* %31)
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %30, %29, %15
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i64 @git_commit_owner(i32*) #1

declare dso_local i32* @git_commit_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
