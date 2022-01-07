; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_find_valid_gpt.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_find_valid_gpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@force_gpt = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Device has a %s MBR\0A\00", align 1
@GPT_MBR_PROTECTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"protective\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@GPT_PRIMARY_PARTITION_TABLE_LBA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Alternate GPT is invalid, using primary GPT.\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Primary GPT is invalid, using alternate GPT.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*, %struct.TYPE_14__**, %struct.TYPE_14__**)* @find_valid_gpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_valid_gpt(%struct.parsed_partitions* %0, %struct.TYPE_14__** %1, %struct.TYPE_14__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parsed_partitions*, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %5, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  %18 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %19 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @i_size_read(i32 %22)
  %24 = ashr i32 %23, 9
  store i32 %24, i32* %16, align 4
  %25 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %26 = icmp ne %struct.TYPE_14__** %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %138

28:                                               ; preds = %3
  %29 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %30 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = call i32 @last_lba(%struct.TYPE_15__* %31)
  store i32 %32, i32* %17, align 4
  %33 = load i64, i64* @force_gpt, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.TYPE_14__* @kzalloc(i32 4, i32 %36)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %15, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %127

41:                                               ; preds = %35
  %42 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %44 = bitcast %struct.TYPE_14__* %43 to i32*
  %45 = call i32 @read_lba(%struct.parsed_partitions* %42, i32 0, i32* %44, i32 4)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @is_pmbr_valid(%struct.TYPE_14__* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %50 = call i32 @kfree(%struct.TYPE_14__* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %127

54:                                               ; preds = %41
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @GPT_MBR_PROTECTIVE, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %54, %28
  %62 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %63 = load i32, i32* @GPT_PRIMARY_PARTITION_TABLE_LBA, align 4
  %64 = call i32 @is_gpt_valid(%struct.parsed_partitions* %62, i32 %63, %struct.TYPE_14__** %11, %struct.TYPE_14__** %13)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le64_to_cpu(i32 %71)
  %73 = call i32 @is_gpt_valid(%struct.parsed_partitions* %68, i32 %72, %struct.TYPE_14__** %12, %struct.TYPE_14__** %14)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %67, %61
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* @force_gpt, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @is_gpt_valid(%struct.parsed_partitions* %81, i32 %82, %struct.TYPE_14__** %12, %struct.TYPE_14__** %14)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %77, %74
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  br label %127

91:                                               ; preds = %87, %84
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @compare_gpts(%struct.TYPE_14__* %92, %struct.TYPE_14__* %93, i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %102 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %104 = call i32 @kfree(%struct.TYPE_14__* %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %106 = call i32 @kfree(%struct.TYPE_14__* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %98
  %110 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %98
  store i32 1, i32* %4, align 4
  br label %138

112:                                              ; preds = %91
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %117 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_14__* %116, %struct.TYPE_14__** %117, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %119 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %119, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %121 = call i32 @kfree(%struct.TYPE_14__* %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %123 = call i32 @kfree(%struct.TYPE_14__* %122)
  %124 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %138

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126, %90, %53, %40
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %129 = call i32 @kfree(%struct.TYPE_14__* %128)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %131 = call i32 @kfree(%struct.TYPE_14__* %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %133 = call i32 @kfree(%struct.TYPE_14__* %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %135 = call i32 @kfree(%struct.TYPE_14__* %134)
  %136 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %136, align 8
  %137 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %137, align 8
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %127, %115, %111, %27
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @last_lba(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @kzalloc(i32, i32) #1

declare dso_local i32 @read_lba(%struct.parsed_partitions*, i32, i32*, i32) #1

declare dso_local i32 @is_pmbr_valid(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @is_gpt_valid(%struct.parsed_partitions*, i32, %struct.TYPE_14__**, %struct.TYPE_14__**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @compare_gpts(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
