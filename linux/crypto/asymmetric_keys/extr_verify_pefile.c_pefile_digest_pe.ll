; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_pefile_digest_pe.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_pefile_digest_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pefile_context = type { i64, i32, i32 }
%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@.str = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOPKG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Digest size mismatch (%zx != %x)\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Digest: desc=%zu size=%zu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Digest calc = [%*ph]\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Digest mismatch\0A\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"The digests match!\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.pefile_context*)* @pefile_digest_pe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pefile_digest_pe(i8* %0, i32 %1, %struct.pefile_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pefile_context*, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca %struct.shash_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pefile_context* %2, %struct.pefile_context** %7, align 8
  %14 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %15 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kenter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %19 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.crypto_shash* @crypto_alloc_shash(i32 %20, i32 0, i32 0)
  store %struct.crypto_shash* %21, %struct.crypto_shash** %8, align 8
  %22 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %23 = call i64 @IS_ERR(%struct.crypto_shash* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %27 = call i32 @PTR_ERR(%struct.crypto_shash* %26)
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOPKG, align 4
  %33 = sub nsw i32 0, %32
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.crypto_shash* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ]
  store i32 %38, i32* %4, align 4
  br label %133

39:                                               ; preds = %3
  %40 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %41 = call i32 @crypto_shash_descsize(%struct.crypto_shash* %40)
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %45 = call i64 @crypto_shash_digestsize(%struct.crypto_shash* %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %48 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %54 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %55)
  %57 = load i32, i32* @EBADMSG, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  br label %127

59:                                               ; preds = %39
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %60, i64 %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %65, %66
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.shash_desc* @kzalloc(i64 %67, i32 %68)
  store %struct.shash_desc* %69, %struct.shash_desc** %9, align 8
  %70 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %71 = icmp ne %struct.shash_desc* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %59
  br label %127

73:                                               ; preds = %59
  %74 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %75 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %76 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %75, i32 0, i32 0
  store %struct.crypto_shash* %74, %struct.crypto_shash** %76, align 8
  %77 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %78 = call i32 @crypto_shash_init(%struct.shash_desc* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %124

82:                                               ; preds = %73
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %86 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %87 = call i32 @pefile_digest_pe_contents(i8* %83, i32 %84, %struct.pefile_context* %85, %struct.shash_desc* %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %124

91:                                               ; preds = %82
  %92 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %93 = bitcast %struct.shash_desc* %92 to i8*
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr i8, i8* %93, i64 %94
  store i8* %95, i8** %12, align 8
  %96 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @crypto_shash_final(%struct.shash_desc* %96, i8* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %124

102:                                              ; preds = %91
  %103 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %104 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %105, i8* %106)
  %108 = load i8*, i8** %12, align 8
  %109 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %110 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %113 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @memcmp(i8* %108, i32 %111, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %102
  %118 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @EKEYREJECTED, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %13, align 4
  br label %123

121:                                              ; preds = %102
  %122 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %117
  br label %124

124:                                              ; preds = %123, %101, %90, %81
  %125 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %126 = call i32 @kzfree(%struct.shash_desc* %125)
  br label %127

127:                                              ; preds = %124, %72, %51
  %128 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %129 = call i32 @crypto_free_shash(%struct.crypto_shash* %128)
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %127, %37
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.shash_desc* @kzalloc(i64, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.shash_desc*) #1

declare dso_local i32 @pefile_digest_pe_contents(i8*, i32, %struct.pefile_context*, %struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_final(%struct.shash_desc*, i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @kzfree(%struct.shash_desc*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

declare dso_local i32 @kleave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
