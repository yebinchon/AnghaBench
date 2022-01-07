; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_mark_tree_uninteresting.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_mark_tree_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.walk_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @mark_tree_uninteresting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_tree_uninteresting(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.walk_object*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @retrieve_object(%struct.walk_object** %6, %struct.TYPE_5__* %12, i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.walk_object*, %struct.walk_object** %6, align 8
  %20 = getelementptr inbounds %struct.walk_object, %struct.walk_object* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %73

24:                                               ; preds = %18
  %25 = load %struct.walk_object*, %struct.walk_object** %6, align 8
  %26 = getelementptr inbounds %struct.walk_object, %struct.walk_object* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @git_tree_lookup(i32** %7, i32 %29, i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %73

35:                                               ; preds = %24
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @git_tree_entrycount(i32* %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32* @git_tree_entry_byindex(i32* %42, i64 %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32* @git_tree_entry_id(i32* %45)
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @git_tree_entry_type(i32* %47)
  switch i32 %48, label %63 [
    i32 128, label %49
    i32 129, label %56
  ]

49:                                               ; preds = %41
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @mark_tree_uninteresting(%struct.TYPE_5__* %50, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %69

55:                                               ; preds = %49
  br label %64

56:                                               ; preds = %41
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @mark_blob_uninteresting(%struct.TYPE_5__* %57, i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %69

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %62, %55
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %9, align 8
  br label %36

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68, %61, %54
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @git_tree_free(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %33, %23, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @retrieve_object(%struct.walk_object**, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i64 @git_tree_entrycount(i32*) #1

declare dso_local i32* @git_tree_entry_byindex(i32*, i64) #1

declare dso_local i32* @git_tree_entry_id(i32*) #1

declare dso_local i32 @git_tree_entry_type(i32*) #1

declare dso_local i32 @mark_blob_uninteresting(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
