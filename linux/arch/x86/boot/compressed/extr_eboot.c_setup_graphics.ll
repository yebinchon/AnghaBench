; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_setup_graphics.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_setup_graphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_params = type { %struct.screen_info }
%struct.screen_info = type { i32 }

@EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID = common dso_local global i32 0, align 4
@EFI_UGA_PROTOCOL_GUID = common dso_local global i32 0, align 4
@locate_handle = common dso_local global i32 0, align 4
@EFI_LOCATE_BY_PROTOCOL = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_graphics(%struct.boot_params* %0) #0 {
  %2 = alloca %struct.boot_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.screen_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store %struct.boot_params* %0, %struct.boot_params** %2, align 8
  %10 = load i32, i32* @EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @EFI_UGA_PROTOCOL_GUID, align 4
  store i32 %11, i32* %5, align 4
  store i8** null, i8*** %8, align 8
  store i8** null, i8*** %9, align 8
  %12 = load %struct.boot_params*, %struct.boot_params** %2, align 8
  %13 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %12, i32 0, i32 0
  store %struct.screen_info* %13, %struct.screen_info** %4, align 8
  %14 = load %struct.screen_info*, %struct.screen_info** %4, align 8
  %15 = call i32 @memset(%struct.screen_info* %14, i32 0, i32 4)
  store i64 0, i64* %7, align 8
  %16 = load i32, i32* @locate_handle, align 4
  %17 = load i32, i32* @EFI_LOCATE_BY_PROTOCOL, align 4
  %18 = load i8**, i8*** %8, align 8
  %19 = call i64 @efi_call_early(i32 %16, i32 %17, i32* %3, i32* null, i64* %7, i8** %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.screen_info*, %struct.screen_info** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @efi_setup_gop(i32* null, %struct.screen_info* %24, i32* %3, i64 %25)
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @EFI_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  store i64 0, i64* %7, align 8
  %32 = load i32, i32* @locate_handle, align 4
  %33 = load i32, i32* @EFI_LOCATE_BY_PROTOCOL, align 4
  %34 = load i8**, i8*** %9, align 8
  %35 = call i64 @efi_call_early(i32 %32, i32 %33, i32* %5, i32* null, i64* %7, i8** %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.screen_info*, %struct.screen_info** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @setup_uga(%struct.screen_info* %40, i32* %5, i64 %41)
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43, %27
  ret void
}

declare dso_local i32 @memset(%struct.screen_info*, i32, i32) #1

declare dso_local i64 @efi_call_early(i32, i32, i32*, i32*, i64*, i8**) #1

declare dso_local i64 @efi_setup_gop(i32*, %struct.screen_info*, i32*, i64) #1

declare dso_local i32 @setup_uga(%struct.screen_info*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
