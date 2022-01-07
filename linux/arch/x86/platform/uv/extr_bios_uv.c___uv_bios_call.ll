; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_bios_uv.c___uv_bios_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_bios_uv.c___uv_bios_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_systab = type { i32 }

@uv_systab = common dso_local global %struct.uv_systab* null, align 8
@BIOS_STATUS_UNIMPLEMENTED = common dso_local global i32 0, align 4
@EFI_OLD_MEMMAP = common dso_local global i32 0, align 4
@function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @__uv_bios_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uv_bios_call(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.uv_systab*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.uv_systab*, %struct.uv_systab** @uv_systab, align 8
  store %struct.uv_systab* %16, %struct.uv_systab** %14, align 8
  %17 = load %struct.uv_systab*, %struct.uv_systab** %14, align 8
  %18 = icmp ne %struct.uv_systab* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = load %struct.uv_systab*, %struct.uv_systab** %14, align 8
  %21 = getelementptr inbounds %struct.uv_systab, %struct.uv_systab* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %6
  %25 = load i32, i32* @BIOS_STATUS_UNIMPLEMENTED, align 4
  store i32 %25, i32* %7, align 4
  br label %56

26:                                               ; preds = %19
  %27 = load i32, i32* @EFI_OLD_MEMMAP, align 4
  %28 = call i32 @efi_enabled(i32 %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.uv_systab*, %struct.uv_systab** %14, align 8
  %33 = getelementptr inbounds %struct.uv_systab, %struct.uv_systab* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @__va(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @efi_call(i8* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %15, align 4
  br label %54

44:                                               ; preds = %26
  %45 = load %struct.uv_systab*, %struct.uv_systab** %14, align 8
  %46 = load i32, i32* @function, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @efi_call_virt_pointer(%struct.uv_systab* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %44, %31
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %24
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @efi_enabled(i32) #1

declare dso_local i32 @efi_call(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @efi_call_virt_pointer(%struct.uv_systab*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
