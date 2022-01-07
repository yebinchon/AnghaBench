; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_vector.c_git_vector_search2.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_vector.c_git_vector_search2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_vector_search2(i64* %0, %struct.TYPE_3__* %1, i64 (i8*, i32)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64 (i8*, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 (i8*, i32)* %2, i64 (i8*, i32)** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64 (i8*, i32)*, i64 (i8*, i32)** %8, align 8
  %18 = icmp ne i64 (i8*, i32)* %17, null
  br label %19

19:                                               ; preds = %16, %13, %4
  %20 = phi i1 [ false, %13 ], [ false, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %48, %19
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load i64 (i8*, i32)*, i64 (i8*, i32)** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 %30(i8* %31, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load i64*, i64** %6, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = load i64*, i64** %6, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  store i32 0, i32* %5, align 4
  br label %53

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %10, align 8
  br label %23

51:                                               ; preds = %23
  %52 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
