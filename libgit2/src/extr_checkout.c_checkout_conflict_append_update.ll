; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_conflict_append_update.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_conflict_append_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*)* @checkout_conflict_append_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_conflict_append_update(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %10, align 8
  %15 = call %struct.TYPE_10__* @git__calloc(i32 1, i32 24)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %17 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %28 = call i32 @checkout_conflict_detect_submodule(%struct.TYPE_10__* %27)
  store i32 %28, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %35 = call i32 @checkout_conflict_detect_binary(i32 %33, %struct.TYPE_10__* %34)
  store i32 %35, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30, %4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = call i32 @git__free(%struct.TYPE_10__* %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %49

41:                                               ; preds = %30
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = call i64 @git_vector_insert(i32* %43, %struct.TYPE_10__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %47, %37
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_10__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__*) #1

declare dso_local i32 @checkout_conflict_detect_submodule(%struct.TYPE_10__*) #1

declare dso_local i32 @checkout_conflict_detect_binary(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @git__free(%struct.TYPE_10__*) #1

declare dso_local i64 @git_vector_insert(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
