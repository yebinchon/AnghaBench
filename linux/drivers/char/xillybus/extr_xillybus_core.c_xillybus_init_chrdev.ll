; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_init_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_init_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }

@xillyname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to obtain major/minors\00", align 1
@xillybus_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to add cdev. Aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"xillybus_%s\00", align 1
@xillybus_class = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to create %s device. Aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Created %d device files.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilly_endpoint*, i8*)* @xillybus_init_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xillybus_init_chrdev(%struct.xilly_endpoint* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xilly_endpoint*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [48 x i8], align 16
  %13 = alloca %struct.device*, align 8
  store %struct.xilly_endpoint* %0, %struct.xilly_endpoint** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %15 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @xillyname, align 4
  %18 = call i32 @alloc_chrdev_region(i32* %7, i32 0, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %23 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @dev_warn(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %148

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @MAJOR(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %31 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @MINOR(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %35 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %37 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %36, i32 0, i32 3
  %38 = call i32 @cdev_init(%struct.TYPE_6__* %37, i32* @xillybus_fops)
  %39 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %40 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %39, i32 0, i32 5
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %45 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %48 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %47, i32 0, i32 3
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @MKDEV(i32 %49, i32 %50)
  %52 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %53 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cdev_add(%struct.TYPE_6__* %48, i32 %51, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %27
  %59 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %60 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @dev_warn(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %139

63:                                               ; preds = %27
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %103, %63
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %70 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %67
  %74 = getelementptr inbounds [48 x i8], [48 x i8]* %12, i64 0, i64 0
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @snprintf(i8* %74, i32 47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  %77 = getelementptr inbounds [48 x i8], [48 x i8]* %12, i64 0, i64 47
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %83, %73
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  %81 = load i8, i8* %79, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %78

84:                                               ; preds = %78
  %85 = load i32, i32* @xillybus_class, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @MKDEV(i32 %86, i32 %87)
  %89 = getelementptr inbounds [48 x i8], [48 x i8]* %12, i64 0, i64 0
  %90 = call %struct.device* @device_create(i32 %85, i32* null, i32 %88, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  store %struct.device* %90, %struct.device** %13, align 8
  %91 = load %struct.device*, %struct.device** %13, align 8
  %92 = call i64 @IS_ERR(%struct.device* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %96 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [48 x i8], [48 x i8]* %12, i64 0, i64 0
  %99 = call i32 (i32, i8*, ...) @dev_warn(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %116

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %67

108:                                              ; preds = %67
  %109 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %110 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %113 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dev_info(i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  store i32 0, i32* %3, align 4
  br label %148

116:                                              ; preds = %94
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %130, %116
  %122 = load i32, i32* %8, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i32, i32* @xillybus_class, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @MKDEV(i32 %126, i32 %127)
  %129 = call i32 @device_destroy(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %9, align 4
  br label %121

135:                                              ; preds = %121
  %136 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %137 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %136, i32 0, i32 3
  %138 = call i32 @cdev_del(%struct.TYPE_6__* %137)
  br label %139

139:                                              ; preds = %135, %58
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @MKDEV(i32 %140, i32 %141)
  %143 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  %144 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @unregister_chrdev_region(i32 %142, i32 %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %139, %108, %21
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.device* @device_create(i32, i32*, i32, i32*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_6__*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
