; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_timing_cycle2mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_timing_cycle2mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_xfer_ent = type { i32, i32 }
%struct.ata_timing = type { i32, i16, i16 }

@ata_xfer_tbl = common dso_local global %struct.ata_xfer_ent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_timing_cycle2mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_xfer_ent*, align 8
  %9 = alloca %struct.ata_timing*, align 8
  %10 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 255, i32* %6, align 4
  store i32 255, i32* %7, align 4
  %11 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** @ata_xfer_tbl, align 8
  store %struct.ata_xfer_ent* %11, %struct.ata_xfer_ent** %8, align 8
  br label %12

12:                                               ; preds = %28, %2
  %13 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %8, align 8
  %14 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp uge i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %8, align 8
  %19 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %8, align 8
  %25 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %8, align 8
  %30 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %29, i32 1
  store %struct.ata_xfer_ent* %30, %struct.ata_xfer_ent** %8, align 8
  br label %12

31:                                               ; preds = %12
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.ata_timing* @ata_timing_find_mode(i32 %32)
  store %struct.ata_timing* %33, %struct.ata_timing** %9, align 8
  br label %34

34:                                               ; preds = %67, %31
  %35 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %36 = icmp ne %struct.ata_timing* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %39 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ata_xfer_mode2shift(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %41, %42
  br label %44

44:                                               ; preds = %37, %34
  %45 = phi i1 [ false, %34 ], [ %43, %37 ]
  br i1 %45, label %46, label %70

46:                                               ; preds = %44
  %47 = load i32, i32* %4, align 4
  switch i32 %47, label %56 [
    i32 129, label %48
    i32 130, label %48
    i32 128, label %52
  ]

48:                                               ; preds = %46, %46
  %49 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %50 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %49, i32 0, i32 1
  %51 = load i16, i16* %50, align 4
  store i16 %51, i16* %10, align 2
  br label %57

52:                                               ; preds = %46
  %53 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %54 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %53, i32 0, i32 2
  %55 = load i16, i16* %54, align 2
  store i16 %55, i16* %10, align 2
  br label %57

56:                                               ; preds = %46
  store i32 255, i32* %3, align 4
  br label %72

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %5, align 4
  %59 = load i16, i16* %10, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %70

63:                                               ; preds = %57
  %64 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %65 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63
  %68 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %69 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %68, i32 1
  store %struct.ata_timing* %69, %struct.ata_timing** %9, align 8
  br label %34

70:                                               ; preds = %62, %44
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %56
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.ata_timing* @ata_timing_find_mode(i32) #1

declare dso_local i32 @ata_xfer_mode2shift(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
