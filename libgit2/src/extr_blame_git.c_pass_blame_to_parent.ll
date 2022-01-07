; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_pass_blame_to_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_pass_blame_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @pass_blame_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pass_blame_to_parent(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %5, align 8
  %14 = ptrtoint i32* %13 to i32
  store i32 %14, i32* %12, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %16 = load i32*, i32** %6, align 8
  %17 = ptrtoint i32* %16 to i32
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %19 = load i32*, i32** %7, align 8
  %20 = ptrtoint i32* %19 to i32
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  store i32* null, i32** %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @find_last_in_target(i64* %8, i32* %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %53

30:                                               ; preds = %3
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @fill_origin_blob(i32* %31, i32* %9)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fill_origin_blob(i32* %33, i32* %10)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @diff_hunks(i32 %35, i32 %36, %struct.TYPE_3__* %11)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %53

40:                                               ; preds = %30
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 @blame_chunk(i32* %41, i32 %43, i32 %45, i64 %46, i32* %47, i32* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %53

52:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %51, %39, %29
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @find_last_in_target(i64*, i32*, i32*) #1

declare dso_local i32 @fill_origin_blob(i32*, i32*) #1

declare dso_local i64 @diff_hunks(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @blame_chunk(i32*, i32, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
