; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_disable_intercept_for_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_disable_intercept_for_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_TYPE_R = common dso_local global i32 0, align 4
@MSR_TYPE_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32, i32)* @nested_vmx_disable_intercept_for_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nested_vmx_disable_intercept_for_msr(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 8, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 8191
  br i1 %11, label %12, label %57

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MSR_TYPE_R, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sdiv i32 0, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = call i32 @test_bit(i32 %18, i64* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sdiv i32 0, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = call i32 @__clear_bit(i32 %27, i64* %32)
  br label %34

34:                                               ; preds = %26, %17, %12
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MSR_TYPE_W, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i64*, i64** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 2048, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = call i32 @test_bit(i32 %40, i64* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load i64*, i64** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 2048, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = call i32 @__clear_bit(i32 %49, i64* %54)
  br label %56

56:                                               ; preds = %48, %39, %34
  br label %111

57:                                               ; preds = %4
  %58 = load i32, i32* %7, align 4
  %59 = icmp uge i32 %58, -1073741824
  br i1 %59, label %60, label %110

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp ule i32 %61, -1073733633
  br i1 %62, label %63, label %110

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 8191
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @MSR_TYPE_R, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = load i64*, i64** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sdiv i32 1024, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = call i32 @test_bit(i32 %71, i64* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = load i64*, i64** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sdiv i32 1024, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = call i32 @__clear_bit(i32 %80, i64* %85)
  br label %87

87:                                               ; preds = %79, %70, %63
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @MSR_TYPE_W, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = load i64*, i64** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sdiv i32 3072, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = call i32 @test_bit(i32 %93, i64* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %7, align 4
  %103 = load i64*, i64** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sdiv i32 3072, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = call i32 @__clear_bit(i32 %102, i64* %107)
  br label %109

109:                                              ; preds = %101, %92, %87
  br label %110

110:                                              ; preds = %109, %60, %57
  br label %111

111:                                              ; preds = %110, %56
  ret void
}

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
