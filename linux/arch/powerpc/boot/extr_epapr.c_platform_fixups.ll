; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_epapr.c_platform_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_epapr.c_platform_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@epapr_magic = common dso_local global i64 0, align 8
@EPAPR_EMAGIC = common dso_local global i64 0, align 8
@EPAPR_SMAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"r6 contained 0x%08x instead of ePAPR magic number\0A\00", align 1
@ima_size = common dso_local global i64 0, align 8
@_end = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"WARNING: Image loaded outside IMA! (_end=%p, ima_size=0x%lx)\0A\00", align 1
@fdt_addr = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [78 x i8] c"WARNING: Device tree address is outside IMA!(fdt_addr=0x%lx, ima_size=0x%lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"WARNING: Device tree extends outside IMA! (fdt_addr=0x%lx, size=0x%x, ima_size=0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @platform_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_fixups() #0 {
  %1 = load i64, i64* @epapr_magic, align 8
  %2 = load i64, i64* @EPAPR_EMAGIC, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i64, i64* @epapr_magic, align 8
  %6 = load i64, i64* @EPAPR_SMAGIC, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i64, i64* @epapr_magic, align 8
  %10 = call i32 @fatal(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %11

11:                                               ; preds = %8, %4, %0
  %12 = load i64, i64* @ima_size, align 8
  %13 = load i64, i64* @_end, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* @_end, align 8
  %17 = load i64, i64* @ima_size, align 8
  %18 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i64, i64* @ima_size, align 8
  %21 = load i64, i64* @fdt_addr, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* @fdt_addr, align 8
  %25 = load i64, i64* @ima_size, align 8
  %26 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %24, i64 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* @ima_size, align 8
  %29 = load i64, i64* @fdt_addr, align 8
  %30 = load i64, i64* @fdt_addr, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i64 @fdt_totalsize(i8* %31)
  %33 = add i64 %29, %32
  %34 = icmp ult i64 %28, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i64, i64* @fdt_addr, align 8
  %37 = load i64, i64* @fdt_addr, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i64 @fdt_totalsize(i8* %38)
  %40 = load i64, i64* @ima_size, align 8
  %41 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i64 %36, i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %35, %27
  ret void
}

declare dso_local i32 @fatal(i8*, i64) #1

declare dso_local i32 @printf(i8*, i64, i64, ...) #1

declare dso_local i64 @fdt_totalsize(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
