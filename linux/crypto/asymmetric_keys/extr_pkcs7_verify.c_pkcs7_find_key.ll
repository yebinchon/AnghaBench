; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_find_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_find_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { %struct.x509_certificate* }
%struct.x509_certificate = type { %struct.TYPE_4__*, i32, %struct.x509_certificate* }
%struct.TYPE_4__ = type { i32 }
%struct.pkcs7_signed_info = type { %struct.TYPE_5__*, i32, %struct.x509_certificate* }
%struct.TYPE_5__ = type { %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Sig %u: Found cert serial match X.509[%u]\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Sig %u: X.509 algo and PKCS#7 sig algo don't match\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Sig %u: Issuing X.509 cert not found (#%*phN)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkcs7_message*, %struct.pkcs7_signed_info*)* @pkcs7_find_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs7_find_key(%struct.pkcs7_message* %0, %struct.pkcs7_signed_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pkcs7_message*, align 8
  %5 = alloca %struct.pkcs7_signed_info*, align 8
  %6 = alloca %struct.x509_certificate*, align 8
  %7 = alloca i32, align 4
  store %struct.pkcs7_message* %0, %struct.pkcs7_message** %4, align 8
  store %struct.pkcs7_signed_info* %1, %struct.pkcs7_signed_info** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %9 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @kenter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %13 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %12, i32 0, i32 0
  %14 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  store %struct.x509_certificate* %14, %struct.x509_certificate** %6, align 8
  br label %15

15:                                               ; preds = %59, %2
  %16 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %17 = icmp ne %struct.x509_certificate* %16, null
  br i1 %17, label %18, label %65

18:                                               ; preds = %15
  %19 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %20 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %23 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @asymmetric_key_id_same(i32 %21, %struct.TYPE_6__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %59

32:                                               ; preds = %18
  %33 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %34 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @pr_devel(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %39 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %44 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @strcmp(i32 %42, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %52 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %59

55:                                               ; preds = %32
  %56 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %57 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %58 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %57, i32 0, i32 2
  store %struct.x509_certificate* %56, %struct.x509_certificate** %58, align 8
  store i32 0, i32* %3, align 4
  br label %88

59:                                               ; preds = %50, %31
  %60 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %61 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %60, i32 0, i32 2
  %62 = load %struct.x509_certificate*, %struct.x509_certificate** %61, align 8
  store %struct.x509_certificate* %62, %struct.x509_certificate** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %15

65:                                               ; preds = %15
  %66 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %67 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %70 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %79 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %77, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %65, %55
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @asymmetric_key_id_same(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @pr_devel(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
