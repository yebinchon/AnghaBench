; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_read_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i64 }
%struct.x86_exception = type { i32 }
%struct.read_write_emulator_ops = type { i32 (%struct.kvm_vcpu*, i32, i8*, i32)*, i32, i64 (%struct.kvm_vcpu.0*, i8*, i32)* }
%struct.kvm_vcpu = type opaque
%struct.kvm_vcpu.0 = type opaque
%struct.kvm_vcpu.1 = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@X86EMUL_MODE_PROT64 = common dso_local global i64 0, align 8
@KVM_EXIT_MMIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i64, i8*, i32, %struct.x86_exception*, %struct.read_write_emulator_ops*)* @emulator_read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_read_write(%struct.x86_emulate_ctxt* %0, i64 %1, i8* %2, i32 %3, %struct.x86_exception* %4, %struct.read_write_emulator_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.x86_emulate_ctxt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.x86_exception*, align 8
  %13 = alloca %struct.read_write_emulator_ops*, align 8
  %14 = alloca %struct.kvm_vcpu.1*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.x86_exception* %4, %struct.x86_exception** %12, align 8
  store %struct.read_write_emulator_ops* %5, %struct.read_write_emulator_ops** %13, align 8
  %18 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %8, align 8
  %19 = call %struct.kvm_vcpu.1* @emul_to_vcpu(%struct.x86_emulate_ctxt* %18)
  store %struct.kvm_vcpu.1* %19, %struct.kvm_vcpu.1** %14, align 8
  %20 = load %struct.read_write_emulator_ops*, %struct.read_write_emulator_ops** %13, align 8
  %21 = getelementptr inbounds %struct.read_write_emulator_ops, %struct.read_write_emulator_ops* %20, i32 0, i32 2
  %22 = load i64 (%struct.kvm_vcpu.0*, i8*, i32)*, i64 (%struct.kvm_vcpu.0*, i8*, i32)** %21, align 8
  %23 = icmp ne i64 (%struct.kvm_vcpu.0*, i8*, i32)* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %6
  %25 = load %struct.read_write_emulator_ops*, %struct.read_write_emulator_ops** %13, align 8
  %26 = getelementptr inbounds %struct.read_write_emulator_ops, %struct.read_write_emulator_ops* %25, i32 0, i32 2
  %27 = load i64 (%struct.kvm_vcpu.0*, i8*, i32)*, i64 (%struct.kvm_vcpu.0*, i8*, i32)** %26, align 8
  %28 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %29 = bitcast %struct.kvm_vcpu.1* %28 to %struct.kvm_vcpu.0*
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 %27(%struct.kvm_vcpu.0* %29, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %35, i32* %7, align 4
  br label %161

36:                                               ; preds = %24, %6
  %37 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = add i64 %39, %41
  %43 = sub i64 %42, 1
  %44 = load i64, i64* %9, align 8
  %45 = xor i64 %43, %44
  %46 = load i64, i64* @PAGE_MASK, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %36
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 0, %50
  %52 = load i64, i64* @PAGE_MASK, align 8
  %53 = xor i64 %52, -1
  %54 = and i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %17, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load %struct.x86_exception*, %struct.x86_exception** %12, align 8
  %60 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %61 = load %struct.read_write_emulator_ops*, %struct.read_write_emulator_ops** %13, align 8
  %62 = call i32 @emulator_read_write_onepage(i64 %56, i8* %57, i32 %58, %struct.x86_exception* %59, %struct.kvm_vcpu.1* %60, %struct.read_write_emulator_ops* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %7, align 4
  br label %161

68:                                               ; preds = %49
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %8, align 8
  %74 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @X86EMUL_MODE_PROT64, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %9, align 8
  br label %80

80:                                               ; preds = %78, %68
  %81 = load i32, i32* %17, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr i8, i8* %82, i64 %83
  store i8* %84, i8** %10, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %80, %36
  %89 = load i64, i64* %9, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.x86_exception*, %struct.x86_exception** %12, align 8
  %93 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %94 = load %struct.read_write_emulator_ops*, %struct.read_write_emulator_ops** %13, align 8
  %95 = call i32 @emulator_read_write_onepage(i64 %89, i8* %90, i32 %91, %struct.x86_exception* %92, %struct.kvm_vcpu.1* %93, %struct.read_write_emulator_ops* %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %7, align 4
  br label %161

101:                                              ; preds = %88
  %102 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %7, align 4
  br label %161

108:                                              ; preds = %101
  %109 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %15, align 4
  %115 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @min(i32 8, i32 %124)
  %126 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  store i32 %125, i32* %130, align 4
  %131 = load %struct.read_write_emulator_ops*, %struct.read_write_emulator_ops** %13, align 8
  %132 = getelementptr inbounds %struct.read_write_emulator_ops, %struct.read_write_emulator_ops* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %135 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %137 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i32 %133, i32* %140, align 4
  %141 = load i32, i32* @KVM_EXIT_MMIO, align 4
  %142 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %148 = getelementptr inbounds %struct.kvm_vcpu.1, %struct.kvm_vcpu.1* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 %146, i32* %151, align 4
  %152 = load %struct.read_write_emulator_ops*, %struct.read_write_emulator_ops** %13, align 8
  %153 = getelementptr inbounds %struct.read_write_emulator_ops, %struct.read_write_emulator_ops* %152, i32 0, i32 0
  %154 = load i32 (%struct.kvm_vcpu*, i32, i8*, i32)*, i32 (%struct.kvm_vcpu*, i32, i8*, i32)** %153, align 8
  %155 = load %struct.kvm_vcpu.1*, %struct.kvm_vcpu.1** %14, align 8
  %156 = bitcast %struct.kvm_vcpu.1* %155 to %struct.kvm_vcpu*
  %157 = load i32, i32* %15, align 4
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 %154(%struct.kvm_vcpu* %156, i32 %157, i8* %158, i32 %159)
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %108, %106, %99, %66, %34
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local %struct.kvm_vcpu.1* @emul_to_vcpu(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @emulator_read_write_onepage(i64, i8*, i32, %struct.x86_exception*, %struct.kvm_vcpu.1*, %struct.read_write_emulator_ops*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
