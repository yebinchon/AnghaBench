; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_debug_dev_read_exceptions_exception.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_debug_dev_read_exceptions_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i32, i64* }
%struct.sfe_ipv4_debug_xml_write_state = type { i64, i32 }

@CHAR_DEV_MSG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\09\09<exception name=\22%s\22 count=\22%llu\22 />\0A\00", align 1
@sfe_ipv4_exception_events_string = common dso_local global i8** null, align 8
@SFE_IPV4_EXCEPTION_EVENT_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_ipv4*, i8*, i8*, i64*, i32*, %struct.sfe_ipv4_debug_xml_write_state*)* @sfe_ipv4_debug_dev_read_exceptions_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv4_debug_dev_read_exceptions_exception(%struct.sfe_ipv4* %0, i8* %1, i8* %2, i64* %3, i32* %4, %struct.sfe_ipv4_debug_xml_write_state* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sfe_ipv4*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sfe_ipv4_debug_xml_write_state*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sfe_ipv4* %0, %struct.sfe_ipv4** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.sfe_ipv4_debug_xml_write_state* %5, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %16 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %17 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %20 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %23 = getelementptr inbounds %struct.sfe_ipv4_debug_xml_write_state, %struct.sfe_ipv4_debug_xml_write_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %28 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load i64, i64* %14, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %6
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* @CHAR_DEV_MSG_SIZE, align 4
  %35 = load i8**, i8*** @sfe_ipv4_exception_events_string, align 8
  %36 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %37 = getelementptr inbounds %struct.sfe_ipv4_debug_xml_write_state, %struct.sfe_ipv4_debug_xml_write_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %40, i64 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @CHAR_DEV_MSG_SIZE, align 4
  %50 = call i64 @copy_to_user(i8* %47, i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %81

53:                                               ; preds = %32
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** %11, align 8
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, %55
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %53, %6
  %64 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %65 = getelementptr inbounds %struct.sfe_ipv4_debug_xml_write_state, %struct.sfe_ipv4_debug_xml_write_state* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %69 = getelementptr inbounds %struct.sfe_ipv4_debug_xml_write_state, %struct.sfe_ipv4_debug_xml_write_state* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_LAST, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %75 = getelementptr inbounds %struct.sfe_ipv4_debug_xml_write_state, %struct.sfe_ipv4_debug_xml_write_state* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %77 = getelementptr inbounds %struct.sfe_ipv4_debug_xml_write_state, %struct.sfe_ipv4_debug_xml_write_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %63
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
