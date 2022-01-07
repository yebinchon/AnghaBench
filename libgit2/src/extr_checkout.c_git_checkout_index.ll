; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_git_checkout_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_git_checkout_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_CHECKOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"must provide either repository or index to checkout\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"index to checkout does not match repository\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_checkout_index(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %18 = call i32 @git_error_set(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %91

19:                                               ; preds = %13, %3
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @git_index_owner(i32* %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @git_index_owner(i32* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %36 = call i32 @git_error_set(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %91

37:                                               ; preds = %29, %25, %22, %19
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = call i32* @git_index_owner(i32* %44)
  %46 = icmp ne i32* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @GIT_REFCOUNT_OWN(i32* %48, i32* %49)
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %43, %40, %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = call i32* @git_index_owner(i32* %56)
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @git_repository_index__weakptr(i32** %6, i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %91

67:                                               ; preds = %61, %58
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @GIT_REFCOUNT_INC(i32* %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @git_iterator_for_index(i32** %10, i32* %70, i32* %71, i32* null)
  store i32 %72, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @git_checkout_iterator(i32* %75, i32* %76, i32* %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @GIT_REFCOUNT_OWN(i32* %83, i32* null)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @git_iterator_free(i32* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @git_index_free(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %65, %34, %16
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32* @git_index_owner(i32*) #1

declare dso_local i32 @GIT_REFCOUNT_OWN(i32*, i32*) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(i32*) #1

declare dso_local i32 @git_iterator_for_index(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @git_checkout_iterator(i32*, i32*, i32*) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
