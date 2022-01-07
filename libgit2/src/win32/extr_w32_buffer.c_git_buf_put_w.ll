; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_w32_buffer.c_git_buf_put_w.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_w32_buffer.c_git_buf_put_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@INT_MAX = common dso_local global i64 0, align 8
@CP_UTF8 = common dso_local global i32 0, align 4
@WC_ERR_INVALID_CHARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_buf_put_w(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @git_error_set_oom()
  store i32 -1, i32* %4, align 4
  br label %89

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load i32*, i32** %6, align 8
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @CP_UTF8, align 4
  %26 = load i32, i32* @WC_ERR_INVALID_CHARS, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @WideCharToMultiByte(i32 %25, i32 %26, i32* %27, i32 %29, i8* null, i32 0, i32* null, i32* null)
  store i32 %30, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %89

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = trunc i64 %42 to i32
  %44 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %10, i64 %40, i32 %43)
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %10, i64 %45, i32 1)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @git_buf_grow(%struct.TYPE_4__* %47, i64 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %89

52:                                               ; preds = %33
  %53 = load i32, i32* @CP_UTF8, align 4
  %54 = load i32, i32* @WC_ERR_INVALID_CHARS, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @WideCharToMultiByte(i32 %53, i32 %54, i32* %55, i32 %57, i8* %64, i32 %65, i32* null, i32* null)
  store i32 %66, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = call i32 (...) @handle_wc_error()
  store i32 %69, i32* %4, align 4
  br label %89

70:                                               ; preds = %52
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 0, i8* %88, align 1
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %70, %68, %51, %32, %18, %13
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @git_error_set_oom(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i64 @git_buf_grow(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @handle_wc_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
