; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs8_parser.c_pkcs8_parse.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs8_parser.c_pkcs8_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.public_key = type { i32, i32, i32 }
%struct.pkcs8_parse_context = type { i64, %struct.public_key*, i32, i32 }

@ENOMEM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@pkcs8_decoder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.public_key* (i8*, i64)* @pkcs8_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.public_key* @pkcs8_parse(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.public_key*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pkcs8_parse_context, align 8
  %7 = alloca %struct.public_key*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 @memset(%struct.pkcs8_parse_context* %6, i32 0, i32 24)
  %10 = load i64, i64* @ENOMEM, align 8
  %11 = sub nsw i64 0, %10
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.public_key* @kzalloc(i32 12, i32 %12)
  %14 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %6, i32 0, i32 1
  store %struct.public_key* %13, %struct.public_key** %14, align 8
  %15 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %6, i32 0, i32 1
  %16 = load %struct.public_key*, %struct.public_key** %15, align 8
  %17 = icmp ne %struct.public_key* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %59

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %6, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @asn1_ber_decoder(i32* @pkcs8_decoder, %struct.pkcs8_parse_context* %6, i8* %23, i64 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %55

29:                                               ; preds = %19
  %30 = load i64, i64* @ENOMEM, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %8, align 8
  %32 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %6, i32 0, i32 1
  %33 = load %struct.public_key*, %struct.public_key** %32, align 8
  store %struct.public_key* %33, %struct.public_key** %7, align 8
  %34 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %6, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %6, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @kmemdup(i32 %35, i32 %37, i32 %38)
  %40 = load %struct.public_key*, %struct.public_key** %7, align 8
  %41 = getelementptr inbounds %struct.public_key, %struct.public_key* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.public_key*, %struct.public_key** %7, align 8
  %43 = getelementptr inbounds %struct.public_key, %struct.public_key* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %29
  br label %55

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %6, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.public_key*, %struct.public_key** %7, align 8
  %51 = getelementptr inbounds %struct.public_key, %struct.public_key* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.public_key*, %struct.public_key** %7, align 8
  %53 = getelementptr inbounds %struct.public_key, %struct.public_key* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.public_key*, %struct.public_key** %7, align 8
  store %struct.public_key* %54, %struct.public_key** %3, align 8
  br label %62

55:                                               ; preds = %46, %28
  %56 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %6, i32 0, i32 1
  %57 = load %struct.public_key*, %struct.public_key** %56, align 8
  %58 = call i32 @kfree(%struct.public_key* %57)
  br label %59

59:                                               ; preds = %55, %18
  %60 = load i64, i64* %8, align 8
  %61 = call %struct.public_key* @ERR_PTR(i64 %60)
  store %struct.public_key* %61, %struct.public_key** %3, align 8
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.public_key*, %struct.public_key** %3, align 8
  ret %struct.public_key* %63
}

declare dso_local i32 @memset(%struct.pkcs8_parse_context*, i32, i32) #1

declare dso_local %struct.public_key* @kzalloc(i32, i32) #1

declare dso_local i64 @asn1_ber_decoder(i32*, %struct.pkcs8_parse_context*, i8*, i64) #1

declare dso_local i32 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.public_key*) #1

declare dso_local %struct.public_key* @ERR_PTR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
