; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_reader.c_tree_reader_read.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_reader.c_tree_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i8*)* @tree_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_reader_read(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @git_tree_entry_bypath(i32** %12, i32 %20, i8* %21)
  store i32 %22, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git_tree_owner(i32 %27)
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @git_tree_entry_id(i32* %29)
  %31 = call i32 @git_blob_lookup(i32** %13, i32 %28, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24, %5
  br label %62

34:                                               ; preds = %24
  %35 = load i32*, i32** %13, align 8
  %36 = call i64 @git_blob_rawsize(i32* %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @GIT_ERROR_CHECK_BLOBSIZE(i64 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @git_blob_rawcontent(i32* %40)
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @git_buf_set(i32* %39, i32 %41, i64 %42)
  store i32 %43, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %62

46:                                               ; preds = %34
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @git_tree_entry_id(i32* %51)
  %53 = call i32 @git_oid_cpy(i32* %50, i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @git_tree_entry_filemode(i32* %58)
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %54
  br label %62

62:                                               ; preds = %61, %45, %33
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @git_blob_free(i32* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @git_tree_entry_free(i32* %65)
  %67 = load i32, i32* %15, align 4
  ret i32 %67
}

declare dso_local i32 @git_tree_entry_bypath(i32**, i32, i8*) #1

declare dso_local i32 @git_blob_lookup(i32**, i32, i32) #1

declare dso_local i32 @git_tree_owner(i32) #1

declare dso_local i32 @git_tree_entry_id(i32*) #1

declare dso_local i64 @git_blob_rawsize(i32*) #1

declare dso_local i32 @GIT_ERROR_CHECK_BLOBSIZE(i64) #1

declare dso_local i32 @git_buf_set(i32*, i32, i64) #1

declare dso_local i32 @git_blob_rawcontent(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_tree_entry_filemode(i32*) #1

declare dso_local i32 @git_blob_free(i32*) #1

declare dso_local i32 @git_tree_entry_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
