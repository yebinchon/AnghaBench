; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-quark/extr_imr.c_imr_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-quark/extr_imr.c_imr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imr_device = type { i32 }
%struct.imr_regs = type { i32, i32, i32, i32 }

@IMR_NUM_REGS = common dso_local global i32 0, align 4
@QRK_MBI_UNIT_MM = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imr_device*, i32, %struct.imr_regs*)* @imr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imr_read(%struct.imr_device* %0, i32 %1, %struct.imr_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imr_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.imr_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.imr_device* %0, %struct.imr_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.imr_regs* %2, %struct.imr_regs** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IMR_NUM_REGS, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load %struct.imr_device*, %struct.imr_device** %5, align 8
  %14 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @QRK_MBI_UNIT_MM, align 4
  %18 = load i32, i32* @MBI_REG_READ, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.imr_regs*, %struct.imr_regs** %7, align 8
  %22 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %21, i32 0, i32 3
  %23 = call i32 @iosf_mbi_read(i32 %17, i32 %18, i32 %19, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %3
  %29 = load i32, i32* @QRK_MBI_UNIT_MM, align 4
  %30 = load i32, i32* @MBI_REG_READ, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = load %struct.imr_regs*, %struct.imr_regs** %7, align 8
  %34 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %33, i32 0, i32 2
  %35 = call i32 @iosf_mbi_read(i32 %29, i32 %30, i32 %31, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %60

40:                                               ; preds = %28
  %41 = load i32, i32* @QRK_MBI_UNIT_MM, align 4
  %42 = load i32, i32* @MBI_REG_READ, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load %struct.imr_regs*, %struct.imr_regs** %7, align 8
  %46 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %45, i32 0, i32 1
  %47 = call i32 @iosf_mbi_read(i32 %41, i32 %42, i32 %43, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %60

52:                                               ; preds = %40
  %53 = load i32, i32* @QRK_MBI_UNIT_MM, align 4
  %54 = load i32, i32* @MBI_REG_READ, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.imr_regs*, %struct.imr_regs** %7, align 8
  %58 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %57, i32 0, i32 0
  %59 = call i32 @iosf_mbi_read(i32 %53, i32 %54, i32 %55, i32* %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %50, %38, %26
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
