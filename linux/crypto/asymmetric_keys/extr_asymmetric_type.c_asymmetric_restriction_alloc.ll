; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_restriction_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_restriction_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_restriction = type { i32*, %struct.key*, i32 }
%struct.key = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@key_type_asymmetric = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_restriction* (i32, %struct.key*)* @asymmetric_restriction_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_restriction* @asymmetric_restriction_alloc(i32 %0, %struct.key* %1) #0 {
  %3 = alloca %struct.key_restriction*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.key_restriction*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.key* %1, %struct.key** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.key_restriction* @kzalloc(i32 24, i32 %7)
  store %struct.key_restriction* %8, %struct.key_restriction** %6, align 8
  %9 = load %struct.key_restriction*, %struct.key_restriction** %6, align 8
  %10 = icmp ne %struct.key_restriction* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.key_restriction* @ERR_PTR(i32 %13)
  store %struct.key_restriction* %14, %struct.key_restriction** %3, align 8
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.key_restriction*, %struct.key_restriction** %6, align 8
  %18 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.key*, %struct.key** %5, align 8
  %20 = load %struct.key_restriction*, %struct.key_restriction** %6, align 8
  %21 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %20, i32 0, i32 1
  store %struct.key* %19, %struct.key** %21, align 8
  %22 = load %struct.key_restriction*, %struct.key_restriction** %6, align 8
  %23 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %22, i32 0, i32 0
  store i32* @key_type_asymmetric, i32** %23, align 8
  %24 = load %struct.key_restriction*, %struct.key_restriction** %6, align 8
  store %struct.key_restriction* %24, %struct.key_restriction** %3, align 8
  br label %25

25:                                               ; preds = %15, %11
  %26 = load %struct.key_restriction*, %struct.key_restriction** %3, align 8
  ret %struct.key_restriction* %26
}

declare dso_local %struct.key_restriction* @kzalloc(i32, i32) #1

declare dso_local %struct.key_restriction* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
