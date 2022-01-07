; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_extract_cert.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_extract_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_parse_context = type { i8, %struct.x509_certificate**, i64 }
%struct.x509_certificate = type { i8, %struct.x509_certificate*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8, i64 }

@ASN1_UNIV = common dso_local global i32 0, align 4
@ASN1_CONS_BIT = common dso_local global i32 0, align 4
@ASN1_SEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cert began with tag %02x at %lu\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Got cert %u for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"- fingerprint %*phN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_extract_cert(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pkcs7_parse_context*, align 8
  %13 = alloca %struct.x509_certificate*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.pkcs7_parse_context*
  store %struct.pkcs7_parse_context* %15, %struct.pkcs7_parse_context** %12, align 8
  %16 = load i8, i8* %9, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* @ASN1_UNIV, align 4
  %19 = shl i32 %18, 6
  %20 = load i32, i32* @ASN1_CONS_BIT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ASN1_SEQ, align 4
  %23 = or i32 %21, %22
  %24 = icmp ne i32 %17, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load i8, i8* %9, align 1
  %27 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %28 = ptrtoint %struct.pkcs7_parse_context* %27 to i64
  %29 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %30 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %26, i64 %32)
  %34 = load i32, i32* @EBADMSG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %95

36:                                               ; preds = %5
  %37 = load i64, i64* %8, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = sub i64 0, %37
  %40 = getelementptr i8, i8* %38, i64 %39
  store i8* %40, i8** %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %11, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, 2
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %49, %36
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call %struct.x509_certificate* @x509_cert_parse(i8* %53, i64 %54)
  store %struct.x509_certificate* %55, %struct.x509_certificate** %13, align 8
  %56 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %57 = call i64 @IS_ERR(%struct.x509_certificate* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %61 = call i32 @PTR_ERR(%struct.x509_certificate* %60)
  store i32 %61, i32* %6, align 4
  br label %95

62:                                               ; preds = %52
  %63 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %64 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %63, i32 0, i32 0
  %65 = load i8, i8* %64, align 8
  %66 = add i8 %65, 1
  store i8 %66, i8* %64, align 8
  %67 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %68 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %67, i32 0, i32 0
  store i8 %66, i8* %68, align 8
  %69 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %70 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 8
  %72 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %73 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %71, i64 %74)
  %76 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %77 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 8
  %81 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %82 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %80, i64 %85)
  %87 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %88 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %89 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %88, i32 0, i32 1
  %90 = load %struct.x509_certificate**, %struct.x509_certificate*** %89, align 8
  store %struct.x509_certificate* %87, %struct.x509_certificate** %90, align 8
  %91 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %92 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %91, i32 0, i32 1
  %93 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %94 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %93, i32 0, i32 1
  store %struct.x509_certificate** %92, %struct.x509_certificate*** %94, align 8
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %62, %59, %25
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @pr_debug(i8*, i8 zeroext, i64) #1

declare dso_local %struct.x509_certificate* @x509_cert_parse(i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.x509_certificate*) #1

declare dso_local i32 @PTR_ERR(%struct.x509_certificate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
