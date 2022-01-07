; ModuleID = '/home/carl/AnghaBench/git/extr_utf8.c_reencode_string_iconv.c'
source_filename = "/home/carl/AnghaBench/git/extr_utf8.c_reencode_string_iconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @reencode_string_iconv(i8* %0, i64 %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 1, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @st_add(i64 %20, i32 %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i8* @xmalloc(i64 %25)
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %16, align 8
  br label %32

32:                                               ; preds = %5, %76
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @iconv(i32 %33, i64* %16, i64* %8, i8** %15, i64* %12)
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %17, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @E2BIG, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @free(i8* %42)
  store i8* null, i8** %6, align 8
  br label %79

44:                                               ; preds = %37
  %45 = load i8*, i8** %15, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  store i64 %49, i64* %18, align 8
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @st_mult(i64 %51, i32 2)
  %53 = call i64 @st_add3(i64 %50, i32 %52, i32 32)
  store i64 %53, i64* %13, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i8* @xrealloc(i8* %54, i64 %55)
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i64, i64* %18, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %15, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %18, align 8
  %62 = sub i64 %60, %61
  %63 = sub i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %76

64:                                               ; preds = %32
  %65 = load i8*, i8** %15, align 8
  store i8 0, i8* %65, align 1
  %66 = load i64*, i64** %11, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i8*, i8** %15, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i64*, i64** %11, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %68, %64
  br label %77

76:                                               ; preds = %44
  br label %32

77:                                               ; preds = %75
  %78 = load i8*, i8** %14, align 8
  store i8* %78, i8** %6, align 8
  br label %79

79:                                               ; preds = %77, %41
  %80 = load i8*, i8** %6, align 8
  ret i8* %80
}

declare dso_local i64 @st_add(i64, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @iconv(i32, i64*, i64*, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @st_add3(i64, i32, i32) #1

declare dso_local i32 @st_mult(i64, i32) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
