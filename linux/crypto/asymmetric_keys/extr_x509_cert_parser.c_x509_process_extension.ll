; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_process_extension.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_process_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { i64, i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8*, %struct.asymmetric_key_id* }
%struct.asymmetric_key_id = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Extension: %u\0A\00", align 1
@OID_subjectKeyIdentifier = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4
@ASN1_OTS = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"subjkeyid %*phN\0A\00", align 1
@OID_authorityKeyIdentifier = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_process_extension(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.x509_parse_context*, align 8
  %13 = alloca %struct.asymmetric_key_id*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.x509_parse_context*
  store %struct.x509_parse_context* %16, %struct.x509_parse_context** %12, align 8
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %14, align 8
  %18 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %19 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %23 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OID_subjectKeyIdentifier, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %97

27:                                               ; preds = %5
  %28 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %29 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %31, align 8
  %33 = icmp ne %struct.asymmetric_key_id* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %35, 3
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %27
  %38 = load i32, i32* @EBADMSG, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %111

40:                                               ; preds = %34
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @ASN1_OTS, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = load i64, i64* %11, align 8
  %54 = sub i64 %53, 2
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48, %40
  %57 = load i32, i32* @EBADMSG, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %111

59:                                               ; preds = %48
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %14, align 8
  %62 = load i64, i64* %11, align 8
  %63 = sub i64 %62, 2
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %66 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 %64, i64* %68, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %71 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %69, i8** %73, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call %struct.asymmetric_key_id* @asymmetric_key_generate_id(i8* %74, i64 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.asymmetric_key_id* %76, %struct.asymmetric_key_id** %13, align 8
  %77 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %78 = call i64 @IS_ERR(%struct.asymmetric_key_id* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %59
  %81 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %82 = call i32 @PTR_ERR(%struct.asymmetric_key_id* %81)
  store i32 %82, i32* %6, align 4
  br label %111

83:                                               ; preds = %59
  %84 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %85 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %86 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store %struct.asymmetric_key_id* %84, %struct.asymmetric_key_id** %88, align 8
  %89 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %90 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %94 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %92, i32 %95)
  store i32 0, i32* %6, align 4
  br label %111

97:                                               ; preds = %5
  %98 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %99 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @OID_authorityKeyIdentifier, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i8*, i8** %14, align 8
  %105 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %106 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %109 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  store i32 0, i32* %6, align 4
  br label %111

110:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %103, %83, %80, %56, %37
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local %struct.asymmetric_key_id* @asymmetric_key_generate_id(i8*, i64, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.asymmetric_key_id*) #1

declare dso_local i32 @PTR_ERR(%struct.asymmetric_key_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
