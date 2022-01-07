; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_range_multi_paged_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_range_multi_paged_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.reg_sequence = type { i32, i64 }
%struct.regmap_range_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, %struct.reg_sequence*, i64)* @_regmap_range_multi_paged_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regmap_range_multi_paged_reg_write(%struct.regmap* %0, %struct.reg_sequence* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.reg_sequence*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.reg_sequence*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.regmap_range_node*, align 8
  %16 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store %struct.reg_sequence* %1, %struct.reg_sequence** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  store %struct.reg_sequence* %17, %struct.reg_sequence** %11, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %122, %3
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %127

23:                                               ; preds = %18
  %24 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %24, i64 %26
  %28 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load %struct.regmap*, %struct.regmap** %5, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call %struct.regmap_range_node* @_regmap_range_lookup(%struct.regmap* %30, i32 %31)
  store %struct.regmap_range_node* %32, %struct.regmap_range_node** %15, align 8
  %33 = load %struct.regmap_range_node*, %struct.regmap_range_node** %15, align 8
  %34 = icmp ne %struct.regmap_range_node* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %23
  %36 = load %struct.regmap*, %struct.regmap** %5, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.regmap_range_node*, %struct.regmap_range_node** %15, align 8
  %39 = call i32 @_regmap_register_page(%struct.regmap* %36, i32 %37, %struct.regmap_range_node* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %55, i64 %57
  %59 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %121

62:                                               ; preds = %54, %51
  %63 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %63, i64 %65
  %67 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %73, %70, %62
  %75 = load %struct.regmap*, %struct.regmap** %5, align 8
  %76 = load %struct.reg_sequence*, %struct.reg_sequence** %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @_regmap_raw_multi_reg_write(%struct.regmap* %75, %struct.reg_sequence* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %136

83:                                               ; preds = %74
  %84 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %84, i64 %86
  %88 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %92, i64 %94
  %96 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @udelay(i64 %97)
  br label %99

99:                                               ; preds = %91, %83
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.reg_sequence*, %struct.reg_sequence** %11, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %101, i64 %102
  store %struct.reg_sequence* %103, %struct.reg_sequence** %11, align 8
  store i32 0, i32* %10, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %99
  %107 = load %struct.regmap*, %struct.regmap** %5, align 8
  %108 = load %struct.reg_sequence*, %struct.reg_sequence** %11, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %108, i64 %110
  %112 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %111, i32 0, i32 0
  %113 = load %struct.regmap_range_node*, %struct.regmap_range_node** %15, align 8
  %114 = call i32 @_regmap_select_page(%struct.regmap* %107, i32* %112, %struct.regmap_range_node* %113, i32 1)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  br label %136

119:                                              ; preds = %106
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %119, %99
  br label %121

121:                                              ; preds = %120, %54
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %18

127:                                              ; preds = %18
  %128 = load i32, i32* %10, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.regmap*, %struct.regmap** %5, align 8
  %132 = load %struct.reg_sequence*, %struct.reg_sequence** %11, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @_regmap_raw_multi_reg_write(%struct.regmap* %131, %struct.reg_sequence* %132, i32 %133)
  store i32 %134, i32* %4, align 4
  br label %136

135:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %130, %117, %81
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.regmap_range_node* @_regmap_range_lookup(%struct.regmap*, i32) #1

declare dso_local i32 @_regmap_register_page(%struct.regmap*, i32, %struct.regmap_range_node*) #1

declare dso_local i32 @_regmap_raw_multi_reg_write(%struct.regmap*, %struct.reg_sequence*, i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @_regmap_select_page(%struct.regmap*, i32*, %struct.regmap_range_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
