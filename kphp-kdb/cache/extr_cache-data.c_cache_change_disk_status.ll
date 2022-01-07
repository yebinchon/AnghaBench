; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_change_disk_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_change_disk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_cache_change_disk_status = type { i32 }
%union.cache_packed_local_copy_location = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.cache_local_copy_server = type { i32* }

@.str = private unnamed_addr constant [76 x i8] c"cache_change_disk_status (node_id:%d, server_id:%d, disk_id:%d, enable:%d)\0A\00", align 1
@MAX_SERVER_ID = common dso_local global i32 0, align 4
@tot_disabled_servers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_cache_change_disk_status*, i32)* @cache_change_disk_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_change_disk_status(%struct.lev_cache_change_disk_status* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_cache_change_disk_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cache_packed_local_copy_location, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_local_copy_server*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_local_copy_server*, align 8
  store %struct.lev_cache_change_disk_status* %0, %struct.lev_cache_change_disk_status** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.lev_cache_change_disk_status*, %struct.lev_cache_change_disk_status** %3, align 8
  %12 = getelementptr inbounds %struct.lev_cache_change_disk_status, %struct.lev_cache_change_disk_status* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.cache_packed_local_copy_location* %5 to i32*
  store i32 %13, i32* %14, align 8
  %15 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %24, i32 %25)
  %27 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @MAX_SERVER_ID, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %106

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.cache_local_copy_server* @get_disabled_server_f(i32 %44, i32 0)
  store %struct.cache_local_copy_server* %45, %struct.cache_local_copy_server** %7, align 8
  %46 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %7, align 8
  %47 = icmp ne %struct.cache_local_copy_server* %46, null
  br i1 %47, label %48, label %105

48:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  %49 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %94

53:                                               ; preds = %48
  %54 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 31
  %58 = shl i32 1, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %7, align 8
  %61 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 5
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %59
  store i32 %70, i32* %68, align 4
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %87, %53
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %7, align 8
  %76 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %74, %71
  %85 = phi i1 [ false, %71 ], [ %83, %74 ]
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %71

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 8
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %90, %48
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = call %struct.cache_local_copy_server* @get_disabled_server_f(i32 %98, i32 -1)
  store %struct.cache_local_copy_server* %99, %struct.cache_local_copy_server** %7, align 8
  %100 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %7, align 8
  %101 = call i32 @zfree(%struct.cache_local_copy_server* %100, i32 8)
  %102 = load i32, i32* @tot_disabled_servers, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* @tot_disabled_servers, align 4
  br label %104

104:                                              ; preds = %97, %94
  br label %105

105:                                              ; preds = %104, %43
  br label %136

106:                                              ; preds = %2
  %107 = load i32, i32* %6, align 4
  %108 = call %struct.cache_local_copy_server* @get_disabled_server_f(i32 %107, i32 1)
  store %struct.cache_local_copy_server* %108, %struct.cache_local_copy_server** %10, align 8
  %109 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %106
  %114 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 31
  %118 = shl i32 1, %117
  %119 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %10, align 8
  %120 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 5
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %118
  store i32 %129, i32* %127, align 4
  br label %135

130:                                              ; preds = %106
  %131 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %10, align 8
  %132 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @memset(i32* %133, i32 -1, i32 8)
  br label %135

135:                                              ; preds = %130, %113
  br label %136

136:                                              ; preds = %135, %105
  ret i32 1
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.cache_local_copy_server* @get_disabled_server_f(i32, i32) #1

declare dso_local i32 @zfree(%struct.cache_local_copy_server*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
