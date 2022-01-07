; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_insert_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_insert_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.walk_object = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insert_tree(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.walk_object*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @git_tree_id(i32* %14)
  %16 = call i32 @retrieve_object(%struct.walk_object** %9, %struct.TYPE_5__* %13, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.walk_object*, %struct.walk_object** %9, align 8
  %22 = getelementptr inbounds %struct.walk_object, %struct.walk_object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.walk_object*, %struct.walk_object** %9, align 8
  %27 = getelementptr inbounds %struct.walk_object, %struct.walk_object* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  store i32 0, i32* %3, align 4
  br label %106

31:                                               ; preds = %25
  %32 = load %struct.walk_object*, %struct.walk_object** %9, align 8
  %33 = getelementptr inbounds %struct.walk_object, %struct.walk_object* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = load %struct.walk_object*, %struct.walk_object** %9, align 8
  %36 = getelementptr inbounds %struct.walk_object, %struct.walk_object* %35, i32 0, i32 2
  %37 = call i32 @git_packbuilder_insert(%struct.TYPE_5__* %34, i32* %36, i8* null)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %106

41:                                               ; preds = %31
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %101, %41
  %43 = load i64, i64* %6, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @git_tree_entrycount(i32* %44)
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %104

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32* @git_tree_entry_byindex(i32* %48, i64 %49)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32* @git_tree_entry_id(i32* %51)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @git_tree_entry_type(i32* %53)
  switch i32 %54, label %99 [
    i32 128, label %55
    i32 129, label %75
  ]

55:                                               ; preds = %47
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @git_tree_lookup(i32** %8, i32 %58, i32* %59)
  store i32 %60, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %106

64:                                               ; preds = %55
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @insert_tree(%struct.TYPE_5__* %65, i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @git_tree_free(i32* %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %106

74:                                               ; preds = %64
  br label %100

75:                                               ; preds = %47
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @retrieve_object(%struct.walk_object** %9, %struct.TYPE_5__* %76, i32* %77)
  store i32 %78, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %106

82:                                               ; preds = %75
  %83 = load %struct.walk_object*, %struct.walk_object** %9, align 8
  %84 = getelementptr inbounds %struct.walk_object, %struct.walk_object* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %101

88:                                               ; preds = %82
  %89 = load i32*, i32** %11, align 8
  %90 = call i8* @git_tree_entry_name(i32* %89)
  store i8* %90, i8** %10, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @git_packbuilder_insert(%struct.TYPE_5__* %91, i32* %92, i8* %93)
  store i32 %94, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %106

98:                                               ; preds = %88
  br label %100

99:                                               ; preds = %47
  br label %100

100:                                              ; preds = %99, %98, %74
  br label %101

101:                                              ; preds = %100, %87
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %42

104:                                              ; preds = %42
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %96, %80, %72, %62, %39, %30, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @retrieve_object(%struct.walk_object**, %struct.TYPE_5__*, i32*) #1

declare dso_local i32* @git_tree_id(i32*) #1

declare dso_local i32 @git_packbuilder_insert(%struct.TYPE_5__*, i32*, i8*) #1

declare dso_local i64 @git_tree_entrycount(i32*) #1

declare dso_local i32* @git_tree_entry_byindex(i32*, i64) #1

declare dso_local i32* @git_tree_entry_id(i32*) #1

declare dso_local i32 @git_tree_entry_type(i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i8* @git_tree_entry_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
