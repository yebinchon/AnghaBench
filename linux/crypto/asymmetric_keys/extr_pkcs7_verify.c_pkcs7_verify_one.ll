; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_verify_one.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_verify_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { i32 }
%struct.pkcs7_signed_info = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c",%u\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Using X.509[%u] for sig %u\0A\00", align 1
@sinfo_has_signing_time = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Message signed outside of X.509 validity window\0A\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Verified signature %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkcs7_message*, %struct.pkcs7_signed_info*)* @pkcs7_verify_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs7_verify_one(%struct.pkcs7_message* %0, %struct.pkcs7_signed_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pkcs7_message*, align 8
  %5 = alloca %struct.pkcs7_signed_info*, align 8
  %6 = alloca i32, align 4
  store %struct.pkcs7_message* %0, %struct.pkcs7_message** %4, align 8
  store %struct.pkcs7_signed_info* %1, %struct.pkcs7_signed_info** %5, align 8
  %7 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %8 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @kenter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %12 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %13 = call i32 @pkcs7_digest(%struct.pkcs7_message* %11, %struct.pkcs7_signed_info* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %20 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %21 = call i32 @pkcs7_find_key(%struct.pkcs7_message* %19, %struct.pkcs7_signed_info* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %94

26:                                               ; preds = %18
  %27 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %28 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %94

32:                                               ; preds = %26
  %33 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %34 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %39 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* @sinfo_has_signing_time, align 4
  %43 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %44 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %43, i32 0, i32 4
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %32
  %48 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %49 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %52 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %50, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %47
  %58 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %59 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %62 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %60, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %57, %47
  %68 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EKEYREJECTED, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %94

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %32
  %73 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %74 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %79 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @public_key_verify_signature(i32 %77, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %94

86:                                               ; preds = %72
  %87 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %88 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %92 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %93 = call i32 @pkcs7_verify_sig_chain(%struct.pkcs7_message* %91, %struct.pkcs7_signed_info* %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %86, %84, %67, %31, %24, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @pkcs7_digest(%struct.pkcs7_message*, %struct.pkcs7_signed_info*) #1

declare dso_local i32 @pkcs7_find_key(%struct.pkcs7_message*, %struct.pkcs7_signed_info*) #1

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @public_key_verify_signature(i32, i32) #1

declare dso_local i32 @pkcs7_verify_sig_chain(%struct.pkcs7_message*, %struct.pkcs7_signed_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
