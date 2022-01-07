; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_vector.c_git_vector_insert_null.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_vector.c_git_vector_insert_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_vector_insert_null(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ false, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %8, i64 %23, i64 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @resize_vector(%struct.TYPE_4__* %32, i64 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %70

37:                                               ; preds = %31, %17
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %52, %53
  %55 = mul i64 8, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memmove(i32* %44, i32* %49, i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i64, i64* %7, align 8
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memset(i32* %62, i32 0, i32 %65)
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %37, %36
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i64) #1

declare dso_local i64 @resize_vector(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
