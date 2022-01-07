; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkdlinkfw.c_print_auh_header.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkdlinkfw.c_print_auh_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auh_header = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [476 x i8] c"\09rom_id: %s\0A\09derange: 0x%04X\0A\09image_checksum: 0x%04X\0A\09space1: 0x%08X\0A\09space2: 0x%08X\0A\09space3: 0x%04X\0A\09lpvs: 0x%02X\0A\09mbz: 0x%02X\0A\09time_stamp: 0x%08X\0A\09erase_start: 0x%08X\0A\09erase_length: 0x%08X\0A\09data_offset: 0x%08X\0A\09data_length: 0x%08X\0A\09space4: 0x%08X\0A\09space5: 0x%08X\0A\09space6: 0x%08X\0A\09space7: 0x%08X\0A\09header_id: 0x%04X\0A\09header_version: 0x%02X\0A\09space8: 0x%04X\0A\09section_id: 0x%02X\0A\09image_info_type: 0x%02X\0A\09image_info_offset 0x%08X\0A\09family_member: 0x%04X\0A\09header_checksum: 0x%04X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_auh_header(%struct.auh_header* %0) #0 {
  %2 = alloca %struct.auh_header*, align 8
  store %struct.auh_header* %0, %struct.auh_header** %2, align 8
  %3 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %4 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %7 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %10 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %13 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %16 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %19 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %22 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %25 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %28 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %31 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %34 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %37 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %40 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %43 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %46 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %49 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %52 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %51, i32 0, i32 16
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %55 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %54, i32 0, i32 17
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %58 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %57, i32 0, i32 18
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %61 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %60, i32 0, i32 19
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %64 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %63, i32 0, i32 20
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %67 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %66, i32 0, i32 21
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %70 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %69, i32 0, i32 22
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %73 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %72, i32 0, i32 23
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.auh_header*, %struct.auh_header** %2, align 8
  %76 = getelementptr inbounds %struct.auh_header, %struct.auh_header* %75, i32 0, i32 24
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @printf(i8* getelementptr inbounds ([476 x i8], [476 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
