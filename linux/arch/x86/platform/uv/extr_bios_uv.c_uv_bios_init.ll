; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_bios_uv.c_uv_bios_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_bios_uv.c_uv_bios_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@uv_systab = common dso_local global %struct.TYPE_4__* null, align 8
@uv_systab_phys = common dso_local global i64 0, align 8
@EFI_INVALID_TABLE_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"UV: UVsystab: missing\0A\00", align 1
@UV_SYSTAB_SIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"UV: UVsystab: bad signature!\0A\00", align 1
@UV_SYSTAB_VERSION_UV4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"UV: UVsystab: ioremap(%d) failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"UV: UVsystab: Revision:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_bios_init() #0 {
  %1 = alloca i32, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @uv_systab, align 8
  %2 = load i64, i64* @uv_systab_phys, align 8
  %3 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @uv_systab_phys, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = call i64 (...) @efi_runtime_disabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %5, %0
  %12 = call i32 @pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %55

13:                                               ; preds = %8
  %14 = load i64, i64* @uv_systab_phys, align 8
  %15 = call %struct.TYPE_4__* @ioremap(i64 %14, i32 4)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** @uv_systab, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_systab, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_systab, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UV_SYSTAB_SIG, align 4
  %23 = call i64 @strncmp(i32 %21, i32 %22, i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18, %13
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_systab, align 8
  %28 = call i32 @iounmap(%struct.TYPE_4__* %27)
  br label %55

29:                                               ; preds = %18
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_systab, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UV_SYSTAB_VERSION_UV4, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_systab, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %1, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_systab, align 8
  %40 = call i32 @iounmap(%struct.TYPE_4__* %39)
  %41 = load i64, i64* @uv_systab_phys, align 8
  %42 = load i32, i32* %1, align 4
  %43 = call %struct.TYPE_4__* @ioremap(i64 %41, i32 %42)
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** @uv_systab, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_systab, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %1, align 4
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %55

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %29
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uv_systab, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50, %46, %25, %11
  ret void
}

declare dso_local i64 @efi_runtime_disabled(...) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local %struct.TYPE_4__* @ioremap(i64, i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iounmap(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
