; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_tpm_key_eds_op.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_tpm_key_eds_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_pkey_params = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tpm_key** }
%struct.tpm_key = type { i32 }

@asym_crypto = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernel_pkey_params*, i8*, i8*)* @tpm_key_eds_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_key_eds_op(%struct.kernel_pkey_params* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.kernel_pkey_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tpm_key*, align 8
  %8 = alloca i32, align 4
  store %struct.kernel_pkey_params* %0, %struct.kernel_pkey_params** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %10 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.tpm_key**, %struct.tpm_key*** %13, align 8
  %15 = load i64, i64* @asym_crypto, align 8
  %16 = getelementptr inbounds %struct.tpm_key*, %struct.tpm_key** %14, i64 %15
  %17 = load %struct.tpm_key*, %struct.tpm_key** %16, align 8
  store %struct.tpm_key* %17, %struct.tpm_key** %7, align 8
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %21 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %41 [
    i32 129, label %23
    i32 130, label %29
    i32 128, label %35
  ]

23:                                               ; preds = %3
  %24 = load %struct.tpm_key*, %struct.tpm_key** %7, align 8
  %25 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @tpm_key_encrypt(%struct.tpm_key* %24, %struct.kernel_pkey_params* %25, i8* %26, i8* %27)
  store i32 %28, i32* %8, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load %struct.tpm_key*, %struct.tpm_key** %7, align 8
  %31 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @tpm_key_decrypt(%struct.tpm_key* %30, %struct.kernel_pkey_params* %31, i8* %32, i8* %33)
  store i32 %34, i32* %8, align 4
  br label %43

35:                                               ; preds = %3
  %36 = load %struct.tpm_key*, %struct.tpm_key** %7, align 8
  %37 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @tpm_key_sign(%struct.tpm_key* %36, %struct.kernel_pkey_params* %37, i8* %38, i8* %39)
  store i32 %40, i32* %8, align 4
  br label %43

41:                                               ; preds = %3
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %41, %35, %29, %23
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @tpm_key_encrypt(%struct.tpm_key*, %struct.kernel_pkey_params*, i8*, i8*) #1

declare dso_local i32 @tpm_key_decrypt(%struct.tpm_key*, %struct.kernel_pkey_params*, i8*, i8*) #1

declare dso_local i32 @tpm_key_sign(%struct.tpm_key*, %struct.kernel_pkey_params*, i8*, i8*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
