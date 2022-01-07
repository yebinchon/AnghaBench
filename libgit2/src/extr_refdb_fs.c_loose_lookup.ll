; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_loose_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_loose_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_SYMREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_3__*, i8*)* @loose_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_lookup(i32** %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32**, i32*** %4, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32**, i32*** %4, align 8
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @is_per_worktree_ref(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @loose_readbuffer(i32* %7, i8* %30, i8* %31)
  store i32 %32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %68

35:                                               ; preds = %29
  %36 = call i32 @git_buf_cstr(i32* %7)
  %37 = load i32, i32* @GIT_SYMREF, align 4
  %38 = call i64 @git__prefixcmp(i32 %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = call i32 @git_buf_rtrim(i32* %7)
  %42 = call i8* @loose_parse_symbolic(i32* %7)
  store i8* %42, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 -1, i32* %8, align 4
  br label %54

45:                                               ; preds = %40
  %46 = load i32**, i32*** %4, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32* @git_reference__alloc_symbolic(i8* %49, i8* %50)
  %52 = load i32**, i32*** %4, align 8
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %53, %44
  br label %67

55:                                               ; preds = %35
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @loose_parse_oid(i32* %11, i8* %56, i32* %7)
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load i32**, i32*** %4, align 8
  %61 = icmp ne i32** %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = call i32* @git_reference__alloc(i8* %63, i32* %11, i32* null)
  %65 = load i32**, i32*** %4, align 8
  store i32* %64, i32** %65, align 8
  br label %66

66:                                               ; preds = %62, %59, %55
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %34
  %69 = call i32 @git_buf_dispose(i32* %7)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i64 @is_per_worktree_ref(i8*) #1

declare dso_local i32 @loose_readbuffer(i32*, i8*, i8*) #1

declare dso_local i64 @git__prefixcmp(i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_rtrim(i32*) #1

declare dso_local i8* @loose_parse_symbolic(i32*) #1

declare dso_local i32* @git_reference__alloc_symbolic(i8*, i8*) #1

declare dso_local i32 @loose_parse_oid(i32*, i8*, i32*) #1

declare dso_local i32* @git_reference__alloc(i8*, i32*, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
