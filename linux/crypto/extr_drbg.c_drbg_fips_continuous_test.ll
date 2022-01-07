; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_fips_continuous_test.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_fips_continuous_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbg_state = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CONFIG_CRYPTO_FIPS = common dso_local global i32 0, align 4
@fips_enabled = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DRBG continuous self test failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbg_state*, i8*)* @drbg_fips_continuous_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_fips_continuous_test(%struct.drbg_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbg_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.drbg_state* %0, %struct.drbg_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.drbg_state*, %struct.drbg_state** %4, align 8
  %9 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call zeroext i16 @drbg_sec_strength(i32 %12)
  store i16 %13, i16* %6, align 2
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @CONFIG_CRYPTO_FIPS, align 4
  %15 = call i32 @IS_ENABLED(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.drbg_state*, %struct.drbg_state** %4, align 8
  %20 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %63

25:                                               ; preds = %18
  %26 = load i32, i32* @fips_enabled, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %63

29:                                               ; preds = %25
  %30 = load %struct.drbg_state*, %struct.drbg_state** %4, align 8
  %31 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load %struct.drbg_state*, %struct.drbg_state** %4, align 8
  %36 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i16, i16* %6, align 2
  %40 = call i32 @memcpy(i32 %37, i8* %38, i16 zeroext %39)
  %41 = load %struct.drbg_state*, %struct.drbg_state** %4, align 8
  %42 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %63

45:                                               ; preds = %29
  %46 = load %struct.drbg_state*, %struct.drbg_state** %4, align 8
  %47 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i16, i16* %6, align 2
  %51 = call i32 @memcmp(i32 %48, i8* %49, i16 zeroext %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %45
  %57 = load %struct.drbg_state*, %struct.drbg_state** %4, align 8
  %58 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i16, i16* %6, align 2
  %62 = call i32 @memcpy(i32 %59, i8* %60, i16 zeroext %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %34, %28, %24, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local zeroext i16 @drbg_sec_strength(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i16 zeroext) #1

declare dso_local i32 @memcmp(i32, i8*, i16 zeroext) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
