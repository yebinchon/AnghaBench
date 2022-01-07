; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_split_path.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_split_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"uv__malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**)* @uv_split_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_split_path(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i8**, i8*** %6, align 8
  store i8* null, i8** %16, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i8**, i8*** %7, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %4, align 4
  br label %142

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @wcslen(i8* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %43, %19
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %9, align 8
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 92
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br label %41

41:                                               ; preds = %34, %26, %23
  %42 = phi i1 [ false, %26 ], [ false, %23 ], [ %40, %34 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %23

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %44
  %48 = load i8**, i8*** %6, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load i32, i32* @MAX_PATH, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 1
  %55 = call i64 @uv__malloc(i64 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8**, i8*** %6, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8**, i8*** %6, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %63 = call i32 @uv_fatal_error(i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %50
  %65 = load i32, i32* @MAX_PATH, align 4
  %66 = load i8**, i8*** %6, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @GetCurrentDirectoryW(i32 %65, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @uv__free(i8* %72)
  %74 = load i8**, i8*** %6, align 8
  store i8* null, i8** %74, align 8
  store i32 -1, i32* %4, align 4
  br label %142

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %47
  %77 = load i8*, i8** %5, align 8
  %78 = call i8* @wcsdup(i8* %77)
  %79 = load i8**, i8*** %7, align 8
  store i8* %78, i8** %79, align 8
  br label %141

80:                                               ; preds = %44
  %81 = load i8**, i8*** %6, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 2
  %86 = mul i64 %85, 1
  %87 = call i64 @uv__malloc(i64 %86)
  %88 = inttoptr i64 %87 to i8*
  %89 = load i8**, i8*** %6, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i8**, i8*** %6, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %95 = call i32 @uv_fatal_error(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %83
  %97 = load i8**, i8*** %6, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  %102 = call i32 @wcsncpy(i8* %98, i8* %99, i64 %101)
  %103 = load i8**, i8*** %6, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %105, 1
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 0, i8* %107, align 1
  br label %108

108:                                              ; preds = %96, %80
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = sub i64 %109, %110
  %112 = mul i64 %111, 1
  %113 = call i64 @uv__malloc(i64 %112)
  %114 = inttoptr i64 %113 to i8*
  %115 = load i8**, i8*** %7, align 8
  store i8* %114, i8** %115, align 8
  %116 = load i8**, i8*** %7, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %108
  %120 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %121 = call i32 @uv_fatal_error(i32 %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %108
  %123 = load i8**, i8*** %7, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %9, align 8
  %131 = sub i64 %129, %130
  %132 = sub i64 %131, 1
  %133 = call i32 @wcsncpy(i8* %124, i8* %128, i64 %132)
  %134 = load i8**, i8*** %7, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = sub i64 %136, %137
  %139 = sub i64 %138, 1
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  store i8 0, i8* %140, align 1
  br label %141

141:                                              ; preds = %122, %76
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %70, %17
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @wcslen(i8*) #1

declare dso_local i64 @uv__malloc(i64) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #1

declare dso_local i32 @uv__free(i8*) #1

declare dso_local i8* @wcsdup(i8*) #1

declare dso_local i32 @wcsncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
