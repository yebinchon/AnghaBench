; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_parse_message.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_parse_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { i32 }
%struct.pkcs7_parse_context = type { i64, %struct.pkcs7_message*, %struct.TYPE_2__*, %struct.x509_certificate*, i32*, %struct.x509_certificate** }
%struct.TYPE_2__ = type { i8* }
%struct.x509_certificate = type { %struct.x509_certificate* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pkcs7_decoder = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pkcs7_message* @pkcs7_parse_message(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pkcs7_parse_context*, align 8
  %6 = alloca %struct.pkcs7_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.x509_certificate*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.pkcs7_message* @ERR_PTR(i32 %10)
  store %struct.pkcs7_message* %11, %struct.pkcs7_message** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 48, i32 %12)
  %14 = bitcast i8* %13 to %struct.pkcs7_parse_context*
  store %struct.pkcs7_parse_context* %14, %struct.pkcs7_parse_context** %5, align 8
  %15 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %16 = icmp ne %struct.pkcs7_parse_context* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %125

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 4, i32 %19)
  %21 = bitcast i8* %20 to %struct.pkcs7_message*
  %22 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %23 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %22, i32 0, i32 1
  store %struct.pkcs7_message* %21, %struct.pkcs7_message** %23, align 8
  %24 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %25 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %24, i32 0, i32 1
  %26 = load %struct.pkcs7_message*, %struct.pkcs7_message** %25, align 8
  %27 = icmp ne %struct.pkcs7_message* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %122

29:                                               ; preds = %18
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 4, i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_2__*
  %33 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %34 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %33, i32 0, i32 2
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %36 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %117

40:                                               ; preds = %29
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i32 4, i32 %41)
  %43 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %44 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %42, i8** %46, align 8
  %47 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %48 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %112

54:                                               ; preds = %40
  %55 = load i8*, i8** %3, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %58 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %60 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %59, i32 0, i32 3
  %61 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %62 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %61, i32 0, i32 5
  store %struct.x509_certificate** %60, %struct.x509_certificate*** %62, align 8
  %63 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %64 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %63, i32 0, i32 1
  %65 = load %struct.pkcs7_message*, %struct.pkcs7_message** %64, align 8
  %66 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %65, i32 0, i32 0
  %67 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %68 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @asn1_ber_decoder(i32* @pkcs7_decoder, %struct.pkcs7_parse_context* %69, i8* %70, i64 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %54
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.pkcs7_message* @ERR_PTR(i32 %76)
  store %struct.pkcs7_message* %77, %struct.pkcs7_message** %6, align 8
  br label %94

78:                                               ; preds = %54
  %79 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %80 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %79, i32 0, i32 1
  %81 = load %struct.pkcs7_message*, %struct.pkcs7_message** %80, align 8
  %82 = call i32 @pkcs7_check_authattrs(%struct.pkcs7_message* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = call %struct.pkcs7_message* @ERR_PTR(i32 %86)
  store %struct.pkcs7_message* %87, %struct.pkcs7_message** %6, align 8
  br label %94

88:                                               ; preds = %78
  %89 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %90 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %89, i32 0, i32 1
  %91 = load %struct.pkcs7_message*, %struct.pkcs7_message** %90, align 8
  store %struct.pkcs7_message* %91, %struct.pkcs7_message** %6, align 8
  %92 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %93 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %92, i32 0, i32 1
  store %struct.pkcs7_message* null, %struct.pkcs7_message** %93, align 8
  br label %94

94:                                               ; preds = %88, %85, %75
  br label %95

95:                                               ; preds = %100, %94
  %96 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %97 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %96, i32 0, i32 3
  %98 = load %struct.x509_certificate*, %struct.x509_certificate** %97, align 8
  %99 = icmp ne %struct.x509_certificate* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %102 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %101, i32 0, i32 3
  %103 = load %struct.x509_certificate*, %struct.x509_certificate** %102, align 8
  store %struct.x509_certificate* %103, %struct.x509_certificate** %8, align 8
  %104 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %105 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %104, i32 0, i32 0
  %106 = load %struct.x509_certificate*, %struct.x509_certificate** %105, align 8
  %107 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %108 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %107, i32 0, i32 3
  store %struct.x509_certificate* %106, %struct.x509_certificate** %108, align 8
  %109 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %110 = call i32 @x509_free_certificate(%struct.x509_certificate* %109)
  br label %95

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %53
  %113 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %114 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = call i32 @pkcs7_free_signed_info(%struct.TYPE_2__* %115)
  br label %117

117:                                              ; preds = %112, %39
  %118 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %119 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %118, i32 0, i32 1
  %120 = load %struct.pkcs7_message*, %struct.pkcs7_message** %119, align 8
  %121 = call i32 @pkcs7_free_message(%struct.pkcs7_message* %120)
  br label %122

122:                                              ; preds = %117, %28
  %123 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %5, align 8
  %124 = call i32 @kfree(%struct.pkcs7_parse_context* %123)
  br label %125

125:                                              ; preds = %122, %17
  %126 = load %struct.pkcs7_message*, %struct.pkcs7_message** %6, align 8
  ret %struct.pkcs7_message* %126
}

declare dso_local %struct.pkcs7_message* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @asn1_ber_decoder(i32*, %struct.pkcs7_parse_context*, i8*, i64) #1

declare dso_local i32 @pkcs7_check_authattrs(%struct.pkcs7_message*) #1

declare dso_local i32 @x509_free_certificate(%struct.x509_certificate*) #1

declare dso_local i32 @pkcs7_free_signed_info(%struct.TYPE_2__*) #1

declare dso_local i32 @pkcs7_free_message(%struct.pkcs7_message*) #1

declare dso_local i32 @kfree(%struct.pkcs7_parse_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
