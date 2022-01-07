; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_get_content_data.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_get_content_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { i8*, i64, i64 }

@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_get_content_data(%struct.pkcs7_message* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pkcs7_message*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.pkcs7_message* %0, %struct.pkcs7_message** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load %struct.pkcs7_message*, %struct.pkcs7_message** %6, align 8
  %11 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %34

17:                                               ; preds = %4
  %18 = load %struct.pkcs7_message*, %struct.pkcs7_message** %6, align 8
  %19 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8**, i8*** %7, align 8
  store i8* %20, i8** %21, align 8
  %22 = load %struct.pkcs7_message*, %struct.pkcs7_message** %6, align 8
  %23 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %8, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.pkcs7_message*, %struct.pkcs7_message** %6, align 8
  %30 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %28, %17
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
