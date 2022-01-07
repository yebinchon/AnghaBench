; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_user_stat.c_crypto_report_aead.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_user_stat.c_crypto_report_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.crypto_alg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.crypto_stat_aead = type { i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"aead\00", align 1
@CRYPTOCFGA_STAT_AEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.crypto_alg*)* @crypto_report_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_report_aead(%struct.sk_buff* %0, %struct.crypto_alg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.crypto_stat_aead, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %4, align 8
  %6 = call i32 @memset(%struct.crypto_stat_aead* %5, i32 0, i32 48)
  %7 = getelementptr inbounds %struct.crypto_stat_aead, %struct.crypto_stat_aead* %5, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @strscpy(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %10 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %11 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = call i8* @atomic64_read(i32* %13)
  %15 = getelementptr inbounds %struct.crypto_stat_aead, %struct.crypto_stat_aead* %5, i32 0, i32 4
  store i8* %14, i8** %15, align 8
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %17 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = call i8* @atomic64_read(i32* %19)
  %21 = getelementptr inbounds %struct.crypto_stat_aead, %struct.crypto_stat_aead* %5, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %23 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call i8* @atomic64_read(i32* %25)
  %27 = getelementptr inbounds %struct.crypto_stat_aead, %struct.crypto_stat_aead* %5, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %29 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = call i8* @atomic64_read(i32* %31)
  %33 = getelementptr inbounds %struct.crypto_stat_aead, %struct.crypto_stat_aead* %5, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %35 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i8* @atomic64_read(i32* %37)
  %39 = getelementptr inbounds %struct.crypto_stat_aead, %struct.crypto_stat_aead* %5, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load i32, i32* @CRYPTOCFGA_STAT_AEAD, align 4
  %42 = call i32 @nla_put(%struct.sk_buff* %40, i32 %41, i32 48, %struct.crypto_stat_aead* %5)
  ret i32 %42
}

declare dso_local i32 @memset(%struct.crypto_stat_aead*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i8* @atomic64_read(i32*) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.crypto_stat_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
