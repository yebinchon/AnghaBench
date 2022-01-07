; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_sig_note_set_of_authattrs.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_sig_note_set_of_authattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_parse_context = type { %struct.TYPE_2__*, %struct.pkcs7_signed_info* }
%struct.TYPE_2__ = type { i64 }
%struct.pkcs7_signed_info = type { i64, i8*, i32 }

@sinfo_has_content_type = common dso_local global i32 0, align 4
@sinfo_has_message_digest = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Missing required AuthAttr\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@OID_msIndirectData = common dso_local global i64 0, align 8
@sinfo_has_ms_opus_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unexpected Authenticode AuthAttr\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_sig_note_set_of_authattrs(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pkcs7_parse_context*, align 8
  %13 = alloca %struct.pkcs7_signed_info*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.pkcs7_parse_context*
  store %struct.pkcs7_parse_context* %15, %struct.pkcs7_parse_context** %12, align 8
  %16 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %17 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %16, i32 0, i32 1
  %18 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %17, align 8
  store %struct.pkcs7_signed_info* %18, %struct.pkcs7_signed_info** %13, align 8
  %19 = load i32, i32* @sinfo_has_content_type, align 4
  %20 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %21 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %20, i32 0, i32 2
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32, i32* @sinfo_has_message_digest, align 4
  %26 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %27 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %26, i32 0, i32 2
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24, %5
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EBADMSG, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %66

34:                                               ; preds = %24
  %35 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %36 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OID_msIndirectData, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load i32, i32* @sinfo_has_ms_opus_info, align 4
  %44 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %45 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %44, i32 0, i32 2
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EBADMSG, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %66

52:                                               ; preds = %42, %34
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub i64 %54, 1
  %56 = sub i64 0, %55
  %57 = getelementptr i8, i8* %53, i64 %56
  %58 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %59 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, 1
  %63 = add i64 %60, %62
  %64 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %65 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %52, %48, %30
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
