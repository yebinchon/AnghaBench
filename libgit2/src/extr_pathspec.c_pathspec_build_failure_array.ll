; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_build_failure_array.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_build_failure_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32*, i32*)* @pathspec_build_failure_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pathspec_build_failure_array(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %44, %4
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @git_bitvec_get(i32* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %44

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i8** @git_array_alloc(i32 %27)
  store i8** %28, i8*** %11, align 8
  %29 = icmp eq i8** %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %48

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call %struct.TYPE_7__* @git_vector_get(%struct.TYPE_6__* %32, i64 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %12, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @git_pool_strdup(i32* %35, i32 %38)
  %40 = load i8**, i8*** %11, align 8
  store i8* %39, i8** %40, align 8
  %41 = icmp eq i8* %39, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %48

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %13

47:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %42, %30
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @git_bitvec_get(i32*, i64) #1

declare dso_local i8** @git_array_alloc(i32) #1

declare dso_local %struct.TYPE_7__* @git_vector_get(%struct.TYPE_6__*, i64) #1

declare dso_local i8* @git_pool_strdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
