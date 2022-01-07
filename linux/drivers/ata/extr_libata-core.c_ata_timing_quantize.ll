; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_timing_quantize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_timing_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_timing = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_timing*, %struct.ata_timing*, i32, i32)* @ata_timing_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_timing_quantize(%struct.ata_timing* %0, %struct.ata_timing* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_timing*, align 8
  %6 = alloca %struct.ata_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_timing* %0, %struct.ata_timing** %5, align 8
  store %struct.ata_timing* %1, %struct.ata_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %10 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @EZ(i8* %11, i32 %12)
  %14 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %15 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 8
  store i8* %13, i8** %15, align 8
  %16 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %17 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %16, i32 0, i32 7
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @EZ(i8* %18, i32 %19)
  %21 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %22 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %24 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %23, i32 0, i32 6
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @EZ(i8* %25, i32 %26)
  %28 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %29 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %31 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @EZ(i8* %32, i32 %33)
  %35 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %36 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %38 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @EZ(i8* %39, i32 %40)
  %42 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %43 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %45 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @EZ(i8* %46, i32 %47)
  %49 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %50 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %52 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @EZ(i8* %53, i32 %54)
  %56 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %57 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %59 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i8* @EZ(i8* %60, i32 %61)
  %63 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %64 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ata_timing*, %struct.ata_timing** %5, align 8
  %66 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i8* @EZ(i8* %67, i32 %68)
  %70 = load %struct.ata_timing*, %struct.ata_timing** %6, align 8
  %71 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  ret void
}

declare dso_local i8* @EZ(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
