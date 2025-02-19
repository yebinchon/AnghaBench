; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_asym_tpm_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_asym_tpm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_key = type { i64, %struct.tpm_key* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @asym_tpm_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asym_tpm_destroy(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tpm_key*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.tpm_key*
  store %struct.tpm_key* %7, %struct.tpm_key** %5, align 8
  %8 = load %struct.tpm_key*, %struct.tpm_key** %5, align 8
  %9 = icmp ne %struct.tpm_key* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.tpm_key*, %struct.tpm_key** %5, align 8
  %13 = getelementptr inbounds %struct.tpm_key, %struct.tpm_key* %12, i32 0, i32 1
  %14 = load %struct.tpm_key*, %struct.tpm_key** %13, align 8
  %15 = call i32 @kfree(%struct.tpm_key* %14)
  %16 = load %struct.tpm_key*, %struct.tpm_key** %5, align 8
  %17 = getelementptr inbounds %struct.tpm_key, %struct.tpm_key* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.tpm_key*, %struct.tpm_key** %5, align 8
  %19 = call i32 @kfree(%struct.tpm_key* %18)
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @kfree(%struct.tpm_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
