; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_debug_dev_open.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_debug_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.sfe_ipv4_debug_xml_write_state* }
%struct.sfe_ipv4_debug_xml_write_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SFE_IPV4_DEBUG_XML_STATE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sfe_ipv4_debug_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv4_debug_dev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.sfe_ipv4_debug_xml_write_state*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %8, align 8
  store %struct.sfe_ipv4_debug_xml_write_state* %9, %struct.sfe_ipv4_debug_xml_write_state** %6, align 8
  %10 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %6, align 8
  %11 = icmp ne %struct.sfe_ipv4_debug_xml_write_state* %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sfe_ipv4_debug_xml_write_state* @kzalloc(i32 4, i32 %13)
  store %struct.sfe_ipv4_debug_xml_write_state* %14, %struct.sfe_ipv4_debug_xml_write_state** %6, align 8
  %15 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %6, align 8
  %16 = icmp ne %struct.sfe_ipv4_debug_xml_write_state* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %12
  %21 = load i32, i32* @SFE_IPV4_DEBUG_XML_STATE_START, align 4
  %22 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %6, align 8
  %23 = getelementptr inbounds %struct.sfe_ipv4_debug_xml_write_state, %struct.sfe_ipv4_debug_xml_write_state* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %6, align 8
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  store %struct.sfe_ipv4_debug_xml_write_state* %24, %struct.sfe_ipv4_debug_xml_write_state** %26, align 8
  br label %27

27:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.sfe_ipv4_debug_xml_write_state* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
