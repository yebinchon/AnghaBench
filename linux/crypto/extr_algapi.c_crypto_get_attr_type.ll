; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_get_attr_type.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_get_attr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_attr_type = type { i32 }
%struct.rtattr = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTOA_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr** %0) #0 {
  %2 = alloca %struct.crypto_attr_type*, align 8
  %3 = alloca %struct.rtattr**, align 8
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca %struct.crypto_attr_type*, align 8
  store %struct.rtattr** %0, %struct.rtattr*** %3, align 8
  %6 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %7 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %6, i64 0
  %8 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  store %struct.rtattr* %8, %struct.rtattr** %4, align 8
  %9 = load %struct.rtattr*, %struct.rtattr** %4, align 8
  %10 = icmp ne %struct.rtattr* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.crypto_attr_type* @ERR_PTR(i32 %13)
  store %struct.crypto_attr_type* %14, %struct.crypto_attr_type** %2, align 8
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.rtattr*, %struct.rtattr** %4, align 8
  %17 = call i32 @RTA_PAYLOAD(%struct.rtattr* %16)
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.crypto_attr_type* @ERR_PTR(i32 %22)
  store %struct.crypto_attr_type* %23, %struct.crypto_attr_type** %2, align 8
  br label %38

24:                                               ; preds = %15
  %25 = load %struct.rtattr*, %struct.rtattr** %4, align 8
  %26 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CRYPTOA_TYPE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.crypto_attr_type* @ERR_PTR(i32 %32)
  store %struct.crypto_attr_type* %33, %struct.crypto_attr_type** %2, align 8
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.rtattr*, %struct.rtattr** %4, align 8
  %36 = call %struct.crypto_attr_type* @RTA_DATA(%struct.rtattr* %35)
  store %struct.crypto_attr_type* %36, %struct.crypto_attr_type** %5, align 8
  %37 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %5, align 8
  store %struct.crypto_attr_type* %37, %struct.crypto_attr_type** %2, align 8
  br label %38

38:                                               ; preds = %34, %30, %20, %11
  %39 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %2, align 8
  ret %struct.crypto_attr_type* %39
}

declare dso_local %struct.crypto_attr_type* @ERR_PTR(i32) #1

declare dso_local i32 @RTA_PAYLOAD(%struct.rtattr*) #1

declare dso_local %struct.crypto_attr_type* @RTA_DATA(%struct.rtattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
