; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mrw_set_lba_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mrw_set_lba_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i32 }
%struct.packet_command = type { i8*, i32 }
%struct.mode_page_header = type { i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: mrw address space %s selected\0A\00", align 1
@mrw_address_space = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @cdrom_mrw_set_lba_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_mrw_set_lba_space(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.packet_command, align 8
  %7 = alloca %struct.mode_page_header*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %13 = load i32, i32* @CGC_DATA_READ, align 4
  %14 = call i32 @init_cdrom_command(%struct.packet_command* %6, i8* %12, i32 16, i32 %13)
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %16 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  store i32 16, i32* %17, align 8
  %18 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %19 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %20 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cdrom_mode_sense(%struct.cdrom_device_info* %18, %struct.packet_command* %6, i32 %21, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %63

27:                                               ; preds = %2
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %29 = bitcast i8* %28 to %struct.mode_page_header*
  store %struct.mode_page_header* %29, %struct.mode_page_header** %7, align 8
  %30 = load %struct.mode_page_header*, %struct.mode_page_header** %7, align 8
  %31 = getelementptr inbounds %struct.mode_page_header, %struct.mode_page_header* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be16_to_cpu(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.mode_page_header*, %struct.mode_page_header** %7, align 8
  %35 = getelementptr inbounds %struct.mode_page_header, %struct.mode_page_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16_to_cpu(i32 %36)
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %43
  store i8 %40, i8* %44, align 1
  %45 = load i32, i32* %11, align 4
  %46 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %48 = call i32 @cdrom_mode_select(%struct.cdrom_device_info* %47, %struct.packet_command* %6)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %27
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %27
  %54 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %55 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** @mrw_address_space, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %53, %51, %25
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

declare dso_local i32 @cdrom_mode_sense(%struct.cdrom_device_info*, %struct.packet_command*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cdrom_mode_select(%struct.cdrom_device_info*, %struct.packet_command*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
