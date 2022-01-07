; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c__mpic_ipi_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c__mpic_ipi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { i32, i32, i32 }

@GREG_IPI_VECTOR_PRI_0 = common dso_local global i32 0, align 4
@GREG_IPI_STRIDE = common dso_local global i32 0, align 4
@MPIC_BROKEN_IPI = common dso_local global i32 0, align 4
@mpic_access_mmio_le = common dso_local global i32 0, align 4
@mpic_access_mmio_be = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpic*, i32)* @_mpic_ipi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mpic_ipi_read(%struct.mpic* %0, i32 %1) #0 {
  %3 = alloca %struct.mpic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mpic*, %struct.mpic** %3, align 8
  %8 = getelementptr inbounds %struct.mpic, %struct.mpic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @GREG_IPI_VECTOR_PRI_0, align 4
  %11 = call i32 @MPIC_INFO(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GREG_IPI_STRIDE, align 4
  %14 = call i32 @MPIC_INFO(i32 %13)
  %15 = mul i32 %12, %14
  %16 = add i32 %11, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mpic*, %struct.mpic** %3, align 8
  %18 = getelementptr inbounds %struct.mpic, %struct.mpic* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MPIC_BROKEN_IPI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @mpic_access_mmio_le, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @mpic_access_mmio_be, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %23, %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mpic*, %struct.mpic** %3, align 8
  %32 = getelementptr inbounds %struct.mpic, %struct.mpic* %31, i32 0, i32 2
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @_mpic_read(i32 %30, i32* %32, i32 %33)
  ret i32 %34
}

declare dso_local i32 @MPIC_INFO(i32) #1

declare dso_local i32 @_mpic_read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
