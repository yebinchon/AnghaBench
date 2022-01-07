; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aead.c_aead_register_instance.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aead.c_aead_register_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.aead_instance = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aead_register_instance(%struct.crypto_template* %0, %struct.aead_instance* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.aead_instance*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.aead_instance* %1, %struct.aead_instance** %5, align 8
  %7 = load %struct.aead_instance*, %struct.aead_instance** %5, align 8
  %8 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %7, i32 0, i32 0
  %9 = call i32 @aead_prepare_alg(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %16 = load %struct.aead_instance*, %struct.aead_instance** %5, align 8
  %17 = call i32 @aead_crypto_instance(%struct.aead_instance* %16)
  %18 = call i32 @crypto_register_instance(%struct.crypto_template* %15, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @aead_prepare_alg(i32*) #1

declare dso_local i32 @crypto_register_instance(%struct.crypto_template*, i32) #1

declare dso_local i32 @aead_crypto_instance(%struct.aead_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
