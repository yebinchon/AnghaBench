; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_cache_digests.c_h2o_cache_digests_load_header.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_cache_digests.c_h2o_cache_digests_load_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"validators\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"complete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_cache_digests_load_header(i32** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @h2o_iovec_init(i8* %17, i64 %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %86, %3
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = call i8* @h2o_next_token(i32* %7, i8 signext 59, i64* %11, i32* null)
  store i8* %21, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %89

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %61, %24
  %26 = call i8* @h2o_next_token(i32* %7, i8 signext 59, i64* %9, i32* %16)
  store i8* %26, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @h2o_memis(i8* %29, i64 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %28, %25
  %36 = phi i1 [ false, %25 ], [ %34, %28 ]
  br i1 %36, label %37, label %62

37:                                               ; preds = %35
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i64 @h2o_lcstris(i8* %38, i64 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %12, align 4
  br label %61

44:                                               ; preds = %37
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i64 @h2o_lcstris(i8* %45, i64 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %13, align 4
  br label %60

51:                                               ; preds = %44
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i64 @h2o_lcstris(i8* %52, i64 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %14, align 4
  br label %59

58:                                               ; preds = %51
  store i32 1, i32* %15, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %50
  br label %61

61:                                               ; preds = %60, %43
  br label %25

62:                                               ; preds = %35
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32**, i32*** %4, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32**, i32*** %4, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @h2o_cache_digests_destroy(i32* %71)
  %73 = load i32**, i32*** %4, align 8
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %69, %65, %62
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %85

78:                                               ; preds = %74
  %79 = load i32**, i32*** %4, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @load_digest(i32** %79, i8* %80, i64 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %77
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %20, label %89

89:                                               ; preds = %23, %86
  ret void
}

declare dso_local i32 @h2o_iovec_init(i8*, i64) #1

declare dso_local i8* @h2o_next_token(i32*, i8 signext, i64*, i32*) #1

declare dso_local i32 @h2o_memis(i8*, i64, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i64 @h2o_lcstris(i8*, i64, i32) #1

declare dso_local i32 @h2o_cache_digests_destroy(i32*) #1

declare dso_local i32 @load_digest(i32**, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
