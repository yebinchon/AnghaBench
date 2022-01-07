; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_sig_note_authenticated_attr.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_sig_note_authenticated_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_parse_context = type { i32, %struct.TYPE_2__*, %struct.pkcs7_signed_info* }
%struct.TYPE_2__ = type { i32 }
%struct.pkcs7_signed_info = type { i64, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"AuthAttr: %02x %zu [%*ph]\0A\00", align 1
@sinfo_has_content_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Mismatch between global data type (%d) and sinfo %u (%d)\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@sinfo_has_signing_time = common dso_local global i32 0, align 4
@sinfo_has_message_digest = common dso_local global i32 0, align 4
@ASN1_OTS = common dso_local global i8 0, align 1
@sinfo_has_smime_caps = common dso_local global i32 0, align 4
@OID_msIndirectData = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"S/MIME Caps only allowed with Authenticode\0A\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@sinfo_has_ms_opus_info = common dso_local global i32 0, align 4
@sinfo_has_ms_statement_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Authenticode AuthAttrs only allowed with Authenticode\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Repeated/multivalue AuthAttrs not permitted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_sig_note_authenticated_attr(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pkcs7_parse_context*, align 8
  %13 = alloca %struct.pkcs7_signed_info*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.pkcs7_parse_context*
  store %struct.pkcs7_parse_context* %16, %struct.pkcs7_parse_context** %12, align 8
  %17 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %18 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %17, i32 0, i32 2
  %19 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %18, align 8
  store %struct.pkcs7_signed_info* %19, %struct.pkcs7_signed_info** %13, align 8
  %20 = load i8, i8* %9, align 1
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @pr_devel(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 zeroext %20, i64 %21, i32 %23, i8* %24)
  %26 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %27 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %148 [
    i32 133, label %29
    i32 129, label %61
    i32 132, label %76
    i32 128, label %99
    i32 131, label %119
    i32 130, label %127
  ]

29:                                               ; preds = %5
  %30 = load i32, i32* @sinfo_has_content_type, align 4
  %31 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %32 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %31, i32 0, i32 1
  %33 = call i32 @__test_and_set_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %149

36:                                               ; preds = %29
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @look_up_OID(i8* %37, i64 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %42 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %40, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %36
  %48 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %49 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %54 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55, i32 %56)
  %58 = load i32, i32* @EBADMSG, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %153

60:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %153

61:                                               ; preds = %5
  %62 = load i32, i32* @sinfo_has_signing_time, align 4
  %63 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %64 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %63, i32 0, i32 1
  %65 = call i32 @__test_and_set_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %149

68:                                               ; preds = %61
  %69 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %70 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %69, i32 0, i32 3
  %71 = load i64, i64* %8, align 8
  %72 = load i8, i8* %9, align 1
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @x509_decode_time(i32* %70, i64 %71, i8 zeroext %72, i8* %73, i64 %74)
  store i32 %75, i32* %6, align 4
  br label %153

76:                                               ; preds = %5
  %77 = load i32, i32* @sinfo_has_message_digest, align 4
  %78 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %79 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %78, i32 0, i32 1
  %80 = call i32 @__test_and_set_bit(i32 %77, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %149

83:                                               ; preds = %76
  %84 = load i8, i8* %9, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @ASN1_OTS, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @EBADMSG, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %153

92:                                               ; preds = %83
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %95 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %98 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  store i32 0, i32* %6, align 4
  br label %153

99:                                               ; preds = %5
  %100 = load i32, i32* @sinfo_has_smime_caps, align 4
  %101 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %102 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %101, i32 0, i32 1
  %103 = call i32 @__test_and_set_bit(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %149

106:                                              ; preds = %99
  %107 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %108 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @OID_msIndirectData, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @EKEYREJECTED, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %153

118:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %153

119:                                              ; preds = %5
  %120 = load i32, i32* @sinfo_has_ms_opus_info, align 4
  %121 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %122 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %121, i32 0, i32 1
  %123 = call i32 @__test_and_set_bit(i32 %120, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %149

126:                                              ; preds = %119
  br label %135

127:                                              ; preds = %5
  %128 = load i32, i32* @sinfo_has_ms_statement_type, align 4
  %129 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %130 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %129, i32 0, i32 1
  %131 = call i32 @__test_and_set_bit(i32 %128, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %149

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %126
  %136 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %137 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @OID_msIndirectData, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @EKEYREJECTED, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %153

147:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %153

148:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %153

149:                                              ; preds = %133, %125, %105, %82, %67, %35
  %150 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @EKEYREJECTED, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %149, %148, %147, %143, %118, %114, %92, %89, %68, %60, %47
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @pr_devel(i8*, i8 zeroext, i64, i32, i8*) #1

declare dso_local i32 @__test_and_set_bit(i32, i32*) #1

declare dso_local i32 @look_up_OID(i8*, i64) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @x509_decode_time(i32*, i64, i8 zeroext, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
