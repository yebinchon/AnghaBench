; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_find_lnx1_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_find_lnx1_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }
%union.label_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"LNX1/%8s:\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ECKD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*, %struct.hd_geometry*, i32, i8*, %union.label_t*, i32, i32, %struct.TYPE_5__*)* @find_lnx1_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_lnx1_partitions(%struct.parsed_partitions* %0, %struct.hd_geometry* %1, i32 %2, i8* %3, %union.label_t* %4, i32 %5, i32 %6, %struct.TYPE_5__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.parsed_partitions*, align 8
  %11 = alloca %struct.hd_geometry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %union.label_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [64 x i8], align 16
  %22 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %10, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store %union.label_t* %4, %union.label_t** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %17, align 8
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @snprintf(i8* %23, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.parsed_partitions*, %struct.parsed_partitions** %10, align 8
  %27 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 @strlcat(i32 %28, i8* %29, i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = ashr i32 %32, 9
  store i32 %33, i32* %22, align 4
  %34 = load %union.label_t*, %union.label_t** %14, align 8
  %35 = bitcast %union.label_t* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 242
  br i1 %38, label %39, label %46

39:                                               ; preds = %8
  %40 = load %union.label_t*, %union.label_t** %14, align 8
  %41 = bitcast %union.label_t* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %22, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %20, align 4
  br label %89

46:                                               ; preds = %8
  %47 = load %struct.hd_geometry*, %struct.hd_geometry** %11, align 8
  %48 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hd_geometry*, %struct.hd_geometry** %11, align 8
  %51 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load %struct.hd_geometry*, %struct.hd_geometry** %11, align 8
  %55 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = load i32, i32* %22, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %16, align 4
  %61 = ashr i32 %60, 9
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %46
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %67 = icmp ne %struct.TYPE_5__* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load %struct.parsed_partitions*, %struct.parsed_partitions** %10, align 8
  %70 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = call i32 @strlcat(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  store i32 1, i32* %9, align 4
  br label %104

74:                                               ; preds = %65
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strcmp(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %20, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %19, align 4
  store i32 %85, i32* %20, align 4
  br label %86

86:                                               ; preds = %84, %80
  br label %87

87:                                               ; preds = %86, %74
  br label %88

88:                                               ; preds = %87, %46
  br label %89

89:                                               ; preds = %88, %39
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %22, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %18, align 4
  %93 = load %struct.parsed_partitions*, %struct.parsed_partitions** %10, align 8
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %18, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @put_partition(%struct.parsed_partitions* %93, i32 1, i32 %94, i32 %97)
  %99 = load %struct.parsed_partitions*, %struct.parsed_partitions** %10, align 8
  %100 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = call i32 @strlcat(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %89, %68
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
