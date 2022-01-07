; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_aix_magic_present.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_aix_magic_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.partition = type { i64 }

@AIX_LABEL_MAGIC1 = common dso_local global i8 0, align 1
@AIX_LABEL_MAGIC2 = common dso_local global i8 0, align 1
@AIX_LABEL_MAGIC3 = common dso_local global i8 0, align 1
@AIX_LABEL_MAGIC4 = common dso_local global i8 0, align 1
@LINUX_SWAP_PARTITION = common dso_local global i64 0, align 8
@LINUX_RAID_PARTITION = common dso_local global i64 0, align 8
@LINUX_DATA_PARTITION = common dso_local global i64 0, align 8
@LINUX_LVM_PARTITION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*, i8*)* @aix_magic_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aix_magic_present(%struct.parsed_partitions* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.partition*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 446
  %13 = bitcast i8* %12 to %struct.partition*
  store %struct.partition* %13, %struct.partition** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @AIX_LABEL_MAGIC1, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @AIX_LABEL_MAGIC2, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @AIX_LABEL_MAGIC3, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @AIX_LABEL_MAGIC4, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %37, %29, %21, %2
  store i32 0, i32* %3, align 4
  br label %120

46:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %80, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp sle i32 %48, 4
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load %struct.partition*, %struct.partition** %6, align 8
  %52 = getelementptr inbounds %struct.partition, %struct.partition* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LINUX_SWAP_PARTITION, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %78, label %56

56:                                               ; preds = %50
  %57 = load %struct.partition*, %struct.partition** %6, align 8
  %58 = getelementptr inbounds %struct.partition, %struct.partition* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LINUX_RAID_PARTITION, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %78, label %62

62:                                               ; preds = %56
  %63 = load %struct.partition*, %struct.partition** %6, align 8
  %64 = getelementptr inbounds %struct.partition, %struct.partition* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LINUX_DATA_PARTITION, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load %struct.partition*, %struct.partition** %6, align 8
  %70 = getelementptr inbounds %struct.partition, %struct.partition* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LINUX_LVM_PARTITION, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load %struct.partition*, %struct.partition** %6, align 8
  %76 = call i64 @is_extended_partition(%struct.partition* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %68, %62, %56, %50
  store i32 0, i32* %3, align 4
  br label %120

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load %struct.partition*, %struct.partition** %6, align 8
  %84 = getelementptr inbounds %struct.partition, %struct.partition* %83, i32 1
  store %struct.partition* %84, %struct.partition** %6, align 8
  br label %47

85:                                               ; preds = %47
  %86 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %87 = call i8* @read_part_sector(%struct.parsed_partitions* %86, i32 7, i32* %7)
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %118

90:                                               ; preds = %85
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 95
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 76
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 86
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 77
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 1, i32* %10, align 4
  br label %115

115:                                              ; preds = %114, %108, %102, %96, %90
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @put_dev_sector(i32 %116)
  br label %118

118:                                              ; preds = %115, %85
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %78, %45
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @is_extended_partition(%struct.partition*) #1

declare dso_local i8* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #1

declare dso_local i32 @put_dev_sector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
