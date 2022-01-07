; ModuleID = '/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_picohttpparser.c_phr_parse_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_picohttpparser.c_phr_parse_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phr_parse_headers(i8* %0, i64 %1, %struct.phr_header* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.phr_header*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.phr_header* %2, %struct.phr_header** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %13, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %14, align 8
  %22 = load i64*, i64** %10, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32* @is_complete(i8* %26, i8* %27, i64 %28, i32* %15)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %6, align 4
  br label %50

33:                                               ; preds = %25, %5
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load %struct.phr_header*, %struct.phr_header** %9, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i8* @parse_headers(i8* %34, i8* %35, %struct.phr_header* %36, i64* %37, i64 %38, i32* %15)
  store i8* %39, i8** %12, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %6, align 4
  br label %50

43:                                               ; preds = %33
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %43, %41, %31
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32* @is_complete(i8*, i8*, i64, i32*) #1

declare dso_local i8* @parse_headers(i8*, i8*, %struct.phr_header*, i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
