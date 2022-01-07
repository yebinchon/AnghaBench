; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_segment_access_rights.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_segment_access_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_segment*)* @vmx_segment_access_rights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_segment_access_rights(%struct.kvm_segment* %0) #0 {
  %2 = alloca %struct.kvm_segment*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_segment* %0, %struct.kvm_segment** %2, align 8
  %4 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 65536, i32* %3, align 4
  br label %68

14:                                               ; preds = %8
  %15 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 15
  store i32 %18, i32* %3, align 4
  %19 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %20 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 1
  %23 = shl i32 %22, 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 3
  %30 = shl i32 %29, 5
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %34 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 1
  %37 = shl i32 %36, 7
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %41 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 1
  %44 = shl i32 %43, 12
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %48 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = shl i32 %50, 13
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %55 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 1
  %58 = shl i32 %57, 14
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %62 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 1
  %65 = shl i32 %64, 15
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %14, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
