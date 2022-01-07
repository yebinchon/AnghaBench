; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_blame_overlap.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_blame_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i64, i64, i64, i32*)* @blame_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blame_overlap(i32* %0, %struct.TYPE_8__* %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [3 x %struct.TYPE_8__], align 16
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = bitcast [3 x %struct.TYPE_8__]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 48, i1 false)
  %16 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %14, i64 0, i64 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @split_overlap(%struct.TYPE_8__* %16, %struct.TYPE_8__* %17, i64 %18, i64 %19, i64 %20, i32* %21)
  %23 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %14, i64 0, i64 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 16
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %14, i64 0, i64 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = call i64 @split_blame(i32* %28, %struct.TYPE_8__* %29, %struct.TYPE_8__* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %7, align 4
  br label %38

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %6
  %36 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %14, i64 0, i64 0
  %37 = call i32 @decref_split(%struct.TYPE_8__* %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %33
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @split_overlap(%struct.TYPE_8__*, %struct.TYPE_8__*, i64, i64, i64, i32*) #2

declare dso_local i64 @split_blame(i32*, %struct.TYPE_8__*, %struct.TYPE_8__*) #2

declare dso_local i32 @decref_split(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
