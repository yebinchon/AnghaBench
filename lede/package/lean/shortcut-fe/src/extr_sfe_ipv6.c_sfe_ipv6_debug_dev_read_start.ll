; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_debug_dev_read_start.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_debug_dev_read_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6 = type { i32 }
%struct.sfe_ipv6_debug_xml_write_state = type { i32 }

@CHAR_DEV_MSG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"<sfe_ipv6>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_ipv6*, i8*, i8*, i64*, i32*, %struct.sfe_ipv6_debug_xml_write_state*)* @sfe_ipv6_debug_dev_read_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv6_debug_dev_read_start(%struct.sfe_ipv6* %0, i8* %1, i8* %2, i64* %3, i32* %4, %struct.sfe_ipv6_debug_xml_write_state* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sfe_ipv6*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sfe_ipv6_debug_xml_write_state*, align 8
  %14 = alloca i32, align 4
  store %struct.sfe_ipv6* %0, %struct.sfe_ipv6** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.sfe_ipv6_debug_xml_write_state* %5, %struct.sfe_ipv6_debug_xml_write_state** %13, align 8
  %15 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %16 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* @CHAR_DEV_MSG_SIZE, align 4
  %21 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %14, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @CHAR_DEV_MSG_SIZE, align 4
  %29 = call i64 @copy_to_user(i8* %26, i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %46

32:                                               ; preds = %6
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, %34
  store i64 %37, i64* %35, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load %struct.sfe_ipv6_debug_xml_write_state*, %struct.sfe_ipv6_debug_xml_write_state** %13, align 8
  %43 = getelementptr inbounds %struct.sfe_ipv6_debug_xml_write_state, %struct.sfe_ipv6_debug_xml_write_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %32, %31
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
