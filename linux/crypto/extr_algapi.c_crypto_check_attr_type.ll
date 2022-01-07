; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_check_attr_type.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_check_attr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtattr = type { i32 }
%struct.crypto_attr_type = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_check_attr_type(%struct.rtattr** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtattr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_attr_type*, align 8
  store %struct.rtattr** %0, %struct.rtattr*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtattr**, %struct.rtattr*** %4, align 8
  %8 = call %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr** %7)
  store %struct.crypto_attr_type* %8, %struct.crypto_attr_type** %6, align 8
  %9 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %10 = call i64 @IS_ERR(%struct.crypto_attr_type* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.crypto_attr_type* %13)
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %17 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = xor i32 %18, %19
  %21 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %6, align 8
  %22 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr**) #1

declare dso_local i64 @IS_ERR(%struct.crypto_attr_type*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_attr_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
