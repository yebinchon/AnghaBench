; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_match_ic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_match_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id_table = type { i32, i64, i64, i64, i64 }

@ic_id_table = common dso_local global %struct.id_table* null, align 8
@IC_MATCH_FL_LMPSUBV = common dso_local global i32 0, align 4
@IC_MATCH_FL_HCIREV = common dso_local global i32 0, align 4
@IC_MATCH_FL_HCIVER = common dso_local global i32 0, align 4
@IC_MATCH_FL_HCIBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.id_table* (i64, i64, i64, i64)* @btrtl_match_ic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.id_table* @btrtl_match_ic(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.id_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %97, %4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.id_table* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %100

16:                                               ; preds = %11
  %17 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.id_table, %struct.id_table* %17, i64 %19
  %21 = getelementptr inbounds %struct.id_table, %struct.id_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IC_MATCH_FL_LMPSUBV, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.id_table, %struct.id_table* %27, i64 %29
  %31 = getelementptr inbounds %struct.id_table, %struct.id_table* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %97

36:                                               ; preds = %26, %16
  %37 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.id_table, %struct.id_table* %37, i64 %39
  %41 = getelementptr inbounds %struct.id_table, %struct.id_table* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IC_MATCH_FL_HCIREV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.id_table, %struct.id_table* %47, i64 %49
  %51 = getelementptr inbounds %struct.id_table, %struct.id_table* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %97

56:                                               ; preds = %46, %36
  %57 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.id_table, %struct.id_table* %57, i64 %59
  %61 = getelementptr inbounds %struct.id_table, %struct.id_table* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IC_MATCH_FL_HCIVER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %56
  %67 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.id_table, %struct.id_table* %67, i64 %69
  %71 = getelementptr inbounds %struct.id_table, %struct.id_table* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %97

76:                                               ; preds = %66, %56
  %77 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.id_table, %struct.id_table* %77, i64 %79
  %81 = getelementptr inbounds %struct.id_table, %struct.id_table* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IC_MATCH_FL_HCIBUS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.id_table, %struct.id_table* %87, i64 %89
  %91 = getelementptr inbounds %struct.id_table, %struct.id_table* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %97

96:                                               ; preds = %86, %76
  br label %100

97:                                               ; preds = %95, %75, %55, %35
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %11

100:                                              ; preds = %96, %11
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %103 = call i32 @ARRAY_SIZE(%struct.id_table* %102)
  %104 = icmp sge i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store %struct.id_table* null, %struct.id_table** %5, align 8
  br label %111

106:                                              ; preds = %100
  %107 = load %struct.id_table*, %struct.id_table** @ic_id_table, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.id_table, %struct.id_table* %107, i64 %109
  store %struct.id_table* %110, %struct.id_table** %5, align 8
  br label %111

111:                                              ; preds = %106, %105
  %112 = load %struct.id_table*, %struct.id_table** %5, align 8
  ret %struct.id_table* %112
}

declare dso_local i32 @ARRAY_SIZE(%struct.id_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
