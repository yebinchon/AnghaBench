; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_patch_image_init_fromstr.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_patch_image_init_fromstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @patch_image_init_fromstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_image_init_fromstr(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 8)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call i32 @git_pool_init(i32* %14, i32 4)
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %77, %3
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = icmp ult i8* %18, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sub i64 %25, %30
  %32 = call i8* @memchr(i8* %24, i8 signext 10, i64 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %10, align 8
  br label %49

39:                                               ; preds = %23
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = icmp ult i8* %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = call i32* @git_pool_mallocz(i32* %51, i32 1)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @git_vector_insert(i32* %56, i32* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %80

61:                                               ; preds = %49
  %62 = load i32*, i32** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @patch_line_init(i32* %62, i8* %63, i32 %69, i32 %75)
  br label %77

77:                                               ; preds = %61
  %78 = load i8*, i8** %10, align 8
  store i8* %78, i8** %9, align 8
  br label %17

79:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32* @git_pool_mallocz(i32*, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i64 @git_vector_insert(i32*, i32*) #1

declare dso_local i32 @patch_line_init(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
