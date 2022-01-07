; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_cert_parse.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_cert_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { %struct.asymmetric_key_id*, i32, i32, i32, i32, %struct.TYPE_2__*, i8* }
%struct.asymmetric_key_id = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i32, i8* }
%struct.x509_parse_context = type { i64, i8*, i64, i32, i32, i32, i32, i32, %struct.x509_certificate* }

@ENOMEM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@x509_decoder = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"AKID: %u %*phN\0A\00", align 1
@x509_akid_decoder = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't decode AuthKeyIdentifier\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.x509_certificate* @x509_cert_parse(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.x509_certificate*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.x509_certificate*, align 8
  %7 = alloca %struct.x509_parse_context*, align 8
  %8 = alloca %struct.asymmetric_key_id*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @ENOMEM, align 8
  %11 = sub nsw i64 0, %10
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 40, i32 %12)
  %14 = bitcast i8* %13 to %struct.x509_certificate*
  store %struct.x509_certificate* %14, %struct.x509_certificate** %6, align 8
  %15 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %16 = icmp ne %struct.x509_certificate* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %198

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 4, i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  %22 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %23 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %22, i32 0, i32 5
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %25 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %195

29:                                               ; preds = %18
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 4, i32 %30)
  %32 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %33 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %35 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %34, i32 0, i32 6
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %195

39:                                               ; preds = %29
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 56, i32 %40)
  %42 = bitcast i8* %41 to %struct.x509_parse_context*
  store %struct.x509_parse_context* %42, %struct.x509_parse_context** %7, align 8
  %43 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %44 = icmp ne %struct.x509_parse_context* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %195

46:                                               ; preds = %39
  %47 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %48 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %49 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %48, i32 0, i32 8
  store %struct.x509_certificate* %47, %struct.x509_certificate** %49, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %53 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @asn1_ber_decoder(i32* @x509_decoder, %struct.x509_parse_context* %54, i8* %55, i64 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %192

61:                                               ; preds = %46
  %62 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %63 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %68 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %71 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %74 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @pr_devel(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %69, i64 %72, i8* %75)
  %77 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %78 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %79 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %82 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @asn1_ber_decoder(i32* @x509_akid_decoder, %struct.x509_parse_context* %77, i8* %80, i64 %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %66
  %88 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %192

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89, %61
  %91 = load i64, i64* @ENOMEM, align 8
  %92 = sub nsw i64 0, %91
  store i64 %92, i64* %9, align 8
  %93 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %94 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %97 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @kmemdup(i32 %95, i32 %98, i32 %99)
  %101 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %102 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %101, i32 0, i32 5
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 4
  store i8* %100, i8** %104, align 8
  %105 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %106 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %105, i32 0, i32 5
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %90
  br label %192

112:                                              ; preds = %90
  %113 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %114 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %117 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %116, i32 0, i32 5
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  store i32 %115, i32* %119, align 8
  %120 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %121 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %124 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i8* @kmemdup(i32 %122, i32 %125, i32 %126)
  %128 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %129 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %128, i32 0, i32 5
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i8* %127, i8** %131, align 8
  %132 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %133 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %132, i32 0, i32 5
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %112
  br label %192

139:                                              ; preds = %112
  %140 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %141 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %144 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %143, i32 0, i32 5
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store i32 %142, i32* %146, align 4
  %147 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %148 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %151 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %150, i32 0, i32 5
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 8
  %154 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %155 = call i64 @x509_get_sig_params(%struct.x509_certificate* %154)
  store i64 %155, i64* %9, align 8
  %156 = load i64, i64* %9, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %139
  br label %192

159:                                              ; preds = %139
  %160 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %161 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %164 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %167 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %170 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call %struct.asymmetric_key_id* @asymmetric_key_generate_id(i32 %162, i32 %165, i32 %168, i32 %171)
  store %struct.asymmetric_key_id* %172, %struct.asymmetric_key_id** %8, align 8
  %173 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %8, align 8
  %174 = call i64 @IS_ERR(%struct.asymmetric_key_id* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %159
  %177 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %8, align 8
  %178 = call i64 @PTR_ERR(%struct.asymmetric_key_id* %177)
  store i64 %178, i64* %9, align 8
  br label %192

179:                                              ; preds = %159
  %180 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %8, align 8
  %181 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %182 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %181, i32 0, i32 0
  store %struct.asymmetric_key_id* %180, %struct.asymmetric_key_id** %182, align 8
  %183 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %184 = call i64 @x509_check_for_self_signed(%struct.x509_certificate* %183)
  store i64 %184, i64* %9, align 8
  %185 = load i64, i64* %9, align 8
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %192

188:                                              ; preds = %179
  %189 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %190 = call i32 @kfree(%struct.x509_parse_context* %189)
  %191 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  store %struct.x509_certificate* %191, %struct.x509_certificate** %3, align 8
  br label %201

192:                                              ; preds = %187, %176, %158, %138, %111, %87, %60
  %193 = load %struct.x509_parse_context*, %struct.x509_parse_context** %7, align 8
  %194 = call i32 @kfree(%struct.x509_parse_context* %193)
  br label %195

195:                                              ; preds = %192, %45, %38, %28
  %196 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %197 = call i32 @x509_free_certificate(%struct.x509_certificate* %196)
  br label %198

198:                                              ; preds = %195, %17
  %199 = load i64, i64* %9, align 8
  %200 = call %struct.x509_certificate* @ERR_PTR(i64 %199)
  store %struct.x509_certificate* %200, %struct.x509_certificate** %3, align 8
  br label %201

201:                                              ; preds = %198, %188
  %202 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  ret %struct.x509_certificate* %202
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @asn1_ber_decoder(i32*, %struct.x509_parse_context*, i8*, i64) #1

declare dso_local i32 @pr_devel(i8*, i64, i64, i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i64 @x509_get_sig_params(%struct.x509_certificate*) #1

declare dso_local %struct.asymmetric_key_id* @asymmetric_key_generate_id(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.asymmetric_key_id*) #1

declare dso_local i64 @PTR_ERR(%struct.asymmetric_key_id*) #1

declare dso_local i64 @x509_check_for_self_signed(%struct.x509_certificate*) #1

declare dso_local i32 @kfree(%struct.x509_parse_context*) #1

declare dso_local i32 @x509_free_certificate(%struct.x509_certificate*) #1

declare dso_local %struct.x509_certificate* @ERR_PTR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
