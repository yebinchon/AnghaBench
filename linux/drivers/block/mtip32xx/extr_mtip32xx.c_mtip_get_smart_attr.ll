; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_get_smart_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_get_smart_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i32*, %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.smart_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"IDENTIFY DATA not valid\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SMART not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"SMART not enabled\0A\00", align 1
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to ge SMART data\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Query for invalid SMART attribute ID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtip_port*, i32, %struct.smart_attr*)* @mtip_get_smart_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_get_smart_attr(%struct.mtip_port* %0, i32 %1, %struct.smart_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtip_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smart_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smart_attr*, align 8
  store %struct.mtip_port* %0, %struct.mtip_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.smart_attr* %2, %struct.smart_attr** %7, align 8
  %11 = load %struct.smart_attr*, %struct.smart_attr** %7, align 8
  %12 = icmp ne %struct.smart_attr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %132

16:                                               ; preds = %3
  %17 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %18 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %23 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %132

31:                                               ; preds = %16
  %32 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %33 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 82
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %41 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %132

49:                                               ; preds = %31
  %50 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %51 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 85
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %49
  %58 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %59 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %132

67:                                               ; preds = %49
  %68 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %69 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @ATA_SECT_SIZE, align 4
  %72 = call i32 @memset(i64 %70, i32 0, i32 %71)
  %73 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %74 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %75 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %78 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mtip_get_smart_data(%struct.mtip_port* %73, i64 %76, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %67
  %84 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %85 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @dev_warn(i32* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %132

92:                                               ; preds = %67
  %93 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %94 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 2
  %97 = inttoptr i64 %96 to %struct.smart_attr*
  store %struct.smart_attr* %97, %struct.smart_attr** %10, align 8
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %112, %92
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 29
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = load %struct.smart_attr*, %struct.smart_attr** %10, align 8
  %103 = getelementptr inbounds %struct.smart_attr, %struct.smart_attr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.smart_attr*, %struct.smart_attr** %7, align 8
  %109 = load %struct.smart_attr*, %struct.smart_attr** %10, align 8
  %110 = call i32 @memcpy(%struct.smart_attr* %108, %struct.smart_attr* %109, i32 4)
  br label %117

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load %struct.smart_attr*, %struct.smart_attr** %10, align 8
  %116 = getelementptr inbounds %struct.smart_attr, %struct.smart_attr* %115, i32 1
  store %struct.smart_attr* %116, %struct.smart_attr** %10, align 8
  br label %98

117:                                              ; preds = %107, %98
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 29
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %122 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = call i32 @dev_warn(i32* %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %120, %117
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %83, %57, %39, %21, %13
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @mtip_get_smart_data(%struct.mtip_port*, i64, i32) #1

declare dso_local i32 @memcpy(%struct.smart_attr*, %struct.smart_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
