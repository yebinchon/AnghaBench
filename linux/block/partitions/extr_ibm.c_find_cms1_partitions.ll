; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_find_cms1_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_find_cms1_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.hd_geometry = type { i32 }
%union.label_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"CMS1/%8s(MDSK):\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"CMS1/%8s:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*, %struct.hd_geometry*, i32, i8*, %union.label_t*, i32)* @find_cms1_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_cms1_partitions(%struct.parsed_partitions* %0, %struct.hd_geometry* %1, i32 %2, i8* %3, %union.label_t* %4, i32 %5) #0 {
  %7 = alloca %struct.parsed_partitions*, align 8
  %8 = alloca %struct.hd_geometry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %union.label_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %7, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %union.label_t* %4, %union.label_t** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %union.label_t*, %union.label_t** %11, align 8
  %18 = bitcast %union.label_t* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 9
  store i32 %22, i32* %16, align 4
  %23 = load %union.label_t*, %union.label_t** %11, align 8
  %24 = bitcast %union.label_t* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %6
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @snprintf(i8* %29, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %33 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i32 @strlcat(i32 %34, i8* %35, i32 %36)
  %38 = load %union.label_t*, %union.label_t** %11, align 8
  %39 = bitcast %union.label_t* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %16, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %13, align 4
  %44 = load %union.label_t*, %union.label_t** %11, align 8
  %45 = bitcast %union.label_t* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %16, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %14, align 4
  br label %77

51:                                               ; preds = %6
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @snprintf(i8* %52, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %56 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i32 @strlcat(i32 %57, i8* %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* %16, align 4
  %65 = mul nsw i32 2, %64
  store i32 %65, i32* %13, align 4
  br label %70

66:                                               ; preds = %51
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %union.label_t*, %union.label_t** %11, align 8
  %72 = bitcast %union.label_t* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %70, %28
  %78 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @put_partition(%struct.parsed_partitions* %78, i32 1, i32 %79, i32 %82)
  %84 = load %struct.parsed_partitions*, %struct.parsed_partitions** %7, align 8
  %85 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = call i32 @strlcat(i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  ret i32 1
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
