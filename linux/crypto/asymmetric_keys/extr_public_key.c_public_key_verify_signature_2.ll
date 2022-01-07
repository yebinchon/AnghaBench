; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_public_key.c_public_key_verify_signature_2.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_public_key.c_public_key_verify_signature_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.public_key** }
%struct.public_key = type { i32 }
%struct.public_key_signature = type { i32 }

@asym_crypto = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.public_key_signature*)* @public_key_verify_signature_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @public_key_verify_signature_2(%struct.key* %0, %struct.public_key_signature* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.public_key_signature*, align 8
  %5 = alloca %struct.public_key*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.public_key_signature* %1, %struct.public_key_signature** %4, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.public_key**, %struct.public_key*** %8, align 8
  %10 = load i64, i64* @asym_crypto, align 8
  %11 = getelementptr inbounds %struct.public_key*, %struct.public_key** %9, i64 %10
  %12 = load %struct.public_key*, %struct.public_key** %11, align 8
  store %struct.public_key* %12, %struct.public_key** %5, align 8
  %13 = load %struct.public_key*, %struct.public_key** %5, align 8
  %14 = load %struct.public_key_signature*, %struct.public_key_signature** %4, align 8
  %15 = call i32 @public_key_verify_signature(%struct.public_key* %13, %struct.public_key_signature* %14)
  ret i32 %15
}

declare dso_local i32 @public_key_verify_signature(%struct.public_key*, %struct.public_key_signature*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
