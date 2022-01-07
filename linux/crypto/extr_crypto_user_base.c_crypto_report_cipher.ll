; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_report_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_report_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.crypto_alg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.crypto_report_cipher = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@CRYPTOCFGA_REPORT_CIPHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.crypto_alg*)* @crypto_report_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_report_cipher(%struct.sk_buff* %0, %struct.crypto_alg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.crypto_report_cipher, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %4, align 8
  %6 = call i32 @memset(%struct.crypto_report_cipher* %5, i32 0, i32 16)
  %7 = getelementptr inbounds %struct.crypto_report_cipher, %struct.crypto_report_cipher* %5, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @strscpy(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %10 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %11 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.crypto_report_cipher, %struct.crypto_report_cipher* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %15 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.crypto_report_cipher, %struct.crypto_report_cipher* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %20 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.crypto_report_cipher, %struct.crypto_report_cipher* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = load i32, i32* @CRYPTOCFGA_REPORT_CIPHER, align 4
  %26 = call i32 @nla_put(%struct.sk_buff* %24, i32 %25, i32 16, %struct.crypto_report_cipher* %5)
  ret i32 %26
}

declare dso_local i32 @memset(%struct.crypto_report_cipher*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.crypto_report_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
