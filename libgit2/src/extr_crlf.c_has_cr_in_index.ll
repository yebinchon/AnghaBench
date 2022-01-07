; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_crlf.c_has_cr_in_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_crlf.c_has_cr_in_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @has_cr_in_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_cr_in_index(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @git_filter_source_repo(i32* %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @git_filter_source_path(i32* %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @git_repository_index__weakptr(i32** %6, i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @git_error_clear()
  store i32 0, i32* %2, align 4
  br label %76

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.TYPE_3__* @git_index_get_bypath(i32* %26, i8* %27, i32 0)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %7, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call %struct.TYPE_3__* @git_index_get_bypath(i32* %31, i8* %32, i32 1)
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %7, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %76

36:                                               ; preds = %30, %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @S_ISREG(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %76

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i64 @git_blob_lookup(i32** %8, i32* %44, i32* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %76

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = call i8* @git_blob_rawcontent(i32* %51)
  store i8* %52, i8** %9, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @git_blob_rawsize(i32* %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @git__is_sizet(i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i64 -1, i64* %10, align 8
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i64, i64* %10, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32* @memchr(i8* %66, i8 signext 13, i64 %67)
  %69 = icmp ne i32* %68, null
  br label %70

70:                                               ; preds = %65, %62, %59
  %71 = phi i1 [ false, %62 ], [ false, %59 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @git_blob_free(i32* %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %70, %49, %42, %35, %23, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32* @git_filter_source_repo(i32*) #1

declare dso_local i8* @git_filter_source_path(i32*) #1

declare dso_local i64 @git_repository_index__weakptr(i32**, i32*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local %struct.TYPE_3__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @git_blob_lookup(i32**, i32*, i32*) #1

declare dso_local i8* @git_blob_rawcontent(i32*) #1

declare dso_local i64 @git_blob_rawsize(i32*) #1

declare dso_local i32 @git__is_sizet(i64) #1

declare dso_local i32* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @git_blob_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
