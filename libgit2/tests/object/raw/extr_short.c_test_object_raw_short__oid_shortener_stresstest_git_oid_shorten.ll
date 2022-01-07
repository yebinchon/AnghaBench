; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_short.c_test_object_raw_short__oid_shortener_stresstest_git_oid_shorten.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_short.c_test_object_raw_short__oid_shortener_stresstest_git_oid_shorten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OIDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_short__oid_shortener_stresstest_git_oid_shorten() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i32 0, i32* %4, align 4
  %7 = call i32* @git_oid_shorten_new(i32 0)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @insert_sequential_oids(i8*** %6, i32* %12, i64 1000, i64 1000)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  store i32 0, i32* %5, align 4
  store i64 0, i64* %2, align 8
  br label %18

18:                                               ; preds = %46, %0
  %19 = load i64, i64* %2, align 8
  %20 = icmp ult i64 %19, 1000
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i64, i64* %2, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %42, %21
  %25 = load i64, i64* %3, align 8
  %26 = icmp ult i64 %25, 1000
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i8**, i8*** %6, align 8
  %29 = load i64, i64* %2, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %6, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i64 @memcmp(i8* %31, i8* %35, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %24

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %2, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %2, align 8
  br label %18

49:                                               ; preds = %18
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @cl_assert_equal_b(i32 1, i32 %50)
  store i32 0, i32* %5, align 4
  store i64 0, i64* %2, align 8
  br label %52

52:                                               ; preds = %79, %49
  %53 = load i64, i64* %2, align 8
  %54 = icmp ult i64 %53, 1000
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i64, i64* %2, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %75, %55
  %59 = load i64, i64* %3, align 8
  %60 = icmp ult i64 %59, 1000
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i8**, i8*** %6, align 8
  %63 = load i64, i64* %2, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %6, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @memcmp(i8* %65, i8* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %3, align 8
  br label %58

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %2, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %2, align 8
  br label %52

82:                                               ; preds = %52
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @cl_assert_equal_b(i32 0, i32 %83)
  %85 = load i8**, i8*** %6, align 8
  %86 = call i32 @free_oids(i64 1000, i8** %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i32 @git_oid_shorten_free(i32* %87)
  ret void
}

declare dso_local i32* @git_oid_shorten_new(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @insert_sequential_oids(i8***, i32*, i64, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_b(i32, i32) #1

declare dso_local i32 @free_oids(i64, i8**) #1

declare dso_local i32 @git_oid_shorten_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
