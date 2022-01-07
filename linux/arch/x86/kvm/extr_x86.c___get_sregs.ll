; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___get_sregs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___get_sregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)*, i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)* }
%struct.kvm_vcpu = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.desc_ptr = type { i32, i32 }
%struct.kvm_sregs = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_SREG_TR = common dso_local global i32 0, align 4
@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_sregs*)* @__get_sregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__get_sregs(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  %5 = alloca %struct.desc_ptr, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %7, i32 0, i32 17
  %9 = load i32, i32* @VCPU_SREG_CS, align 4
  %10 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %6, i32* %8, i32 %9)
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %12, i32 0, i32 16
  %14 = load i32, i32* @VCPU_SREG_DS, align 4
  %15 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %11, i32* %13, i32 %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %17, i32 0, i32 15
  %19 = load i32, i32* @VCPU_SREG_ES, align 4
  %20 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %16, i32* %18, i32 %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %22, i32 0, i32 14
  %24 = load i32, i32* @VCPU_SREG_FS, align 4
  %25 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %21, i32* %23, i32 %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %27, i32 0, i32 13
  %29 = load i32, i32* @VCPU_SREG_GS, align 4
  %30 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %26, i32* %28, i32 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %32, i32 0, i32 12
  %34 = load i32, i32* @VCPU_SREG_SS, align 4
  %35 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %31, i32* %33, i32 %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %37, i32 0, i32 11
  %39 = load i32, i32* @VCPU_SREG_TR, align 4
  %40 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %36, i32* %38, i32 %39)
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %42, i32 0, i32 10
  %44 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %45 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %41, i32* %43, i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kvm_x86_ops, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)*, i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)** %47, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = call i32 %48(%struct.kvm_vcpu* %49, %struct.desc_ptr* %5)
  %51 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %54 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kvm_x86_ops, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)*, i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)** %62, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = call i32 %63(%struct.kvm_vcpu* %64, %struct.desc_ptr* %5)
  %66 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %5, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %69 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %74 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = call i32 @kvm_read_cr0(%struct.kvm_vcpu* %76)
  %78 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %79 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %85 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = call i32 @kvm_read_cr3(%struct.kvm_vcpu* %86)
  %88 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = call i32 @kvm_read_cr4(%struct.kvm_vcpu* %90)
  %92 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %93 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = call i32 @kvm_get_cr8(%struct.kvm_vcpu* %94)
  %96 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %97 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %103 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = call i32 @kvm_get_apic_base(%struct.kvm_vcpu* %104)
  %106 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %107 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %109 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @memset(i64 %110, i32 0, i32 8)
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %113 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %2
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %118
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %132 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i64*
  %135 = call i32 @set_bit(i32 %130, i64* %134)
  br label %136

136:                                              ; preds = %125, %118, %2
  ret void
}

declare dso_local i32 @kvm_get_segment(%struct.kvm_vcpu*, i32*, i32) #1

declare dso_local i32 @kvm_read_cr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_cr3(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_cr4(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_cr8(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_apic_base(%struct.kvm_vcpu*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
