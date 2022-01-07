; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpufeature.c_arm64_ftr_safe_value.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpufeature.c_arm64_ftr_safe_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm64_ftr_bits = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm64_ftr_bits*, i32, i32)* @arm64_ftr_safe_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm64_ftr_safe_value(%struct.arm64_ftr_bits* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.arm64_ftr_bits*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arm64_ftr_bits* %0, %struct.arm64_ftr_bits** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.arm64_ftr_bits*, %struct.arm64_ftr_bits** %4, align 8
  %9 = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %43 [
    i32 131, label %11
    i32 128, label %15
    i32 130, label %25
    i32 129, label %33
  ]

11:                                               ; preds = %3
  %12 = load %struct.arm64_ftr_bits*, %struct.arm64_ftr_bits** %4, align 8
  %13 = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  br label %45

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %7, align 4
  br label %45

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %25
  br label %45

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %3, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %7, align 4
  br label %45

43:                                               ; preds = %3
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %41, %31, %23, %11
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
