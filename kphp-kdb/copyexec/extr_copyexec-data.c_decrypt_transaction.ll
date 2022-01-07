; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_decrypt_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_decrypt_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.lev_copyexec_aux_transaction_header = type { i32, i64, i64 }
%struct.lev_copyexec_aux_transaction_footer = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@public_key_prefix = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"stat (\22%s\22) failed. %m\0A\00", align 1
@COPYEXEC_ERR_STAT = common dso_local global i32 0, align 4
@COPYEXEC_ERR_PUBKEY_PERMISSIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"rsa_decrypt returns error code %d.\0A\00", align 1
@COPYEXEC_ERR_DECRYPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"decrypted transaction len isn't aligned.\0A\00", align 1
@COPYEXEC_ERR_ALIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"decrypted transaction len too short.\0A\00", align 1
@COPYEXEC_ERR_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [84 x i8] c"rsa_decrypted olen didn't match to transaction header size field (position: %lld).\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"transaction_id didn't match, expected %d. (position: %lld).\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"transaction pos didn't match (position: %lld).\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"transaction sha1 didn't match (position: %lld).\0A\00", align 1
@COPYEXEC_ERR_SHA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decrypt_transaction(i8* %0, i32 %1, i32 %2, i64 %3, i32 %4, i8** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.stat, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.lev_copyexec_aux_transaction_header*, align 8
  %24 = alloca %struct.lev_copyexec_aux_transaction_footer*, align 8
  %25 = alloca [20 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  %26 = load i8**, i8*** %14, align 8
  store i8* null, i8** %26, align 8
  %27 = load i32*, i32** %15, align 8
  store i32 -1, i32* %27, align 4
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = load i8*, i8** @public_key_prefix, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  %36 = load i32, i32* @PATH_MAX, align 4
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = call i64 @stat(i8* %31, %struct.stat* %18)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %7
  %43 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %44 = load i32, i32* @COPYEXEC_ERR_STAT, align 4
  store i32 %44, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

45:                                               ; preds = %7
  %46 = call i64 @check_file_permissions(i8* %31, %struct.stat* %18, i32 3)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @COPYEXEC_ERR_PUBKEY_PERMISSIONS, align 4
  store i32 %49, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @rsa_decrypt(i8* %31, i32 1, i8* %51, i32 %52, i8** %20, i32* %21, i32 1)
  store i32 %53, i32* %22, align 4
  %54 = load i32, i32* %22, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %22, align 4
  %58 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @COPYEXEC_ERR_DECRYPT, align 4
  store i32 %59, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

60:                                               ; preds = %50
  %61 = load i32, i32* %21, align 4
  %62 = and i32 %61, 3
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @COPYEXEC_ERR_ALIGN, align 4
  store i32 %66, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

67:                                               ; preds = %60
  %68 = load i8*, i8** %20, align 8
  %69 = bitcast i8* %68 to %struct.lev_copyexec_aux_transaction_header*
  store %struct.lev_copyexec_aux_transaction_header* %69, %struct.lev_copyexec_aux_transaction_header** %23, align 8
  %70 = load i32, i32* %21, align 4
  %71 = icmp slt i32 %70, 28
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %20, align 8
  %74 = call i32 @free(i8* %73)
  %75 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @COPYEXEC_ERR_SIZE, align 4
  store i32 %76, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

77:                                               ; preds = %67
  %78 = load %struct.lev_copyexec_aux_transaction_header*, %struct.lev_copyexec_aux_transaction_header** %23, align 8
  %79 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_header, %struct.lev_copyexec_aux_transaction_header* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %21, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i8*, i8** %20, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i64, i64* %12, align 8
  %88 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @COPYEXEC_ERR_DECRYPT, align 4
  store i32 %89, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

90:                                               ; preds = %77
  %91 = load %struct.lev_copyexec_aux_transaction_header*, %struct.lev_copyexec_aux_transaction_header** %23, align 8
  %92 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_header, %struct.lev_copyexec_aux_transaction_header* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i8*, i8** %20, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i32, i32* %13, align 4
  %100 = load i64, i64* %12, align 8
  %101 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %99, i64 %100)
  %102 = load i32, i32* @COPYEXEC_ERR_DECRYPT, align 4
  store i32 %102, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

103:                                              ; preds = %90
  %104 = load %struct.lev_copyexec_aux_transaction_header*, %struct.lev_copyexec_aux_transaction_header** %23, align 8
  %105 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_header, %struct.lev_copyexec_aux_transaction_header* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i8*, i8** %20, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i64, i64* %12, align 8
  %113 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* @COPYEXEC_ERR_DECRYPT, align 4
  store i32 %114, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

115:                                              ; preds = %103
  %116 = load i8*, i8** %20, align 8
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %116, i64 %118
  %120 = getelementptr i8, i8* %119, i64 -20
  %121 = bitcast i8* %120 to %struct.lev_copyexec_aux_transaction_footer*
  store %struct.lev_copyexec_aux_transaction_footer* %121, %struct.lev_copyexec_aux_transaction_footer** %24, align 8
  %122 = load i8*, i8** %20, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sub nsw i32 %123, 20
  %125 = getelementptr inbounds [20 x i8], [20 x i8]* %25, i64 0, i64 0
  %126 = call i32 @SHA1(i8* %122, i32 %124, i8* %125)
  %127 = getelementptr inbounds [20 x i8], [20 x i8]* %25, i64 0, i64 0
  %128 = load %struct.lev_copyexec_aux_transaction_footer*, %struct.lev_copyexec_aux_transaction_footer** %24, align 8
  %129 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_footer, %struct.lev_copyexec_aux_transaction_footer* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @memcmp(i8* %127, i32 %130, i32 20)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %115
  %134 = load i8*, i8** %20, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i64, i64* %12, align 8
  %137 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i64 %136)
  %138 = load i32, i32* @COPYEXEC_ERR_SHA1, align 4
  store i32 %138, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

139:                                              ; preds = %115
  %140 = load i8*, i8** %20, align 8
  %141 = load i8**, i8*** %14, align 8
  store i8* %140, i8** %141, align 8
  %142 = load i32, i32* %21, align 4
  %143 = load i32*, i32** %15, align 8
  store i32 %142, i32* %143, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %144

144:                                              ; preds = %139, %133, %109, %96, %84, %72, %64, %56, %48, %42
  %145 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @vkprintf(i32, i8*, i8*) #2

declare dso_local i64 @check_file_permissions(i8*, %struct.stat*, i32) #2

declare dso_local i32 @rsa_decrypt(i8*, i32, i8*, i32, i8**, i32*, i32) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @SHA1(i8*, i32, i8*) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
