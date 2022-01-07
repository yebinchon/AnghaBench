; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_pgtable_64.c_find_trampoline_placement.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_pgtable_64.c_find_trampoline_placement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.boot_e820_entry*, %struct.TYPE_3__ }
%struct.boot_e820_entry = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@boot_params = common dso_local global %struct.TYPE_4__* null, align 8
@EFI32_LOADER_SIGNATURE = common dso_local global i32 0, align 4
@EFI64_LOADER_SIGNATURE = common dso_local global i32 0, align 4
@BIOS_START_MIN = common dso_local global i64 0, align 8
@BIOS_START_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@E820_TYPE_RAM = common dso_local global i64 0, align 8
@TRAMPOLINE_32BIT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @find_trampoline_placement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_trampoline_placement() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.boot_e820_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @boot_params, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @EFI32_LOADER_SIGNATURE, align 4
  %13 = call i64 @strncmp(i8* %11, i32 %12, i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %0
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @EFI64_LOADER_SIGNATURE, align 4
  %18 = call i64 @strncmp(i8* %16, i32 %17, i32 4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i16, i16* inttoptr (i64 1038 to i16*), align 2
  %22 = zext i16 %21 to i32
  %23 = shl i32 %22, 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %2, align 8
  %25 = load i16, i16* inttoptr (i64 1043 to i16*), align 2
  %26 = zext i16 %25 to i32
  %27 = shl i32 %26, 10
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %1, align 8
  br label %29

29:                                               ; preds = %20, %15, %0
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @BIOS_START_MIN, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @BIOS_START_MAX, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = load i64, i64* @BIOS_START_MAX, align 8
  store i64 %38, i64* %1, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @BIOS_START_MIN, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %2, align 8
  %45 = load i64, i64* %1, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %2, align 8
  store i64 %48, i64* %1, align 8
  br label %49

49:                                               ; preds = %47, %43, %39
  %50 = load i64, i64* %1, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i64 @round_down(i64 %50, i32 %51)
  store i64 %52, i64* %1, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @boot_params, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %120, %49
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %123

60:                                               ; preds = %57
  %61 = load i64, i64* %1, align 8
  store i64 %61, i64* %6, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @boot_params, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %64, i64 %66
  store %struct.boot_e820_entry* %67, %struct.boot_e820_entry** %3, align 8
  %68 = load i64, i64* %1, align 8
  %69 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %3, align 8
  %70 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ule i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %120

74:                                               ; preds = %60
  %75 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %3, align 8
  %76 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @E820_TYPE_RAM, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %120

81:                                               ; preds = %74
  %82 = load i64, i64* %1, align 8
  %83 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %3, align 8
  %84 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %3, align 8
  %87 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %85, %88
  %90 = icmp ugt i64 %82, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %3, align 8
  %93 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %3, align 8
  %96 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %91, %81
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = call i64 @round_down(i64 %100, i32 %101)
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @TRAMPOLINE_32BIT_SIZE, align 8
  %105 = sub i64 %103, %104
  %106 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %3, align 8
  %107 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %120

111:                                              ; preds = %99
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @TRAMPOLINE_32BIT_SIZE, align 8
  %114 = sub i64 %112, %113
  %115 = load i64, i64* %1, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %123

118:                                              ; preds = %111
  %119 = load i64, i64* %6, align 8
  store i64 %119, i64* %1, align 8
  br label %123

120:                                              ; preds = %110, %80, %73
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %5, align 4
  br label %57

123:                                              ; preds = %118, %117, %57
  %124 = load i64, i64* %1, align 8
  %125 = load i64, i64* @TRAMPOLINE_32BIT_SIZE, align 8
  %126 = sub i64 %124, %125
  ret i64 %126
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i64 @round_down(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
