; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_ibm_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ibm.c_ibm_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, %struct.block_device* }
%struct.block_device = type { i32 }
%union.label_t = type { i64 }
%struct.hd_geometry = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HDIO_GETGEO = common dso_local global i32 0, align 4
@BIODASDINFO2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"VOL1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LNX1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CMS1\00", align 1
@DASD_FORMAT_LDL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"(nonl)\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibm_partition(%struct.parsed_partitions* %0) #0 {
  %2 = alloca %struct.parsed_partitions*, align 8
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.label_t*, align 8
  %10 = alloca %struct.hd_geometry*, align 8
  %11 = alloca [5 x i8], align 1
  %12 = alloca [7 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca %union.label_t*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %2, align 8
  %15 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %16 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %15, i32 0, i32 1
  %17 = load %struct.block_device*, %struct.block_device** %16, align 8
  store %struct.block_device* %17, %struct.block_device** %3, align 8
  %18 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %18, i8 0, i64 5, i1 false)
  %19 = bitcast [7 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 7, i1 false)
  store i32 0, i32* %5, align 4
  %20 = load %struct.block_device*, %struct.block_device** %3, align 8
  %21 = call i32 @bdev_logical_block_size(%struct.block_device* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %173

25:                                               ; preds = %1
  %26 = load %struct.block_device*, %struct.block_device** %3, align 8
  %27 = getelementptr inbounds %struct.block_device, %struct.block_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @i_size_read(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %173

33:                                               ; preds = %25
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %union.label_t* @kmalloc(i32 8, i32 %34)
  store %union.label_t* %35, %union.label_t** %9, align 8
  %36 = load %union.label_t*, %union.label_t** %9, align 8
  %37 = icmp eq %union.label_t* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %173

39:                                               ; preds = %33
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %union.label_t* @kmalloc(i32 16, i32 %40)
  %42 = bitcast %union.label_t* %41 to %struct.hd_geometry*
  store %struct.hd_geometry* %42, %struct.hd_geometry** %10, align 8
  %43 = load %struct.hd_geometry*, %struct.hd_geometry** %10, align 8
  %44 = icmp eq %struct.hd_geometry* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %170

46:                                               ; preds = %39
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %union.label_t* @kmalloc(i32 8, i32 %47)
  store %union.label_t* %48, %union.label_t** %14, align 8
  %49 = load %union.label_t*, %union.label_t** %14, align 8
  %50 = icmp eq %union.label_t* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %166

52:                                               ; preds = %46
  %53 = load %struct.block_device*, %struct.block_device** %3, align 8
  %54 = load i32, i32* @HDIO_GETGEO, align 4
  %55 = load %struct.hd_geometry*, %struct.hd_geometry** %10, align 8
  %56 = ptrtoint %struct.hd_geometry* %55 to i64
  %57 = call i64 @ioctl_by_bdev(%struct.block_device* %53, i32 %54, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %163

60:                                               ; preds = %52
  %61 = load %struct.block_device*, %struct.block_device** %3, align 8
  %62 = load i32, i32* @BIODASDINFO2, align 4
  %63 = load %union.label_t*, %union.label_t** %9, align 8
  %64 = ptrtoint %union.label_t* %63 to i64
  %65 = call i64 @ioctl_by_bdev(%struct.block_device* %61, i32 %62, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %union.label_t*, %union.label_t** %9, align 8
  %69 = call i32 @kfree(%union.label_t* %68)
  store %union.label_t* null, %union.label_t** %9, align 8
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %72 = load %union.label_t*, %union.label_t** %9, align 8
  %73 = load %struct.hd_geometry*, %struct.hd_geometry** %10, align 8
  %74 = bitcast %struct.hd_geometry* %73 to %union.label_t*
  %75 = load i32, i32* %4, align 4
  %76 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %78 = load %union.label_t*, %union.label_t** %14, align 8
  %79 = call i64 @find_label(%struct.parsed_partitions* %71, %union.label_t* %72, %union.label_t* %74, i32 %75, i32* %13, i8* %76, i8* %77, %union.label_t* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %124

81:                                               ; preds = %70
  %82 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %83 = call i32 @strncmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %87 = load %struct.hd_geometry*, %struct.hd_geometry** %10, align 8
  %88 = bitcast %struct.hd_geometry* %87 to %union.label_t*
  %89 = load i32, i32* %4, align 4
  %90 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %91 = load %union.label_t*, %union.label_t** %14, align 8
  %92 = call i32 @find_vol1_partitions(%struct.parsed_partitions* %86, %union.label_t* %88, i32 %89, i8* %90, %union.label_t* %91)
  store i32 %92, i32* %5, align 4
  br label %123

93:                                               ; preds = %81
  %94 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %95 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %93
  %98 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %99 = load %struct.hd_geometry*, %struct.hd_geometry** %10, align 8
  %100 = bitcast %struct.hd_geometry* %99 to %union.label_t*
  %101 = load i32, i32* %4, align 4
  %102 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %103 = load %union.label_t*, %union.label_t** %14, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %union.label_t*, %union.label_t** %9, align 8
  %107 = call i32 @find_lnx1_partitions(%struct.parsed_partitions* %98, %union.label_t* %100, i32 %101, i8* %102, %union.label_t* %103, i32 %104, i32 %105, %union.label_t* %106)
  store i32 %107, i32* %5, align 4
  br label %122

108:                                              ; preds = %93
  %109 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %110 = call i32 @strncmp(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %108
  %113 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %114 = load %struct.hd_geometry*, %struct.hd_geometry** %10, align 8
  %115 = bitcast %struct.hd_geometry* %114 to %union.label_t*
  %116 = load i32, i32* %4, align 4
  %117 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %118 = load %union.label_t*, %union.label_t** %14, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @find_cms1_partitions(%struct.parsed_partitions* %113, %union.label_t* %115, i32 %116, i8* %117, %union.label_t* %118, i32 %119)
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %112, %108
  br label %122

122:                                              ; preds = %121, %97
  br label %123

123:                                              ; preds = %122, %85
  br label %162

124:                                              ; preds = %70
  %125 = load %union.label_t*, %union.label_t** %9, align 8
  %126 = icmp ne %union.label_t* %125, null
  br i1 %126, label %127, label %160

127:                                              ; preds = %124
  store i32 1, i32* %5, align 4
  %128 = load %union.label_t*, %union.label_t** %9, align 8
  %129 = bitcast %union.label_t* %128 to i64*
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DASD_FORMAT_LDL, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %127
  %134 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %135 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = call i32 @strlcat(i32 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = ashr i32 %139, 9
  store i32 %140, i32* %8, align 4
  %141 = load %union.label_t*, %union.label_t** %9, align 8
  %142 = bitcast %union.label_t* %141 to i32*
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* %4, align 4
  %146 = ashr i32 %145, 9
  %147 = mul nsw i32 %144, %146
  store i32 %147, i32* %7, align 4
  %148 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %7, align 4
  %152 = sub nsw i32 %150, %151
  %153 = call i32 @put_partition(%struct.parsed_partitions* %148, i32 1, i32 %149, i32 %152)
  %154 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %155 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PAGE_SIZE, align 4
  %158 = call i32 @strlcat(i32 %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %133, %127
  br label %161

160:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %159
  br label %162

162:                                              ; preds = %161, %123
  br label %163

163:                                              ; preds = %162, %59
  %164 = load %union.label_t*, %union.label_t** %14, align 8
  %165 = call i32 @kfree(%union.label_t* %164)
  br label %166

166:                                              ; preds = %163, %51
  %167 = load %struct.hd_geometry*, %struct.hd_geometry** %10, align 8
  %168 = bitcast %struct.hd_geometry* %167 to %union.label_t*
  %169 = call i32 @kfree(%union.label_t* %168)
  br label %170

170:                                              ; preds = %166, %45
  %171 = load %union.label_t*, %union.label_t** %9, align 8
  %172 = call i32 @kfree(%union.label_t* %171)
  br label %173

173:                                              ; preds = %170, %38, %32, %24
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #2

declare dso_local i32 @i_size_read(i32) #2

declare dso_local %union.label_t* @kmalloc(i32, i32) #2

declare dso_local i64 @ioctl_by_bdev(%struct.block_device*, i32, i64) #2

declare dso_local i32 @kfree(%union.label_t*) #2

declare dso_local i64 @find_label(%struct.parsed_partitions*, %union.label_t*, %union.label_t*, i32, i32*, i8*, i8*, %union.label_t*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @find_vol1_partitions(%struct.parsed_partitions*, %union.label_t*, i32, i8*, %union.label_t*) #2

declare dso_local i32 @find_lnx1_partitions(%struct.parsed_partitions*, %union.label_t*, i32, i8*, %union.label_t*, i32, i32, %union.label_t*) #2

declare dso_local i32 @find_cms1_partitions(%struct.parsed_partitions*, %union.label_t*, i32, i8*, %union.label_t*, i32) #2

declare dso_local i32 @strlcat(i32, i8*, i32) #2

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
