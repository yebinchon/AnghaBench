; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_reset_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_reset_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aux_buffer = type { i64, i64, i32 }
%struct.hws_trailer_entry = type { i64, i64 }

@SDB_TE_BUFFER_FULL_MASK = common dso_local global i64 0, align 8
@SDB_TE_ALERT_REQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aux_buffer*, i64, i64*)* @aux_reset_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aux_reset_buffer(%struct.aux_buffer* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aux_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.hws_trailer_entry*, align 8
  store %struct.aux_buffer* %0, %struct.aux_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %17 = call i64 @AUX_SDB_NUM_EMPTY(%struct.aux_buffer* %16)
  %18 = icmp ule i64 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %21 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = call i32 @aux_set_alert(%struct.aux_buffer* %20, i64 %23, i64* %24)
  store i32 %25, i32* %4, align 4
  br label %118

26:                                               ; preds = %3
  %27 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ule i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %36 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = call i32 @aux_set_alert(%struct.aux_buffer* %35, i64 %38, i64* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %118

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %47 = call i64 @AUX_SDB_NUM_EMPTY(%struct.aux_buffer* %46)
  %48 = sub i64 %45, %47
  store i64 %48, i64* %12, align 8
  %49 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %53

53:                                               ; preds = %103, %44
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %53
  %58 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call %struct.hws_trailer_entry* @aux_sdb_trailer(%struct.aux_buffer* %58, i64 %59)
  store %struct.hws_trailer_entry* %60, %struct.hws_trailer_entry** %14, align 8
  br label %61

61:                                               ; preds = %87, %57
  %62 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %14, align 8
  %63 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  %65 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %14, align 8
  %66 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @SDB_TE_BUFFER_FULL_MASK, align 8
  %70 = xor i64 %69, -1
  %71 = and i64 %68, %70
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %61
  %78 = load i64, i64* @SDB_TE_ALERT_REQ_MASK, align 8
  %79 = load i64, i64* %10, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %10, align 8
  br label %86

81:                                               ; preds = %61
  %82 = load i64, i64* @SDB_TE_ALERT_REQ_MASK, align 8
  %83 = xor i64 %82, -1
  %84 = load i64, i64* %10, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %81, %77
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %14, align 8
  %89 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %88, i32 0, i32 0
  %90 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %14, align 8
  %91 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %90, i32 0, i32 1
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @cmpxchg_double(i64* %89, i64* %91, i64 %92, i64 %93, i64 %94, i64 0)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %61, label %98

98:                                               ; preds = %87
  %99 = load i64, i64* %8, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %99
  store i64 %102, i64* %100, align 8
  br label %103

103:                                              ; preds = %98
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %13, align 8
  br label %53

108:                                              ; preds = %53
  %109 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %110 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %112, %113
  %115 = sub i64 %114, 1
  %116 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %117 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  store i32 1, i32* %4, align 4
  br label %118

118:                                              ; preds = %108, %42, %19
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @AUX_SDB_NUM_EMPTY(%struct.aux_buffer*) #1

declare dso_local i32 @aux_set_alert(%struct.aux_buffer*, i64, i64*) #1

declare dso_local %struct.hws_trailer_entry* @aux_sdb_trailer(%struct.aux_buffer*, i64) #1

declare dso_local i32 @cmpxchg_double(i64*, i64*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
