; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_verify.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { %struct.pkcs7_signed_info*, i32, i32 }
%struct.pkcs7_signed_info = type { i32, i64, %struct.pkcs7_signed_info* }

@ENOPKG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OID_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid module sig (not pkcs7-data)\0A\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid module sig (has authattrs)\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid firmware sig (not pkcs7-data)\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Invalid firmware sig (missing authattrs)\0A\00", align 1
@OID_msIndirectData = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Invalid kexec sig (not Authenticode)\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Invalid unspecified sig (not pkcs7-data)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_verify(%struct.pkcs7_message* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pkcs7_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pkcs7_signed_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pkcs7_message* %0, %struct.pkcs7_message** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ENOPKG, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %75 [
    i32 129, label %13
    i32 131, label %33
    i32 130, label %53
    i32 128, label %64
  ]

13:                                               ; preds = %2
  %14 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %15 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @OID_data, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EKEYREJECTED, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %126

23:                                               ; preds = %13
  %24 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %25 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EKEYREJECTED, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %126

32:                                               ; preds = %23
  br label %78

33:                                               ; preds = %2
  %34 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %35 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @OID_data, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @EKEYREJECTED, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %126

43:                                               ; preds = %33
  %44 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %45 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @EKEYREJECTED, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %126

52:                                               ; preds = %43
  br label %78

53:                                               ; preds = %2
  %54 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %55 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @OID_msIndirectData, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i32, i32* @EKEYREJECTED, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %126

63:                                               ; preds = %53
  br label %78

64:                                               ; preds = %2
  %65 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %66 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @OID_data, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i32, i32* @EKEYREJECTED, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %126

74:                                               ; preds = %64
  br label %78

75:                                               ; preds = %2
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %126

78:                                               ; preds = %74, %63, %52, %32
  %79 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %80 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %79, i32 0, i32 0
  %81 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %80, align 8
  store %struct.pkcs7_signed_info* %81, %struct.pkcs7_signed_info** %6, align 8
  br label %82

82:                                               ; preds = %118, %78
  %83 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %84 = icmp ne %struct.pkcs7_signed_info* %83, null
  br i1 %84, label %85, label %122

85:                                               ; preds = %82
  %86 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %87 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %88 = call i32 @pkcs7_verify_one(%struct.pkcs7_message* %86, %struct.pkcs7_signed_info* %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %90 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @ENOPKG, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @EKEYREJECTED, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %93
  br label %118

102:                                              ; preds = %85
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @ENOPKG, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %112 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %118

113:                                              ; preds = %105
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %126

117:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %110, %101
  %119 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %120 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %119, i32 0, i32 2
  %121 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %120, align 8
  store %struct.pkcs7_signed_info* %121, %struct.pkcs7_signed_info** %6, align 8
  br label %82

122:                                              ; preds = %82
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %113, %75, %70, %59, %48, %39, %28, %19
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pkcs7_verify_one(%struct.pkcs7_message*, %struct.pkcs7_signed_info*) #1

declare dso_local i32 @kleave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
