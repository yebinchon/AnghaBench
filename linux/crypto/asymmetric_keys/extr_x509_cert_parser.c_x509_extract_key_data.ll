; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_extract_key_data.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_extract_key_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { i64, i64, i64, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@OID_rsaEncryption = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@OID_gost2012PKey256 = common dso_local global i64 0, align 8
@OID_gost2012PKey512 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"ecrdsa\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_extract_key_data(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
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
  %16 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %19 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %21 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OID_rsaEncryption, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %27 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  br label %55

32:                                               ; preds = %5
  %33 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %34 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OID_gost2012PKey256, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %40 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OID_gost2012PKey512, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38, %32
  %45 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %46 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  br label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @ENOPKG, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %75

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %25
  %56 = load i64, i64* %11, align 8
  %57 = icmp ult i64 %56, 1
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = bitcast i8* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %55
  %64 = load i32, i32* @EBADMSG, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %75

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr i8, i8* %67, i64 1
  %69 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %70 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub i64 %71, 1
  %73 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %74 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %66, %63, %51
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
