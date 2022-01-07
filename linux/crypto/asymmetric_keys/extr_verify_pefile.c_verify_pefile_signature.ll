; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_verify_pefile_signature.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_verify_pefile_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.pefile_context = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mscode_parse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Digest: %u [%*ph]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_pefile_signature(i8* %0, i32 %1, %struct.key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pefile_context, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.key* %2, %struct.key** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @memset(%struct.pefile_context* %10, i32 0, i32 16)
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @pefile_parse_binary(i8* %14, i32 %15, %struct.pefile_context* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %59

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @pefile_strip_sig_wrapper(i8* %22, %struct.pefile_context* %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %59

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %29, i64 %32
  %34 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %10, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.key*, %struct.key** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @mscode_parse, align 4
  %39 = call i32 @verify_pkcs7_signature(i32* null, i32 0, i8* %33, i32 %35, %struct.key* %36, i32 %37, i32 %38, %struct.pefile_context* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %54

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %10, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %10, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pefile_digest_pe(i8* %51, i32 %52, %struct.pefile_context* %10)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %43, %42
  %55 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kzfree(i32 %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %26, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local i32 @memset(%struct.pefile_context*, i32, i32) #1

declare dso_local i32 @pefile_parse_binary(i8*, i32, %struct.pefile_context*) #1

declare dso_local i32 @pefile_strip_sig_wrapper(i8*, %struct.pefile_context*) #1

declare dso_local i32 @verify_pkcs7_signature(i32*, i32, i8*, i32, %struct.key*, i32, i32, %struct.pefile_context*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @pefile_digest_pe(i8*, i32, %struct.pefile_context*) #1

declare dso_local i32 @kzfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
