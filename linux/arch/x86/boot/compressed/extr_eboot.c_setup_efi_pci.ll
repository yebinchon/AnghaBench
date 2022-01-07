; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_setup_efi_pci.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_setup_efi_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.setup_data = type { i64 }
%struct.pci_setup_rom = type { i32 }

@EFI_PCI_IO_PROTOCOL_GUID = common dso_local global i32 0, align 4
@locate_handle = common dso_local global i32 0, align 4
@EFI_LOCATE_BY_PROTOCOL = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@allocate_pool = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@sys_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for 'pci_handle'\0A\00", align 1
@handle_protocol = common dso_local global i32 0, align 4
@free_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.boot_params*)* @setup_efi_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_efi_pci(%struct.boot_params* %0) #0 {
  %2 = alloca %struct.boot_params*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.setup_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pci_setup_rom*, align 8
  store %struct.boot_params* %0, %struct.boot_params** %2, align 8
  store i8** null, i8*** %4, align 8
  %12 = load i32, i32* @EFI_PCI_IO_PROTOCOL_GUID, align 4
  store i32 %12, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %13 = load i32, i32* @locate_handle, align 4
  %14 = load i32, i32* @EFI_LOCATE_BY_PROTOCOL, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8**
  %17 = load i8**, i8*** %4, align 8
  %18 = call i64 (i32, i8**, ...) @efi_call_early(i32 %13, i8** %16, i32* %5, i8* null, i64* %6, i8** %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load i32, i32* @allocate_pool, align 4
  %24 = load i32, i32* @EFI_LOADER_DATA, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8**
  %27 = load i64, i64* %6, align 8
  %28 = bitcast i8*** %4 to i8**
  %29 = call i64 (i32, i8**, ...) @efi_call_early(i32 %23, i8** %26, i64 %27, i8** %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @EFI_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @sys_table, align 4
  %35 = call i32 @efi_printk(i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %144

36:                                               ; preds = %22
  %37 = load i32, i32* @locate_handle, align 4
  %38 = load i32, i32* @EFI_LOCATE_BY_PROTOCOL, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8**
  %41 = load i8**, i8*** %4, align 8
  %42 = call i64 (i32, i8**, ...) @efi_call_early(i32 %37, i8** %40, i32* %5, i8* null, i64* %6, i8** %41)
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %36, %1
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @EFI_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %140

48:                                               ; preds = %43
  %49 = load %struct.boot_params*, %struct.boot_params** %2, align 8
  %50 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.setup_data*
  store %struct.setup_data* %53, %struct.setup_data** %8, align 8
  br label %54

54:                                               ; preds = %64, %48
  %55 = load %struct.setup_data*, %struct.setup_data** %8, align 8
  %56 = icmp ne %struct.setup_data* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.setup_data*, %struct.setup_data** %8, align 8
  %59 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = load %struct.setup_data*, %struct.setup_data** %8, align 8
  %66 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.setup_data*
  store %struct.setup_data* %68, %struct.setup_data** %8, align 8
  br label %54

69:                                               ; preds = %62
  %70 = load i64, i64* %6, align 8
  %71 = call i64 (...) @efi_is_64bit()
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i64 4, i64 4
  %75 = udiv i64 %70, %74
  store i64 %75, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %136, %69
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %7, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %139

81:                                               ; preds = %76
  store i32* null, i32** %10, align 8
  %82 = load i32, i32* @handle_protocol, align 4
  %83 = call i64 (...) @efi_is_64bit()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i8**, i8*** %4, align 8
  %87 = bitcast i8** %86 to i32*
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  br label %99

92:                                               ; preds = %81
  %93 = load i8**, i8*** %4, align 8
  %94 = bitcast i8** %93 to i32*
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  br label %99

99:                                               ; preds = %92, %85
  %100 = phi i32 [ %91, %85 ], [ %98, %92 ]
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8**
  %103 = bitcast i32** %10 to i8**
  %104 = call i64 (i32, i8**, ...) @efi_call_early(i32 %82, i8** %102, i32* %5, i8** %103)
  store i64 %104, i64* %3, align 8
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* @EFI_SUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = load i32*, i32** %10, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108, %99
  br label %136

112:                                              ; preds = %108
  %113 = load i32*, i32** %10, align 8
  %114 = call i64 @preserve_pci_rom_image(i32* %113, %struct.pci_setup_rom** %11)
  store i64 %114, i64* %3, align 8
  %115 = load i64, i64* %3, align 8
  %116 = load i64, i64* @EFI_SUCCESS, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %136

119:                                              ; preds = %112
  %120 = load %struct.setup_data*, %struct.setup_data** %8, align 8
  %121 = icmp ne %struct.setup_data* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.pci_setup_rom*, %struct.pci_setup_rom** %11, align 8
  %124 = ptrtoint %struct.pci_setup_rom* %123 to i64
  %125 = load %struct.setup_data*, %struct.setup_data** %8, align 8
  %126 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %133

127:                                              ; preds = %119
  %128 = load %struct.pci_setup_rom*, %struct.pci_setup_rom** %11, align 8
  %129 = ptrtoint %struct.pci_setup_rom* %128 to i64
  %130 = load %struct.boot_params*, %struct.boot_params** %2, align 8
  %131 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %127, %122
  %134 = load %struct.pci_setup_rom*, %struct.pci_setup_rom** %11, align 8
  %135 = bitcast %struct.pci_setup_rom* %134 to %struct.setup_data*
  store %struct.setup_data* %135, %struct.setup_data** %8, align 8
  br label %136

136:                                              ; preds = %133, %118, %111
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %76

139:                                              ; preds = %76
  br label %140

140:                                              ; preds = %139, %47
  %141 = load i32, i32* @free_pool, align 4
  %142 = load i8**, i8*** %4, align 8
  %143 = call i64 (i32, i8**, ...) @efi_call_early(i32 %141, i8** %142)
  br label %144

144:                                              ; preds = %140, %33
  ret void
}

declare dso_local i64 @efi_call_early(i32, i8**, ...) #1

declare dso_local i32 @efi_printk(i32, i8*) #1

declare dso_local i64 @efi_is_64bit(...) #1

declare dso_local i64 @preserve_pci_rom_image(i32*, %struct.pci_setup_rom**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
