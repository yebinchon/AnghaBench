; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_tf_from_fis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_tf_from_fis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_tf_from_fis(i32* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %9 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %8, i32 0, i32 10
  store i32 %7, i32* %9, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %14 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %19 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %24 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %34 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %39 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 9
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %44 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 10
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %49 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 12
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %54 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 13
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %59 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
