; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_setup_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_setup_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_dump = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Kernel metadata addr: %llx\0A\00", align 1
@opal_fdm = common dso_local global i32 0, align 4
@OPAL_MPIPL_TAG_KERNEL = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to set kernel metadata tag!\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@OPAL_MPIPL_TAG_BOOT_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to set boot memory tag!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_dump*)* @opal_fadump_setup_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_fadump_setup_metadata(%struct.fw_dump* %0) #0 {
  %2 = alloca %struct.fw_dump*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.fw_dump* %0, %struct.fw_dump** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %6 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %9 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = call i64 (...) @opal_fadump_get_metadata_size()
  %13 = sub nsw i64 %11, %12
  %14 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %15 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %17 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %21 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @__va(i64 %22)
  store i32 %23, i32* @opal_fdm, align 4
  %24 = load i32, i32* @opal_fdm, align 4
  %25 = call i32 @opal_fadump_init_metadata(i32 %24)
  %26 = load i32, i32* @OPAL_MPIPL_TAG_KERNEL, align 4
  %27 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %28 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @opal_mpipl_register_tag(i32 %26, i64 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @OPAL_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* @OPAL_MPIPL_TAG_BOOT_MEM, align 4
  %40 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %41 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @opal_mpipl_register_tag(i32 %39, i64 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @OPAL_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %38
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @opal_fadump_get_metadata_size(...) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @__va(i64) #1

declare dso_local i32 @opal_fadump_init_metadata(i32) #1

declare dso_local i64 @opal_mpipl_register_tag(i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
