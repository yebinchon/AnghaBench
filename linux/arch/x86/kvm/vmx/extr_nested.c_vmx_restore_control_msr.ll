; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_restore_control_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_restore_control_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*, i32, i32)* @vmx_restore_control_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_restore_control_msr(%struct.vcpu_vmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu_vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %57 [
    i32 129, label %12
    i32 128, label %21
    i32 130, label %30
    i32 131, label %39
    i32 132, label %48
  ]

12:                                               ; preds = %3
  %13 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %14 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32* %16, i32** %9, align 8
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32* %20, i32** %10, align 8
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %23 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32* %25, i32** %9, align 8
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %27 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i32* %29, i32** %10, align 8
  br label %59

30:                                               ; preds = %3
  %31 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %32 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i32* %34, i32** %9, align 8
  %35 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %36 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  store i32* %38, i32** %10, align 8
  br label %59

39:                                               ; preds = %3
  %40 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %41 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 6
  store i32* %43, i32** %9, align 8
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 7
  store i32* %47, i32** %10, align 8
  br label %59

48:                                               ; preds = %3
  %49 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %50 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 8
  store i32* %52, i32** %9, align 8
  %53 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %54 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 9
  store i32* %56, i32** %10, align 8
  br label %59

57:                                               ; preds = %3
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %57, %48, %39, %30, %21, %12
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @vmx_control_msr(i32 %61, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @GENMASK_ULL(i32 31, i32 0)
  %68 = call i32 @is_bitwise_subset(i32 %65, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %88

73:                                               ; preds = %59
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @GENMASK_ULL(i32 63, i32 32)
  %77 = call i32 @is_bitwise_subset(i32 %74, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %88

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %85, 32
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %79, %70
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @vmx_control_msr(i32, i32) #1

declare dso_local i32 @is_bitwise_subset(i32, i32, i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
