; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_wii.c_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_wii.c_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@_end = common dso_local global i64 0, align 8
@_dtb_start = common dso_local global i32 0, align 4
@EXI_CTRL = common dso_local global i32 0, align 4
@EXI_CTRL_ENABLE = common dso_local global i32 0, align 4
@ug_console_write = common dso_local global i32 0, align 4
@console_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@platform_fixups = common dso_local global i32 0, align 4
@platform_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @_end, align 8
  %9 = sub nsw i64 25165824, %8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* @_end, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @simple_alloc_init(i64 %10, i64 %11, i32 32, i32 64)
  %13 = load i32, i32* @_dtb_start, align 4
  %14 = call i32 @fdt_init(i32 %13)
  %15 = load i32, i32* @EXI_CTRL, align 4
  %16 = load i32, i32* @EXI_CTRL, align 4
  %17 = call i32 @in_be32(i32 %16)
  %18 = load i32, i32* @EXI_CTRL_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @out_be32(i32 %15, i32 %19)
  %21 = call i64 (...) @ug_probe()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ug_console_write, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @console_ops, i32 0, i32 0), align 4
  br label %25

25:                                               ; preds = %23, %3
  %26 = load i32, i32* @platform_fixups, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @platform_ops, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @simple_alloc_init(i64, i64, i32, i32) #1

declare dso_local i32 @fdt_init(i32) #1

declare dso_local i32 @out_be32(i32, i32) #1

declare dso_local i32 @in_be32(i32) #1

declare dso_local i64 @ug_probe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
