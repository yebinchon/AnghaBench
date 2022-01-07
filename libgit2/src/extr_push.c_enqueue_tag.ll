; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_push.c_enqueue_tag.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_push.c_enqueue_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GIT_OBJECT_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_3__*, i32*)* @enqueue_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_tag(i32** %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %16 = call i32 @git_object_lookup(i32** %8, i32 %13, i32* %14, i64 %15)
  store i32 %16, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @git_object_type(i32* %22)
  %24 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @git_object_id(i32* %30)
  %32 = call i32 @git_packbuilder_insert(i32 %29, i32 %31, i32* null)
  store i32 %32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %44

35:                                               ; preds = %26
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @git_tag_target(i32** %9, i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @git_object_free(i32* %41)
  %43 = load i32*, i32** %9, align 8
  store i32* %43, i32** %8, align 8
  br label %21

44:                                               ; preds = %39, %34, %21
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @git_object_free(i32* %48)
  br label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = load i32**, i32*** %5, align 8
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i64) #1

declare dso_local i64 @git_object_type(i32*) #1

declare dso_local i32 @git_packbuilder_insert(i32, i32, i32*) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @git_tag_target(i32**, i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
