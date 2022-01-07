; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_mknspimg_print_hdr.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_mknspimg_print_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsp_img_hdr = type { %struct.TYPE_4__, %struct.nsp_img_hdr_sections, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nsp_img_hdr_sections = type { i32, i32, i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nsp_img_hdr_chksum = type { i32 }
%struct.nsp_img_hdr_section_info = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"****************** NSP Image Summary ******************\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Magic:             0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Image Header Size: 0x%x bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Total Image Size:  %d bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Product ID:        0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Release ID:        0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Version ID:        0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Offset Info:       0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Offset Sect info:  0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Offset Sections:   0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Header Checksum:   0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"+++ Section Information +++\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"# of sections:     %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"+++++ Section %d +++++\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Total size:  %u bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Raw Size:    %u bytes\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Offset:      0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Type:        0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Name:        %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"*******************************************************\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mknspimg_print_hdr(%struct.nsp_img_hdr* %0) #0 {
  %2 = alloca %struct.nsp_img_hdr*, align 8
  %3 = alloca %struct.nsp_img_hdr_chksum*, align 8
  %4 = alloca %struct.nsp_img_hdr_section_info*, align 8
  %5 = alloca %struct.nsp_img_hdr_sections*, align 8
  %6 = alloca i32, align 4
  store %struct.nsp_img_hdr* %0, %struct.nsp_img_hdr** %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %9 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %14 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %19 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %24 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %29 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %34 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  %38 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %39 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %44 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %46)
  %48 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %49 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %51)
  %53 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %54 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %55 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %53, i64 %58
  %60 = bitcast %struct.nsp_img_hdr* %59 to %struct.nsp_img_hdr_chksum*
  store %struct.nsp_img_hdr_chksum* %60, %struct.nsp_img_hdr_chksum** %3, align 8
  %61 = load %struct.nsp_img_hdr_chksum*, %struct.nsp_img_hdr_chksum** %3, align 8
  %62 = getelementptr inbounds %struct.nsp_img_hdr_chksum, %struct.nsp_img_hdr_chksum* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %66 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %67 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %69)
  %71 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %72 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %71, i32 0, i32 1
  store %struct.nsp_img_hdr_sections* %72, %struct.nsp_img_hdr_sections** %5, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %103, %1
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.nsp_img_hdr*, %struct.nsp_img_hdr** %2, align 8
  %76 = getelementptr inbounds %struct.nsp_img_hdr, %struct.nsp_img_hdr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %81)
  %83 = load %struct.nsp_img_hdr_sections*, %struct.nsp_img_hdr_sections** %5, align 8
  %84 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %85)
  %87 = load %struct.nsp_img_hdr_sections*, %struct.nsp_img_hdr_sections** %5, align 8
  %88 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %89)
  %91 = load %struct.nsp_img_hdr_sections*, %struct.nsp_img_hdr_sections** %5, align 8
  %92 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %93)
  %95 = load %struct.nsp_img_hdr_sections*, %struct.nsp_img_hdr_sections** %5, align 8
  %96 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %97)
  %99 = load %struct.nsp_img_hdr_sections*, %struct.nsp_img_hdr_sections** %5, align 8
  %100 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %80
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = load %struct.nsp_img_hdr_sections*, %struct.nsp_img_hdr_sections** %5, align 8
  %107 = getelementptr inbounds %struct.nsp_img_hdr_sections, %struct.nsp_img_hdr_sections* %106, i32 1
  store %struct.nsp_img_hdr_sections* %107, %struct.nsp_img_hdr_sections** %5, align 8
  br label %73

108:                                              ; preds = %73
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
