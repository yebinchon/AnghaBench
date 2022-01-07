; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___kvm_apic_update_irr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___kvm_apic_update_irr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APIC_IRR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kvm_apic_update_irr(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %76, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 7
  br i1 %16, label %17, label %81

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @READ_ONCE(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @APIC_IRR, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 16
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %27, i64 %30
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %17
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @xchg(i32* %41, i32 0)
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @APIC_IRR, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 16
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %49, i64 %52
  %54 = bitcast i8* %53 to i32*
  store i32 %45, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %36
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = xor i32 %59, %60
  %62 = call i32 @__fls(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %58, %36
  br label %66

66:                                               ; preds = %65, %17
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @__fls(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 32
  store i32 %80, i32* %8, align 4
  br label %14

81:                                               ; preds = %14
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %85, %87
  br label %89

89:                                               ; preds = %84, %81
  %90 = phi i1 [ false, %81 ], [ %88, %84 ]
  %91 = zext i1 %90 to i32
  ret i32 %91
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @__fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
