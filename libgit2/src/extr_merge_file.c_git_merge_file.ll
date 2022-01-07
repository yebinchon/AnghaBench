; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge_file.c_git_merge_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge_file.c_git_merge_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_file(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [3 x %struct.TYPE_11__], align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = bitcast [3 x %struct.TYPE_11__]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br label %21

21:                                               ; preds = %18, %15, %5
  %22 = phi i1 [ false, %15 ], [ false, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = call %struct.TYPE_11__* @git_merge_file__normalize_inputs(%struct.TYPE_11__* %30, %struct.TYPE_11__* %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %7, align 8
  br label %33

33:                                               ; preds = %29, %21
  %34 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %11, i64 0, i64 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = call %struct.TYPE_11__* @git_merge_file__normalize_inputs(%struct.TYPE_11__* %34, %struct.TYPE_11__* %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %11, i64 0, i64 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = call %struct.TYPE_11__* @git_merge_file__normalize_inputs(%struct.TYPE_11__* %37, %struct.TYPE_11__* %38)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %9, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @merge_file__from_inputs(i32* %40, %struct.TYPE_11__* %41, %struct.TYPE_11__* %42, %struct.TYPE_11__* %43, i32* %44)
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local %struct.TYPE_11__* @git_merge_file__normalize_inputs(%struct.TYPE_11__*, %struct.TYPE_11__*) #2

declare dso_local i32 @merge_file__from_inputs(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
