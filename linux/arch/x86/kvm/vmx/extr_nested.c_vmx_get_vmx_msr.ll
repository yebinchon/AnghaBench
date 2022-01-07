; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_get_vmx_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_get_vmx_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nested_vmx_msrs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PIN_BASED_ALWAYSON_WITHOUT_TRUE_MSR = common dso_local global i32 0, align 4
@CPU_BASED_ALWAYSON_WITHOUT_TRUE_MSR = common dso_local global i32 0, align 4
@VM_EXIT_ALWAYSON_WITHOUT_TRUE_MSR = common dso_local global i32 0, align 4
@VM_ENTRY_ALWAYSON_WITHOUT_TRUE_MSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmx_get_vmx_msr(%struct.nested_vmx_msrs* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nested_vmx_msrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.nested_vmx_msrs* %0, %struct.nested_vmx_msrs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %140 [
    i32 145, label %9
    i32 131, label %14
    i32 136, label %14
    i32 130, label %31
    i32 135, label %31
    i32 132, label %48
    i32 138, label %48
    i32 133, label %65
    i32 140, label %65
    i32 137, label %82
    i32 144, label %91
    i32 143, label %96
    i32 142, label %101
    i32 141, label %106
    i32 129, label %111
    i32 134, label %116
    i32 139, label %125
    i32 128, label %135
  ]

9:                                                ; preds = %3
  %10 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %11 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  br label %141

14:                                               ; preds = %3, %3
  %15 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %16 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %15, i32 0, i32 20
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %19 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %18, i32 0, i32 19
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vmx_control_msr(i32 %17, i32 %20)
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 136
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load i32, i32* @PIN_BASED_ALWAYSON_WITHOUT_TRUE_MSR, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %14
  br label %141

31:                                               ; preds = %3, %3
  %32 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %33 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %32, i32 0, i32 18
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %36 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %35, i32 0, i32 17
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vmx_control_msr(i32 %34, i32 %37)
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 135
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32, i32* @CPU_BASED_ALWAYSON_WITHOUT_TRUE_MSR, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %31
  br label %141

48:                                               ; preds = %3, %3
  %49 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %50 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %49, i32 0, i32 16
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %53 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %52, i32 0, i32 15
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vmx_control_msr(i32 %51, i32 %54)
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 138
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load i32, i32* @VM_EXIT_ALWAYSON_WITHOUT_TRUE_MSR, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %48
  br label %141

65:                                               ; preds = %3, %3
  %66 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %67 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %70 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @vmx_control_msr(i32 %68, i32 %71)
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 140
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load i32, i32* @VM_ENTRY_ALWAYSON_WITHOUT_TRUE_MSR, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %65
  br label %141

82:                                               ; preds = %3
  %83 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %84 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %87 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @vmx_control_msr(i32 %85, i32 %88)
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  br label %141

91:                                               ; preds = %3
  %92 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %93 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  br label %141

96:                                               ; preds = %3
  %97 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %98 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  br label %141

101:                                              ; preds = %3
  %102 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %103 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %141

106:                                              ; preds = %3
  %107 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %108 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  br label %141

111:                                              ; preds = %3
  %112 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %113 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  br label %141

116:                                              ; preds = %3
  %117 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %118 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %121 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @vmx_control_msr(i32 %119, i32 %122)
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  br label %141

125:                                              ; preds = %3
  %126 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %127 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %130 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 32
  %133 = or i32 %128, %132
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  br label %141

135:                                              ; preds = %3
  %136 = load %struct.nested_vmx_msrs*, %struct.nested_vmx_msrs** %5, align 8
  %137 = getelementptr inbounds %struct.nested_vmx_msrs, %struct.nested_vmx_msrs* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  br label %141

140:                                              ; preds = %3
  store i32 1, i32* %4, align 4
  br label %142

141:                                              ; preds = %135, %125, %116, %111, %106, %101, %96, %91, %82, %81, %64, %47, %30, %9
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @vmx_control_msr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
