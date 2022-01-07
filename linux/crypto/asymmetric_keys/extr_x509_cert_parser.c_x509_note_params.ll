; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_note_params.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_note_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { i64, i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_note_params(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.x509_parse_context*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.x509_parse_context*
  store %struct.x509_parse_context* %14, %struct.x509_parse_context** %12, align 8
  %15 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %16 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %23 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %5
  store i32 0, i32* %6, align 4
  br label %39

27:                                               ; preds = %21
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 0, %29
  %31 = getelementptr i8, i8* %28, i64 %30
  %32 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %33 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %38 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %27, %26
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
