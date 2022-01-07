; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_note_signed_info.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_note_signed_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_parse_context = type { i8*, %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info**, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.pkcs7_signed_info = type { %struct.TYPE_4__*, %struct.pkcs7_signed_info*, i64, i32 }
%struct.TYPE_4__ = type { %struct.asymmetric_key_id** }
%struct.asymmetric_key_id = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@OID_msIndirectData = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Authenticode requires AuthAttrs\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"SINFO KID: %u [%*phN]\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_note_signed_info(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pkcs7_parse_context*, align 8
  %13 = alloca %struct.pkcs7_signed_info*, align 8
  %14 = alloca %struct.asymmetric_key_id*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.pkcs7_parse_context*
  store %struct.pkcs7_parse_context* %16, %struct.pkcs7_parse_context** %12, align 8
  %17 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %18 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %17, i32 0, i32 1
  %19 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %18, align 8
  store %struct.pkcs7_signed_info* %19, %struct.pkcs7_signed_info** %13, align 8
  %20 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %21 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %20, i32 0, i32 10
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OID_msIndirectData, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %29 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EBADMSG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %132

36:                                               ; preds = %27, %5
  %37 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %38 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %43 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %46 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %49 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %52 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.asymmetric_key_id* @asymmetric_key_generate_id(i32 %44, i32 %47, i8* %50, i32 %53)
  store %struct.asymmetric_key_id* %54, %struct.asymmetric_key_id** %14, align 8
  br label %63

55:                                               ; preds = %36
  %56 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %57 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %60 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.asymmetric_key_id* @asymmetric_key_generate_id(i32 %58, i32 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.asymmetric_key_id* %62, %struct.asymmetric_key_id** %14, align 8
  br label %63

63:                                               ; preds = %55, %41
  %64 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %14, align 8
  %65 = call i64 @IS_ERR(%struct.asymmetric_key_id* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %14, align 8
  %69 = call i32 @PTR_ERR(%struct.asymmetric_key_id* %68)
  store i32 %69, i32* %6, align 4
  br label %132

70:                                               ; preds = %63
  %71 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %14, align 8
  %72 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %14, align 8
  %75 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %14, align 8
  %78 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pr_devel(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76, i32 %79)
  %81 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %14, align 8
  %82 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %83 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %85, align 8
  %87 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %86, i64 0
  store %struct.asymmetric_key_id* %81, %struct.asymmetric_key_id** %87, align 8
  %88 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %89 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %93 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %95 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %96 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %95, i32 0, i32 2
  %97 = load %struct.pkcs7_signed_info**, %struct.pkcs7_signed_info*** %96, align 8
  store %struct.pkcs7_signed_info* %94, %struct.pkcs7_signed_info** %97, align 8
  %98 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %13, align 8
  %99 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %98, i32 0, i32 1
  %100 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %101 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %100, i32 0, i32 2
  store %struct.pkcs7_signed_info** %99, %struct.pkcs7_signed_info*** %101, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @kzalloc(i32 32, i32 %102)
  %104 = bitcast i8* %103 to %struct.pkcs7_signed_info*
  %105 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %106 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %105, i32 0, i32 1
  store %struct.pkcs7_signed_info* %104, %struct.pkcs7_signed_info** %106, align 8
  %107 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %108 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %107, i32 0, i32 1
  %109 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %108, align 8
  %110 = icmp ne %struct.pkcs7_signed_info* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %70
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %132

114:                                              ; preds = %70
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i8* @kzalloc(i32 4, i32 %115)
  %117 = bitcast i8* %116 to %struct.TYPE_4__*
  %118 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %119 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %118, i32 0, i32 1
  %120 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %119, align 8
  %121 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %120, i32 0, i32 0
  store %struct.TYPE_4__* %117, %struct.TYPE_4__** %121, align 8
  %122 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %123 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %122, i32 0, i32 1
  %124 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %123, align 8
  %125 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = icmp ne %struct.TYPE_4__* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %114
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %132

131:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %131, %128, %111, %67, %32
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.asymmetric_key_id* @asymmetric_key_generate_id(i32, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.asymmetric_key_id*) #1

declare dso_local i32 @PTR_ERR(%struct.asymmetric_key_id*) #1

declare dso_local i32 @pr_devel(i8*, i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
