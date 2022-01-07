; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_note_issuer.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_note_issuer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_note_issuer(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
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
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %16 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i8* %14, i8** %18, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %21 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %19, i64* %23, align 8
  %24 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i8, i8* %8, align 1
  %27 = load %struct.x509_parse_context*, %struct.x509_parse_context** %11, align 8
  %28 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @x509_fabricate_name(%struct.x509_parse_context* %24, i64 %25, i8 zeroext %26, i32* %30, i64 %31)
  ret i32 %32
}

declare dso_local i32 @x509_fabricate_name(%struct.x509_parse_context*, i64, i8 zeroext, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
