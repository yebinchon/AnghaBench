; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_modalias_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_modalias_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vio_dev = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"vio:T%sS%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @modalias_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modalias_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vio_dev*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.vio_dev* @to_vio_dev(%struct.device* %11)
  store %struct.vio_dev* %12, %struct.vio_dev** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %9, align 8
  %16 = load %struct.device_node*, %struct.device_node** %9, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strcpy(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.device_node*, %struct.device_node** %9, align 8
  %25 = call i8* @of_get_property(%struct.device_node* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strcpy(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %23
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.vio_dev*, %struct.vio_dev** %8, align 8
  %36 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %28, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.vio_dev* @to_vio_dev(%struct.device*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
