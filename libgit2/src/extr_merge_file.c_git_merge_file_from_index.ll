; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge_file.c_git_merge_file_from_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge_file.c_git_merge_file_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_file_from_index(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca %struct.TYPE_6__, align 4
  %16 = alloca %struct.TYPE_6__, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [3 x i32*], align 16
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  %20 = bitcast %struct.TYPE_6__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = bitcast %struct.TYPE_6__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  store i32* null, i32** %17, align 8
  %23 = bitcast [3 x i32*]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 24, i1 false)
  store i32 0, i32* %19, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %6
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br label %35

35:                                               ; preds = %32, %29, %26, %6
  %36 = phi i1 [ false, %29 ], [ false, %26 ], [ false, %6 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @git_repository_odb(i32** %17, i32* %41)
  store i32 %42, i32* %19, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %74

45:                                               ; preds = %35
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %50 = load i32*, i32** %17, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @git_merge_file__input_from_index(%struct.TYPE_6__* %14, i32** %49, i32* %50, i32* %51)
  store i32 %52, i32* %19, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %74

55:                                               ; preds = %48
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %13, align 8
  br label %56

56:                                               ; preds = %55, %45
  %57 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 1
  %58 = load i32*, i32** %17, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @git_merge_file__input_from_index(%struct.TYPE_6__* %15, i32** %57, i32* %58, i32* %59)
  store i32 %60, i32* %19, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 2
  %64 = load i32*, i32** %17, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @git_merge_file__input_from_index(%struct.TYPE_6__* %16, i32** %63, i32* %64, i32* %65)
  store i32 %66, i32* %19, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %56
  br label %74

69:                                               ; preds = %62
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @merge_file__from_inputs(i32* %70, %struct.TYPE_6__* %71, %struct.TYPE_6__* %15, %struct.TYPE_6__* %16, i32* %72)
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %69, %68, %54, %44
  %75 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %76 = load i32*, i32** %75, align 16
  %77 = call i32 @git_odb_object_free(i32* %76)
  %78 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @git_odb_object_free(i32* %79)
  %81 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 2
  %82 = load i32*, i32** %81, align 16
  %83 = call i32 @git_odb_object_free(i32* %82)
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @git_odb_free(i32* %84)
  %86 = load i32, i32* %19, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @git_repository_odb(i32**, i32*) #2

declare dso_local i32 @git_merge_file__input_from_index(%struct.TYPE_6__*, i32**, i32*, i32*) #2

declare dso_local i32 @merge_file__from_inputs(i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*) #2

declare dso_local i32 @git_odb_object_free(i32*) #2

declare dso_local i32 @git_odb_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
