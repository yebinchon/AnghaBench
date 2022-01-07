; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_verify_signature.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_pkey_params = type { i32, i32, i32, i32, i32 }
%struct.public_key_signature = type { i8*, i8*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernel_pkey_params*, i8*, i8*)* @asymmetric_key_verify_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asymmetric_key_verify_signature(%struct.kernel_pkey_params* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.kernel_pkey_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.public_key_signature, align 8
  store %struct.kernel_pkey_params* %0, %struct.kernel_pkey_params** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %7, i32 0, i32 0
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %7, i32 0, i32 1
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %7, i32 0, i32 2
  %13 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %14 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %7, i32 0, i32 3
  %17 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %18 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %7, i32 0, i32 4
  %21 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %22 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 8
  %24 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %7, i32 0, i32 5
  %25 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %26 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %29 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @verify_signature(i32 %30, %struct.public_key_signature* %7)
  ret i32 %31
}

declare dso_local i32 @verify_signature(i32, %struct.public_key_signature*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
