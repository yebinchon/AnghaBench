; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_setup_e820.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_setup_e820.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_params = type { i64, %struct.boot_e820_entry*, %struct.efi_info }
%struct.boot_e820_entry = type { i32, i64, i64 }
%struct.efi_info = type { i32, i32, i64, i64 }
%struct.setup_data = type { i64 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@E820_TYPE_RESERVED = common dso_local global i32 0, align 4
@E820_TYPE_UNUSABLE = common dso_local global i32 0, align 4
@E820_TYPE_ACPI = common dso_local global i32 0, align 4
@E820_TYPE_RAM = common dso_local global i32 0, align 4
@E820_TYPE_NVS = common dso_local global i32 0, align 4
@E820_TYPE_PMEM = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.boot_params*, %struct.setup_data*, i32)* @setup_e820 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_e820(%struct.boot_params* %0, %struct.setup_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.boot_params*, align 8
  %6 = alloca %struct.setup_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.boot_e820_entry*, align 8
  %9 = alloca %struct.efi_info*, align 8
  %10 = alloca %struct.boot_e820_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.boot_params* %0, %struct.boot_params** %5, align 8
  store %struct.setup_data* %1, %struct.setup_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.boot_params*, %struct.boot_params** %5, align 8
  %20 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %19, i32 0, i32 1
  %21 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %20, align 8
  store %struct.boot_e820_entry* %21, %struct.boot_e820_entry** %8, align 8
  %22 = load %struct.boot_params*, %struct.boot_params** %5, align 8
  %23 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %22, i32 0, i32 2
  store %struct.efi_info* %23, %struct.efi_info** %9, align 8
  store %struct.boot_e820_entry* null, %struct.boot_e820_entry** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.efi_info*, %struct.efi_info** %9, align 8
  %25 = getelementptr inbounds %struct.efi_info, %struct.efi_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.efi_info*, %struct.efi_info** %9, align 8
  %28 = getelementptr inbounds %struct.efi_info, %struct.efi_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %141, %3
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %144

35:                                               ; preds = %31
  store i32 0, i32* %15, align 4
  %36 = load %struct.efi_info*, %struct.efi_info** %9, align 8
  %37 = getelementptr inbounds %struct.efi_info, %struct.efi_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %16, align 8
  %40 = load %struct.efi_info*, %struct.efi_info** %9, align 8
  %41 = getelementptr inbounds %struct.efi_info, %struct.efi_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call %struct.TYPE_3__* @efi_early_memdesc_ptr(i64 %39, i32 %42, i32 %43)
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %14, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %60 [
    i32 131, label %48
    i32 130, label %48
    i32 129, label %48
    i32 135, label %48
    i32 134, label %48
    i32 133, label %48
    i32 128, label %50
    i32 141, label %52
    i32 137, label %54
    i32 136, label %54
    i32 140, label %54
    i32 139, label %54
    i32 138, label %54
    i32 142, label %56
    i32 132, label %58
  ]

48:                                               ; preds = %35, %35, %35, %35, %35, %35
  %49 = load i32, i32* @E820_TYPE_RESERVED, align 4
  store i32 %49, i32* %15, align 4
  br label %61

50:                                               ; preds = %35
  %51 = load i32, i32* @E820_TYPE_UNUSABLE, align 4
  store i32 %51, i32* %15, align 4
  br label %61

52:                                               ; preds = %35
  %53 = load i32, i32* @E820_TYPE_ACPI, align 4
  store i32 %53, i32* %15, align 4
  br label %61

54:                                               ; preds = %35, %35, %35, %35, %35
  %55 = load i32, i32* @E820_TYPE_RAM, align 4
  store i32 %55, i32* %15, align 4
  br label %61

56:                                               ; preds = %35
  %57 = load i32, i32* @E820_TYPE_NVS, align 4
  store i32 %57, i32* %15, align 4
  br label %61

58:                                               ; preds = %35
  %59 = load i32, i32* @E820_TYPE_PMEM, align 4
  store i32 %59, i32* %15, align 4
  br label %61

60:                                               ; preds = %35
  br label %141

61:                                               ; preds = %58, %56, %54, %52, %50, %48
  %62 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %10, align 8
  %63 = icmp ne %struct.boot_e820_entry* %62, null
  br i1 %63, label %64, label %92

64:                                               ; preds = %61
  %65 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %10, align 8
  %66 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %64
  %71 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %10, align 8
  %72 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %10, align 8
  %75 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %70
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %85, 12
  %87 = sext i32 %86 to i64
  %88 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %10, align 8
  %89 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %141

92:                                               ; preds = %70, %64, %61
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.boot_params*, %struct.boot_params** %5, align 8
  %95 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %94, i32 0, i32 1
  %96 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %95, align 8
  %97 = call i32 @ARRAY_SIZE(%struct.boot_e820_entry* %96)
  %98 = icmp eq i32 %93, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = add i64 %104, 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %17, align 4
  %107 = load %struct.setup_data*, %struct.setup_data** %6, align 8
  %108 = icmp ne %struct.setup_data* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %99
  %114 = load i32, i32* @EFI_BUFFER_TOO_SMALL, align 4
  store i32 %114, i32* %4, align 4
  br label %171

115:                                              ; preds = %109
  %116 = load %struct.setup_data*, %struct.setup_data** %6, align 8
  %117 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to %struct.boot_e820_entry*
  store %struct.boot_e820_entry* %119, %struct.boot_e820_entry** %8, align 8
  br label %120

120:                                              ; preds = %115, %92
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %8, align 8
  %125 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @PAGE_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %8, align 8
  %133 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %8, align 8
  %136 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %8, align 8
  %138 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %137, i32 1
  store %struct.boot_e820_entry* %138, %struct.boot_e820_entry** %8, align 8
  store %struct.boot_e820_entry* %137, %struct.boot_e820_entry** %10, align 8
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %120, %82, %60
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %31

144:                                              ; preds = %31
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.boot_params*, %struct.boot_params** %5, align 8
  %147 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %146, i32 0, i32 1
  %148 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %147, align 8
  %149 = call i32 @ARRAY_SIZE(%struct.boot_e820_entry* %148)
  %150 = icmp sgt i32 %145, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.boot_params*, %struct.boot_params** %5, align 8
  %154 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %153, i32 0, i32 1
  %155 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %154, align 8
  %156 = call i32 @ARRAY_SIZE(%struct.boot_e820_entry* %155)
  %157 = sub nsw i32 %152, %156
  store i32 %157, i32* %18, align 4
  %158 = load %struct.boot_params*, %struct.boot_params** %5, align 8
  %159 = load %struct.setup_data*, %struct.setup_data** %6, align 8
  %160 = load i32, i32* %18, align 4
  %161 = call i32 @add_e820ext(%struct.boot_params* %158, %struct.setup_data* %159, i32 %160)
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sub nsw i32 %163, %162
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %151, %144
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct.boot_params*, %struct.boot_params** %5, align 8
  %169 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %165, %113
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.TYPE_3__* @efi_early_memdesc_ptr(i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.boot_e820_entry*) #1

declare dso_local i32 @add_e820ext(%struct.boot_params*, %struct.setup_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
