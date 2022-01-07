; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_debug_dev_read_stats.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_debug_dev_read_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sfe_ipv4_debug_xml_write_state = type { i32 }

@CHAR_DEV_MSG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [228 x i8] c"\09<stats num_connections=\22%u\22 pkts_forwarded=\22%llu\22 pkts_not_forwarded=\22%llu\22 create_requests=\22%llu\22 create_collisions=\22%llu\22 destroy_requests=\22%llu\22 destroy_misses=\22%llu\22 flushes=\22%llu\22 hash_hits=\22%llu\22 hash_reorders=\22%llu\22 />\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_ipv4*, i8*, i8*, i64*, i32*, %struct.sfe_ipv4_debug_xml_write_state*)* @sfe_ipv4_debug_dev_read_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv4_debug_dev_read_stats(%struct.sfe_ipv4* %0, i8* %1, i8* %2, i64* %3, i32* %4, %struct.sfe_ipv4_debug_xml_write_state* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sfe_ipv4*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sfe_ipv4_debug_xml_write_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sfe_ipv4* %0, %struct.sfe_ipv4** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.sfe_ipv4_debug_xml_write_state* %5, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %25 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %26 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %29 = call i32 @sfe_ipv4_update_summary_stats(%struct.sfe_ipv4* %28)
  %30 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %31 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %34 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %37 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %17, align 4
  %39 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %40 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %18, align 4
  %42 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %43 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %19, align 4
  %45 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %46 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %20, align 4
  %48 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %49 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %21, align 4
  %51 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %52 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %22, align 4
  %54 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %55 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %23, align 4
  %57 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %58 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %24, align 4
  %60 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %61 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* @CHAR_DEV_MSG_SIZE, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* %24, align 4
  %75 = call i32 @snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* @CHAR_DEV_MSG_SIZE, align 4
  %83 = call i64 @copy_to_user(i8* %80, i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %100

86:                                               ; preds = %6
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64*, i64** %11, align 8
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %90, %88
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load %struct.sfe_ipv4_debug_xml_write_state*, %struct.sfe_ipv4_debug_xml_write_state** %13, align 8
  %97 = getelementptr inbounds %struct.sfe_ipv4_debug_xml_write_state, %struct.sfe_ipv4_debug_xml_write_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  store i32 1, i32* %7, align 4
  br label %100

100:                                              ; preds = %86, %85
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sfe_ipv4_update_summary_stats(%struct.sfe_ipv4*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
