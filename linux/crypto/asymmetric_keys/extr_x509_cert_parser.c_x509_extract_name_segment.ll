; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_extract_name_segment.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_extract_name_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { i32, i64, i64, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_extract_name_segment(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.x509_parse_context*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.x509_parse_context*
  store %struct.x509_parse_context* %13, %struct.x509_parse_context** %11, align 8
  %14 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %15 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %59 [
    i32 130, label %17
    i32 128, label %31
    i32 129, label %45
  ]

17:                                               ; preds = %5
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %20 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %24 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub i64 %22, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %30 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  br label %60

31:                                               ; preds = %5
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %34 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %38 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub i64 %36, %40
  %42 = trunc i64 %41 to i32
  %43 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %44 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  br label %60

45:                                               ; preds = %5
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %48 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %52 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = sub i64 %50, %54
  %56 = trunc i64 %55 to i32
  %57 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %58 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  br label %60

59:                                               ; preds = %5
  br label %60

60:                                               ; preds = %59, %45, %31, %17
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
