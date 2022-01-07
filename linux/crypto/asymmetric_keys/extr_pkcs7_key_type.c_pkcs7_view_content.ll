; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_key_type.c_pkcs7_view_content.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_key_type.c_pkcs7_view_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_preparsed_payload = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64)* @pkcs7_view_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs7_view_content(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.key_preparsed_payload*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.key_preparsed_payload*
  store %struct.key_preparsed_payload* %14, %struct.key_preparsed_payload** %9, align 8
  %15 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %9, align 8
  %16 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %9, align 8
  %19 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %9, align 8
  %23 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %9, align 8
  %26 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %9, align 8
  %28 = call i32 @user_preparse(%struct.key_preparsed_payload* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %9, align 8
  %31 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %9, align 8
  %34 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %12, align 4
  ret i32 %35
}

declare dso_local i32 @user_preparse(%struct.key_preparsed_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
