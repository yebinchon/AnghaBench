; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_intel_detect_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_intel_detect_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @intel_detect_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_detect_tlb(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i8*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %9 = bitcast i32* %8 to i8*
  store i8* %9, i8** %7, align 8
  %10 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %11 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %64

15:                                               ; preds = %1
  %16 = call i32 @cpuid_eax(i32 2)
  %17 = and i32 %16, 255
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %61, %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %27 = call i32 @cpuid(i32 2, i32* %23, i32* %24, i32* %25, i32* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %43, %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, -2147483648
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %40
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %28

46:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %57, %46
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @intel_tlb_lookup(i8 zeroext %55)
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %47

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %18

64:                                               ; preds = %14, %18
  ret void
}

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @intel_tlb_lookup(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
