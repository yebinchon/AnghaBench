; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_debug_dev_read_end.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_debug_dev_read_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i32 }
%struct.sfe_ipv4_debug_xml_write_state = type { i32 }

@CHAR_DEV_MSG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"</sfe_ipv4>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_ipv4*, i8*, i8*, i64*, i32*, %struct.sfe_ipv4_debug_xml_write_state*)* @sfe_ipv4_debug_dev_read_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv4_debug_dev_read_end(%struct.sfe_ipv4* %0, i8* %1, i8* %2, i64* %3, i32* %4, %struct.sfe_ipv4_debug_xml_write_state* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sfe_ipv4*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sfe_ipv4_debug_xml_write_state*, align 8
  %14 = alloca i32, align 4
  store %struct.sfe_ipv4* %0, %struct.sfe_ipv4** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.sfe_ipv4_debug_xml_write_state* %5, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* @CHAR_DEV_MSG_SIZE, align 4
  %17 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %14, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* @CHAR_DEV_MSG_SIZE, align 4
  %25 = call i64 @copy_to_user(i8* %22, i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %42

28:                                               ; preds = %6
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %39 = getelementptr inbounds %struct.sfe_ipv4_debug_xml_write_state, %struct.sfe_ipv4_debug_xml_write_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %28, %27
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
