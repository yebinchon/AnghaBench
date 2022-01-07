; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_read_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_read_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }
%struct.segmented_address = type { i32 }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32, i64*, i64*, i32)* @read_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_descriptor(%struct.x86_emulate_ctxt* %0, i32 %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.segmented_address, align 4
  %8 = alloca %struct.x86_emulate_ctxt*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %7, i32 0, i32 0
  store i32 %1, i32* %13, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 3, i32* %11, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i64*, i64** %10, align 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @segmented_read_std(%struct.x86_emulate_ctxt* %19, i32 %22, i64* %20, i32 2)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %40

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %30, align 4
  %33 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %8, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @segmented_read_std(%struct.x86_emulate_ctxt* %33, i32 %37, i64* %34, i32 %35)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %29, %27
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @segmented_read_std(%struct.x86_emulate_ctxt*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
