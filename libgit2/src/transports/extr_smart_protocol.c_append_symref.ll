; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_append_symref.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_append_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_CAP_SYMREF = common dso_local global i32 0, align 4
@GIT_ERROR_NOMEMORY = common dso_local global i64 0, align 8
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"remote sent invalid symref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i8*)* @append_symref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_symref(i8** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %13 = load i32, i32* @GIT_CAP_SYMREF, align 4
  %14 = call i32 @strlen(i32 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 61
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %77

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 32)
  store i8* %27, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 0)
  store i8* %31, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %77

34:                                               ; preds = %29, %23
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @git_buf_put(i32* %10, i8* %35, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %84

46:                                               ; preds = %34
  %47 = call i32* @git__calloc(i32 1, i32 4)
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %48)
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @git_buf_cstr(i32* %10)
  %52 = call i32 @git_refspec__parse(i32* %50, i32 %51, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = call i32 @git_buf_dispose(i32* %10)
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = call %struct.TYPE_2__* (...) @git_error_last()
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GIT_ERROR_NOMEMORY, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %77

63:                                               ; preds = %56
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @git__free(i32* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %84

67:                                               ; preds = %46
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @git_vector_insert(i32* %68, i32* %69)
  store i32 %70, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %84

74:                                               ; preds = %67
  %75 = load i8*, i8** %9, align 8
  %76 = load i8**, i8*** %5, align 8
  store i8* %75, i8** %76, align 8
  store i32 0, i32* %4, align 4
  br label %84

77:                                               ; preds = %62, %33, %22
  %78 = load i32, i32* @GIT_ERROR_NET, align 4
  %79 = call i32 @git_error_set(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @git_refspec__dispose(i32* %80)
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @git__free(i32* %82)
  store i32 -1, i32* %4, align 4
  br label %84

84:                                               ; preds = %77, %74, %72, %63, %44
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @git_buf_put(i32*, i8*, i32) #1

declare dso_local i32* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i32 @git_refspec__parse(i32*, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

declare dso_local i32 @git__free(i32*) #1

declare dso_local i32 @git_vector_insert(i32*, i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_refspec__dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
