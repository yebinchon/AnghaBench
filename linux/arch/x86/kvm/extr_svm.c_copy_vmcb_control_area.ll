; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_copy_vmcb_control_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_copy_vmcb_control_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcb = type { %struct.vmcb_control_area }
%struct.vmcb_control_area = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmcb*, %struct.vmcb*)* @copy_vmcb_control_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_vmcb_control_area(%struct.vmcb* %0, %struct.vmcb* %1) #0 {
  %3 = alloca %struct.vmcb*, align 8
  %4 = alloca %struct.vmcb*, align 8
  %5 = alloca %struct.vmcb_control_area*, align 8
  %6 = alloca %struct.vmcb_control_area*, align 8
  store %struct.vmcb* %0, %struct.vmcb** %3, align 8
  store %struct.vmcb* %1, %struct.vmcb** %4, align 8
  %7 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %8 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %7, i32 0, i32 0
  store %struct.vmcb_control_area* %8, %struct.vmcb_control_area** %5, align 8
  %9 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %10 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %9, i32 0, i32 0
  store %struct.vmcb_control_area* %10, %struct.vmcb_control_area** %6, align 8
  %11 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %12 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %11, i32 0, i32 24
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %15 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %14, i32 0, i32 24
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %17 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %16, i32 0, i32 23
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %20 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %19, i32 0, i32 23
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %22 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %21, i32 0, i32 22
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %25 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %24, i32 0, i32 22
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %27 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %26, i32 0, i32 21
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %30 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %29, i32 0, i32 21
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %32 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %31, i32 0, i32 20
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %35 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %34, i32 0, i32 20
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %37 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %36, i32 0, i32 19
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %40 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %39, i32 0, i32 19
  store i32 %38, i32* %40, align 4
  %41 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %42 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %41, i32 0, i32 18
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %45 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %44, i32 0, i32 18
  store i32 %43, i32* %45, align 4
  %46 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %47 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %46, i32 0, i32 17
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %50 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %49, i32 0, i32 17
  store i32 %48, i32* %50, align 4
  %51 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %52 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %51, i32 0, i32 16
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %55 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %54, i32 0, i32 16
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %57 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %56, i32 0, i32 15
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %60 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %59, i32 0, i32 15
  store i32 %58, i32* %60, align 4
  %61 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %62 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %65 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 4
  %66 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %67 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %70 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %69, i32 0, i32 13
  store i32 %68, i32* %70, align 4
  %71 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %72 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %75 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %74, i32 0, i32 12
  store i32 %73, i32* %75, align 4
  %76 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %77 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %80 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %79, i32 0, i32 11
  store i32 %78, i32* %80, align 4
  %81 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %82 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %85 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %84, i32 0, i32 10
  store i32 %83, i32* %85, align 4
  %86 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %87 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %90 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %92 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %95 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 4
  %96 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %97 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %100 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %102 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %105 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %107 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %110 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %112 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %115 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %117 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %120 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %122 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %125 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %127 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %130 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %6, align 8
  %132 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %135 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
