; ModuleID = '/home/carl/AnghaBench/japronto/src/picohttpparser/extr_picohttpparser.c_phr_parse_request.c'
source_filename = "/home/carl/AnghaBench/japronto/src/picohttpparser/extr_picohttpparser.c_phr_parse_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PHR_PARSE_REQUEST(i8* %0, i64 %1, i8** %2, i64* %3, i8** %4, i64* %5, i32* %6, %struct.phr_header* %7, i64* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.phr_header*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8** %2, i8*** %14, align 8
  store i64* %3, i64** %15, align 8
  store i8** %4, i8*** %16, align 8
  store i64* %5, i64** %17, align 8
  store i32* %6, i32** %18, align 8
  store %struct.phr_header* %7, %struct.phr_header** %19, align 8
  store i64* %8, i64** %20, align 8
  store i64 %9, i64* %21, align 8
  %26 = load i8*, i8** %12, align 8
  store i8* %26, i8** %22, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %23, align 8
  %30 = load i64*, i64** %20, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %24, align 8
  %32 = load i8**, i8*** %14, align 8
  store i8* null, i8** %32, align 8
  %33 = load i64*, i64** %15, align 8
  store i64 0, i64* %33, align 8
  %34 = load i8**, i8*** %16, align 8
  store i8* null, i8** %34, align 8
  %35 = load i64*, i64** %17, align 8
  store i64 0, i64* %35, align 8
  %36 = load i32*, i32** %18, align 8
  store i32 -1, i32* %36, align 4
  %37 = load i64*, i64** %20, align 8
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %21, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %10
  %41 = load i8*, i8** %22, align 8
  %42 = load i8*, i8** %23, align 8
  %43 = load i64, i64* %21, align 8
  %44 = call i32* @is_complete(i8* %41, i8* %42, i64 %43, i32* %25)
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %25, align 4
  store i32 %47, i32* %11, align 4
  br label %70

48:                                               ; preds = %40, %10
  %49 = load i8*, i8** %22, align 8
  %50 = load i8*, i8** %23, align 8
  %51 = load i8**, i8*** %14, align 8
  %52 = load i64*, i64** %15, align 8
  %53 = load i8**, i8*** %16, align 8
  %54 = load i64*, i64** %17, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = load %struct.phr_header*, %struct.phr_header** %19, align 8
  %57 = load i64*, i64** %20, align 8
  %58 = load i64, i64* %24, align 8
  %59 = call i8* @parse_request(i8* %49, i8* %50, i8** %51, i64* %52, i8** %53, i64* %54, i32* %55, %struct.phr_header* %56, i64* %57, i64 %58, i32* %25)
  store i8* %59, i8** %22, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %25, align 4
  store i32 %62, i32* %11, align 4
  br label %70

63:                                               ; preds = %48
  %64 = load i8*, i8** %22, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %63, %61, %46
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i32* @is_complete(i8*, i8*, i64, i32*) #1

declare dso_local i8* @parse_request(i8*, i8*, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
