; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_credit_entropy_bits_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_credit_entropy_bits_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.entropy_store*, i32)* @credit_entropy_bits_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @credit_entropy_bits_safe(%struct.entropy_store* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.entropy_store*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.entropy_store* %0, %struct.entropy_store** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %8 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @min(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @credit_entropy_bits(%struct.entropy_store* %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @credit_entropy_bits(%struct.entropy_store*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
