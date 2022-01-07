; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_init_instance.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_init_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.crypto_alg = type { i8*, i32, i32, i64, i32 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"cryptd(%s)\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_instance*, %struct.crypto_alg*)* @cryptd_init_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_init_instance(%struct.crypto_instance* %0, %struct.crypto_alg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  store %struct.crypto_instance* %0, %struct.crypto_instance** %4, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %5, align 8
  %6 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %7 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %11 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %12 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @snprintf(i32 %9, i64 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENAMETOOLONG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %22 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %26 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %29 = call i32 @memcpy(i32 %24, i32 %27, i64 %28)
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %31 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 50
  %34 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %35 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 %33, i64* %36, align 8
  %37 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %38 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %44 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %47 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %20, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @snprintf(i32, i64, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
