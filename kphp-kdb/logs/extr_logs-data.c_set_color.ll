; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_set_color.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_set_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_logs_set_color = type { i32, i64, i32, i32, i32 }

@write_only = common dso_local global i32 0, align 4
@index_mode = common dso_local global i64 0, align 8
@LEV_LOGS_SET_COLOR = common dso_local global i32 0, align 4
@FN = common dso_local global i32 0, align 4
@std_t = common dso_local global i64* null, align 8
@color_ll = common dso_local global i32* null, align 8
@color_int = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_color(%struct.lev_logs_set_color* %0) #0 {
  %2 = alloca %struct.lev_logs_set_color*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lev_logs_set_color* %0, %struct.lev_logs_set_color** %2, align 8
  %8 = load i32, i32* @write_only, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i64, i64* @index_mode, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %116

13:                                               ; preds = %10, %1
  %14 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %2, align 8
  %15 = getelementptr inbounds %struct.lev_logs_set_color, %struct.lev_logs_set_color* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LEV_LOGS_SET_COLOR, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %2, align 8
  %20 = getelementptr inbounds %struct.lev_logs_set_color, %struct.lev_logs_set_color* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  %22 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %2, align 8
  %23 = getelementptr inbounds %struct.lev_logs_set_color, %struct.lev_logs_set_color* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sle i32 0, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FN, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %13
  %32 = phi i1 [ false, %13 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %112, %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %115

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @get_color(i32 %40, i64 %41)
  %43 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %2, align 8
  %44 = getelementptr inbounds %struct.lev_logs_set_color, %struct.lev_logs_set_color* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = load %struct.lev_logs_set_color*, %struct.lev_logs_set_color** %2, align 8
  %48 = getelementptr inbounds %struct.lev_logs_set_color, %struct.lev_logs_set_color* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = xor i32 %46, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %39
  %54 = load i64*, i64** @std_t, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i32*, i32** @color_ll, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i64, i64* %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i32 @map_ll_int_del(i32* %64, i64 %68)
  br label %80

70:                                               ; preds = %53
  %71 = load i32*, i32** @color_int, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i32 @map_int_int_del(i32* %74, i64 %78)
  br label %80

80:                                               ; preds = %70, %60
  br label %111

81:                                               ; preds = %39
  %82 = load i64*, i64** @std_t, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** @color_ll, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i64, i64* %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = call i32* @map_ll_int_add(i32* %93, i64 %97)
  store i32 %89, i32* %98, align 4
  br label %110

99:                                               ; preds = %81
  %100 = load i32, i32* %7, align 4
  %101 = load i32*, i32** @color_int, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i64, i64* %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = call i32* @map_int_int_add(i32* %104, i64 %108)
  store i32 %100, i32* %109, align 4
  br label %110

110:                                              ; preds = %99, %88
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %35

115:                                              ; preds = %35
  br label %116

116:                                              ; preds = %115, %10
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_color(i32, i64) #1

declare dso_local i32 @map_ll_int_del(i32*, i64) #1

declare dso_local i32 @map_int_int_del(i32*, i64) #1

declare dso_local i32* @map_ll_int_add(i32*, i64) #1

declare dso_local i32* @map_int_int_add(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
