; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_git_packbuilder_insert_recur.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_git_packbuilder_insert_recur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown object type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_packbuilder_insert_recur(%struct.TYPE_6__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ false, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %24 = call i32 @git_object_lookup(i32** %8, i32 %21, i32* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %15
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @git_object_type(i32* %29)
  switch i32 %30, label %56 [
    i32 131, label %31
    i32 128, label %36
    i32 130, label %40
    i32 129, label %44
  ]

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @git_packbuilder_insert(%struct.TYPE_6__* %32, i32* %33, i8* %34)
  store i32 %35, i32* %9, align 4
  br label %59

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @git_packbuilder_insert_tree(%struct.TYPE_6__* %37, i32* %38)
  store i32 %39, i32* %9, align 4
  br label %59

40:                                               ; preds = %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @git_packbuilder_insert_commit(%struct.TYPE_6__* %41, i32* %42)
  store i32 %43, i32* %9, align 4
  br label %59

44:                                               ; preds = %28
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @git_packbuilder_insert(%struct.TYPE_6__* %45, i32* %46, i8* %47)
  store i32 %48, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %60

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32* @git_tag_target_id(i32* %53)
  %55 = call i32 @git_packbuilder_insert_recur(%struct.TYPE_6__* %52, i32* %54, i8* null)
  store i32 %55, i32* %9, align 4
  br label %59

56:                                               ; preds = %28
  %57 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %58 = call i32 @git_error_set(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %51, %40, %36, %31
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @git_object_free(i32* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_object_type(i32*) #1

declare dso_local i32 @git_packbuilder_insert(%struct.TYPE_6__*, i32*, i8*) #1

declare dso_local i32 @git_packbuilder_insert_tree(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @git_packbuilder_insert_commit(%struct.TYPE_6__*, i32*) #1

declare dso_local i32* @git_tag_target_id(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
