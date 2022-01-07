; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_machine_kexec.c_machine_kexec_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_machine_kexec.c_machine_kexec_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32, %struct.TYPE_2__, %struct.kexec_segment*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.kexec_segment = type { i64, i64, i32 }

@KEXEC_ARM_ZIMAGE_OFFSET = common dso_local global i64 0, align 8
@KEXEC_ARM_ATAGS_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OF_DT_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_kexec_prepare(%struct.kimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca %struct.kexec_segment*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  %8 = load %struct.kimage*, %struct.kimage** %3, align 8
  %9 = getelementptr inbounds %struct.kimage, %struct.kimage* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KEXEC_ARM_ZIMAGE_OFFSET, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load i64, i64* @KEXEC_ARM_ATAGS_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.kimage*, %struct.kimage** %3, align 8
  %16 = getelementptr inbounds %struct.kimage, %struct.kimage* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = call i32 (...) @num_possible_cpus()
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = call i64 (...) @platform_can_secondary_boot()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = call i32 (...) @platform_can_cpu_hotplug()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %83

29:                                               ; preds = %23, %20, %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %79, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.kimage*, %struct.kimage** %3, align 8
  %33 = getelementptr inbounds %struct.kimage, %struct.kimage* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %30
  %37 = load %struct.kimage*, %struct.kimage** %3, align 8
  %38 = getelementptr inbounds %struct.kimage, %struct.kimage* %37, i32 0, i32 2
  %39 = load %struct.kexec_segment*, %struct.kexec_segment** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %39, i64 %41
  store %struct.kexec_segment* %42, %struct.kexec_segment** %4, align 8
  %43 = load %struct.kexec_segment*, %struct.kexec_segment** %4, align 8
  %44 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @idmap_to_phys(i64 %45)
  %47 = load %struct.kexec_segment*, %struct.kexec_segment** %4, align 8
  %48 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memblock_is_region_memory(i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %36
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %83

55:                                               ; preds = %36
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.kexec_segment*, %struct.kexec_segment** %4, align 8
  %58 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i64*
  %61 = call i32 @get_user(i64 %56, i64* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %83

66:                                               ; preds = %55
  %67 = load i64, i64* %5, align 8
  %68 = load i32, i32* @OF_DT_HEADER, align 4
  %69 = call i64 @cpu_to_be32(i32 %68)
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.kexec_segment*, %struct.kexec_segment** %4, align 8
  %73 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.kimage*, %struct.kimage** %3, align 8
  %76 = getelementptr inbounds %struct.kimage, %struct.kimage* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %71, %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %30

82:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %64, %52, %26
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i64 @platform_can_secondary_boot(...) #1

declare dso_local i32 @platform_can_cpu_hotplug(...) #1

declare dso_local i32 @memblock_is_region_memory(i32, i32) #1

declare dso_local i32 @idmap_to_phys(i64) #1

declare dso_local i32 @get_user(i64, i64*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
