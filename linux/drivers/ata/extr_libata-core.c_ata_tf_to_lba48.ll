; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_tf_to_lba48.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_tf_to_lba48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_tf_to_lba48(%struct.ata_taskfile* %0) #0 {
  %2 = alloca %struct.ata_taskfile*, align 8
  %3 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ata_taskfile*, %struct.ata_taskfile** %2, align 8
  %5 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 255
  %8 = shl i32 %7, 40
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ata_taskfile*, %struct.ata_taskfile** %2, align 8
  %12 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  %15 = shl i32 %14, 32
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ata_taskfile*, %struct.ata_taskfile** %2, align 8
  %19 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  %22 = shl i32 %21, 24
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.ata_taskfile*, %struct.ata_taskfile** %2, align 8
  %26 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 16
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ata_taskfile*, %struct.ata_taskfile** %2, align 8
  %33 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.ata_taskfile*, %struct.ata_taskfile** %2, align 8
  %40 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
