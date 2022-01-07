; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_signature.c_create_signature.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_signature.c_create_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_pkey_params = type { i32 }

@kernel_pkey_sign = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_signature(%struct.kernel_pkey_params* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.kernel_pkey_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.kernel_pkey_params* %0, %struct.kernel_pkey_params** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @kernel_pkey_sign, align 4
  %8 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %9 = getelementptr inbounds %struct.kernel_pkey_params, %struct.kernel_pkey_params* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.kernel_pkey_params*, %struct.kernel_pkey_params** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @asymmetric_key_eds_op(%struct.kernel_pkey_params* %10, i8* %11, i8* %12)
  ret i32 %13
}

declare dso_local i32 @asymmetric_key_eds_op(%struct.kernel_pkey_params*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
