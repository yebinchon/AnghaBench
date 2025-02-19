; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_check_content_type.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_check_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_parse_context = type { i64 }

@OID_signed_data = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Only support pkcs7_signedData type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_check_content_type(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pkcs7_parse_context*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.pkcs7_parse_context*
  store %struct.pkcs7_parse_context* %14, %struct.pkcs7_parse_context** %12, align 8
  %15 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %16 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OID_signed_data, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
