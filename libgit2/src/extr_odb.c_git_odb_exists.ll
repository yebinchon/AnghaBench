; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_exists.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_exists(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @git_oid_is_zero(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %44

20:                                               ; preds = %12
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @odb_cache(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @git_cache_get_raw(i32 %22, i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @git_odb_object_free(i32* %27)
  store i32 1, i32* %3, align 4
  br label %44

29:                                               ; preds = %20
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @odb_exists_1(i32* %30, i32* %31, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %44

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @git_odb_refresh(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @odb_exists_1(i32* %40, i32* %41, i32 1)
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %39, %34, %26, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_oid_is_zero(i32*) #1

declare dso_local i32* @git_cache_get_raw(i32, i32*) #1

declare dso_local i32 @odb_cache(i32*) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

declare dso_local i32 @odb_exists_1(i32*, i32*, i32) #1

declare dso_local i32 @git_odb_refresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
