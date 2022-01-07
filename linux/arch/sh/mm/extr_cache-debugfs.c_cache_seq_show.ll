; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-debugfs.c_cache_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-debugfs.c_cache_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cache_info, %struct.cache_info }
%struct.cache_info = type { i32, i32, i32, i64, i64 }
%struct.seq_file = type { i64 }

@SH_CCR = common dso_local global i64 0, align 8
@CCR_CACHE_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@CACHE_TYPE_DCACHE = common dso_local global i32 0, align 4
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CACHE_IC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@CCR_CACHE_ORA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"-----------------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Way %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%3d: %c 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cache_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  store i64 0, i64* %11, align 8
  %19 = call i32 (...) @jump_to_uncached()
  %20 = load i64, i64* @SH_CCR, align 8
  %21 = call i64 @__raw_readl(i64 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @CCR_CACHE_ENABLE, align 8
  %24 = and i64 %22, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = call i32 (...) @back_to_cached()
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %118

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CACHE_TYPE_DCACHE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  store i64 %35, i64* %11, align 8
  store %struct.cache_info* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 1), %struct.cache_info** %7, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @CACHE_IC_ADDRESS_ARRAY, align 8
  store i64 %37, i64* %11, align 8
  store %struct.cache_info* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), %struct.cache_info** %7, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.cache_info*, %struct.cache_info** %7, align 8
  %40 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %8, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @CCR_CACHE_ORA, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CACHE_TYPE_DCACHE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = lshr i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %46, %38
  %54 = load %struct.cache_info*, %struct.cache_info** %7, align 8
  %55 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, %56
  store i32 %58, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %113, %53
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.cache_info*, %struct.cache_info** %7, align 8
  %62 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %116

65:                                               ; preds = %59
  %66 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %72 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %99, %65
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = add i64 %76, %78
  %80 = icmp ult i64 %75, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %74
  %82 = load i64, i64* %12, align 8
  %83 = call i64 @__raw_readl(i64 %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = and i64 %84, 1
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %99

88:                                               ; preds = %81
  %89 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i64, i64* %14, align 8
  %92 = and i64 %91, 2
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 85, i32 32
  %96 = load i64, i64* %14, align 8
  %97 = and i64 %96, 536869888
  %98 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %95, i64 %97)
  br label %99

99:                                               ; preds = %88, %87
  %100 = load %struct.cache_info*, %struct.cache_info** %7, align 8
  %101 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %74

107:                                              ; preds = %74
  %108 = load %struct.cache_info*, %struct.cache_info** %7, align 8
  %109 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %59

116:                                              ; preds = %59
  %117 = call i32 (...) @back_to_cached()
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %26
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @back_to_cached(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
