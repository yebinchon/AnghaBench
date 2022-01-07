; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process.c_make_program_args.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process.c_make_program_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UTF8 = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_program_args(i8** %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i8**, i8*** %5, align 8
  store i8** %18, i8*** %8, align 8
  br label %19

19:                                               ; preds = %44, %3
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i32, i32* @CP_UTF8, align 4
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @MultiByteToWideChar(i32 %24, i32 0, i8* %26, i32 -1, i32* null, i32 0)
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* %16, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (...) @GetLastError()
  store i32 %31, i32* %4, align 4
  br label %135

32:                                               ; preds = %23
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* %16, align 8
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %41
  %45 = load i8**, i8*** %8, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %8, align 8
  br label %19

47:                                               ; preds = %19
  %48 = load i64, i64* %11, align 8
  %49 = mul i64 %48, 2
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = add i64 %49, %52
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = mul i64 %54, 4
  %56 = call i64 @uv__malloc(i64 %55)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %61, i32* %15, align 4
  br label %129

62:                                               ; preds = %47
  %63 = load i64, i64* %12, align 8
  %64 = mul i64 %63, 4
  %65 = call i64 @uv__malloc(i64 %64)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %70, i32* %15, align 4
  br label %129

71:                                               ; preds = %62
  %72 = load i32*, i32** %9, align 8
  store i32* %72, i32** %13, align 8
  %73 = load i8**, i8*** %5, align 8
  store i8** %73, i8*** %8, align 8
  br label %74

74:                                               ; preds = %121, %71
  %75 = load i8**, i8*** %8, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %124

78:                                               ; preds = %74
  %79 = load i32, i32* @CP_UTF8, align 4
  %80 = load i8**, i8*** %8, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32*, i32** %13, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i64 @MultiByteToWideChar(i32 %79, i32 0, i8* %81, i32 -1, i32* %82, i32 %91)
  store i64 %92, i64* %17, align 8
  %93 = load i64, i64* %17, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %78
  %96 = call i32 (...) @GetLastError()
  store i32 %96, i32* %15, align 4
  br label %129

97:                                               ; preds = %78
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32*, i32** %13, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @wcscpy(i32* %101, i32* %102)
  %104 = load i64, i64* %17, align 8
  %105 = sub i64 %104, 1
  %106 = load i32*, i32** %13, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32* %107, i32** %13, align 8
  br label %112

108:                                              ; preds = %97
  %109 = load i32*, i32** %10, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = call i32* @quote_cmd_arg(i32* %109, i32* %110)
  store i32* %111, i32** %13, align 8
  br label %112

112:                                              ; preds = %108, %100
  %113 = load i8**, i8*** %8, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 32, i32 0
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %13, align 8
  store i32 %118, i32* %119, align 4
  br label %121

121:                                              ; preds = %112
  %122 = load i8**, i8*** %8, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i32 1
  store i8** %123, i8*** %8, align 8
  br label %74

124:                                              ; preds = %74
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @uv__free(i32* %125)
  %127 = load i32*, i32** %9, align 8
  %128 = load i32**, i32*** %7, align 8
  store i32* %127, i32** %128, align 8
  store i32 0, i32* %4, align 4
  br label %135

129:                                              ; preds = %95, %69, %60
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @uv__free(i32* %130)
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @uv__free(i32* %132)
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %129, %124, %30
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @uv__malloc(i64) #1

declare dso_local i32 @wcscpy(i32*, i32*) #1

declare dso_local i32* @quote_cmd_arg(i32*, i32*) #1

declare dso_local i32 @uv__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
