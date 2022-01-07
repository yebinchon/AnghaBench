; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_decrypt_complete.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_decrypt_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32, i32 }
%struct.crypto_akcipher = type { i32 }
%struct.pkcs1pad_ctx = type { i32 }
%struct.pkcs1pad_request = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*, i32)* @pkcs1pad_decrypt_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs1pad_decrypt_complete(%struct.akcipher_request* %0, i32 %1) #0 {
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_akcipher*, align 8
  %6 = alloca %struct.pkcs1pad_ctx*, align 8
  %7 = alloca %struct.pkcs1pad_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %12 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %11)
  store %struct.crypto_akcipher* %12, %struct.crypto_akcipher** %5, align 8
  %13 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %5, align 8
  %14 = call %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %13)
  store %struct.pkcs1pad_ctx* %14, %struct.pkcs1pad_ctx** %6, align 8
  %15 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %16 = call %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request* %15)
  store %struct.pkcs1pad_request* %16, %struct.pkcs1pad_request** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %126

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %24 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %126

34:                                               ; preds = %20
  %35 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %36 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %34
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %126

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %10, align 8
  br label %54

54:                                               ; preds = %49, %34
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %126

60:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %77

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %61

77:                                               ; preds = %72, %61
  %78 = load i32, i32* %9, align 4
  %79 = icmp ult i32 %78, 9
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %77
  br label %126

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %4, align 4
  %88 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %89 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub i32 %91, %92
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @EOVERFLOW, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %85
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub i32 %99, %100
  %102 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %103 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %98
  %107 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %108 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %111 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %114 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sg_nents_for_len(i32 %112, i32 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %122 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @sg_copy_from_buffer(i32 %109, i32 %116, i32* %120, i32 %123)
  br label %125

125:                                              ; preds = %106, %98
  br label %126

126:                                              ; preds = %125, %84, %59, %48, %33, %19
  %127 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %128 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @kzfree(i32* %129)
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @kzfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
