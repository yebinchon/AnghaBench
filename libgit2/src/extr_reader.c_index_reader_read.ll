; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_reader.c_index_reader_read.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_reader.c_index_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i8*)* @index_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_reader_read(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = call %struct.TYPE_5__* @git_index_get_bypath(i32 %20, i8* %21, i32 0)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %13, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %25, i32* %6, align 4
  br label %59

26:                                               ; preds = %5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32 @git_blob_lookup(i32** %14, i32 %29, i32* %31)
  store i32 %32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %55

35:                                               ; preds = %26
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call i32 @git_oid_cpy(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @git_blob__getbuf(i32* %52, i32* %53)
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %51, %34
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @git_blob_free(i32* %56)
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %24
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_5__* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @git_blob_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_blob__getbuf(i32*, i32*) #1

declare dso_local i32 @git_blob_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
