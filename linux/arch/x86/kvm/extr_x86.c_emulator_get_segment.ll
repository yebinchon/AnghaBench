; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_get_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_get_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }
%struct.desc_struct = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_segment = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)* @emulator_get_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_get_segment(%struct.x86_emulate_ctxt* %0, i32* %1, %struct.desc_struct* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.x86_emulate_ctxt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.desc_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_segment, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.desc_struct* %2, %struct.desc_struct** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %14 = call i32 @emul_to_vcpu(%struct.x86_emulate_ctxt* %13)
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @kvm_get_segment(i32 %14, %struct.kvm_segment* %12, i32 %15)
  %17 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 11
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %25 = call i32 @memset(%struct.desc_struct* %24, i32 0, i32 40)
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32*, i32** %10, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %23
  store i32 0, i32* %6, align 4
  br label %81

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 12
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %41 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @set_desc_limit(%struct.desc_struct* %40, i32 %42)
  %44 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %45 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @set_desc_base(%struct.desc_struct* %44, i64 %47)
  %49 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %52 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %56 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %60 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %64 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %68 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %72 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %76 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.desc_struct*, %struct.desc_struct** %9, align 8
  %80 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  store i32 1, i32* %6, align 4
  br label %81

81:                                               ; preds = %39, %30
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @kvm_get_segment(i32, %struct.kvm_segment*, i32) #1

declare dso_local i32 @emul_to_vcpu(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @memset(%struct.desc_struct*, i32, i32) #1

declare dso_local i32 @set_desc_limit(%struct.desc_struct*, i32) #1

declare dso_local i32 @set_desc_base(%struct.desc_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
