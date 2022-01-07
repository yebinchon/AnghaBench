; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_index_insert_reuc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_index_insert_reuc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_7__*)* @merge_index_insert_reuc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_index_insert_reuc(i32* %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32*], align 16
  %11 = alloca i64, align 8
  %12 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %13 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = bitcast [3 x i32*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = bitcast { i64, i32 }* %12 to i8*
  %17 = bitcast %struct.TYPE_7__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %19 = load i64, i64* %18, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GIT_MERGE_INDEX_ENTRY_EXISTS(i64 %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_6__* @git_index_reuc_get_bypath(i32* %26, i32 %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %8, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i64, i64* %11, align 8
  %35 = icmp ult i64 %34, 3
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %43
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 %50
  store i32* %49, i32** %51, align 8
  br label %52

52:                                               ; preds = %36
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %25
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %60
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 %64
  store i32* %63, i32** %65, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %73 = load i32*, i32** %72, align 16
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %81 = load i32*, i32** %80, align 16
  %82 = call i32 @git_index_reuc_add(i32* %66, i32 %69, i32 %71, i32* %73, i32 %75, i32* %77, i32 %79, i32* %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %56, %24
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GIT_MERGE_INDEX_ENTRY_EXISTS(i64, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @git_index_reuc_get_bypath(i32*, i32) #2

declare dso_local i32 @git_index_reuc_add(i32*, i32, i32, i32*, i32, i32*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
