; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_kobj_pkt_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_kobj_pkt_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.pktcdvd_device = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.pktcdvd_device* }

@.str = private unnamed_addr constant [16 x i8] c"packets_started\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"packets_finished\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"kb_written\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"kb_read\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"kb_read_gather\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"congestion_off\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"congestion_on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @kobj_pkt_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kobj_pkt_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pktcdvd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.kobject*, %struct.kobject** %4, align 8
  %11 = call %struct.TYPE_4__* @to_pktcdvdkobj(%struct.kobject* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %12, align 8
  store %struct.pktcdvd_device* %13, %struct.pktcdvd_device** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.attribute*, %struct.attribute** %5, align 8
  %15 = getelementptr inbounds %struct.attribute, %struct.attribute* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %22 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %8, align 4
  br label %145

26:                                               ; preds = %3
  %27 = load %struct.attribute*, %struct.attribute** %5, align 8
  %28 = getelementptr inbounds %struct.attribute, %struct.attribute* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strcmp(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %35 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %8, align 4
  br label %144

39:                                               ; preds = %26
  %40 = load %struct.attribute*, %struct.attribute** %5, align 8
  %41 = getelementptr inbounds %struct.attribute, %struct.attribute* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @strcmp(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %48 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 1
  %52 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %8, align 4
  br label %143

53:                                               ; preds = %39
  %54 = load %struct.attribute*, %struct.attribute** %5, align 8
  %55 = getelementptr inbounds %struct.attribute, %struct.attribute* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strcmp(i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %62 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 1
  %66 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  store i32 %66, i32* %8, align 4
  br label %142

67:                                               ; preds = %53
  %68 = load %struct.attribute*, %struct.attribute** %5, align 8
  %69 = getelementptr inbounds %struct.attribute, %struct.attribute* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @strcmp(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %76 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 1
  %80 = call i32 @sprintf(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %8, align 4
  br label %141

81:                                               ; preds = %67
  %82 = load %struct.attribute*, %struct.attribute** %5, align 8
  %83 = getelementptr inbounds %struct.attribute, %struct.attribute* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @strcmp(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %89 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %88, i32 0, i32 3
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %92 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  %94 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %95 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %94, i32 0, i32 3
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @sprintf(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  store i32 %99, i32* %8, align 4
  br label %140

100:                                              ; preds = %81
  %101 = load %struct.attribute*, %struct.attribute** %5, align 8
  %102 = getelementptr inbounds %struct.attribute, %struct.attribute* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @strcmp(i32 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %108 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %107, i32 0, i32 3
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %111 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %9, align 4
  %113 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %114 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %113, i32 0, i32 3
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @sprintf(i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  store i32 %118, i32* %8, align 4
  br label %139

119:                                              ; preds = %100
  %120 = load %struct.attribute*, %struct.attribute** %5, align 8
  %121 = getelementptr inbounds %struct.attribute, %struct.attribute* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @strcmp(i32 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %127 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %126, i32 0, i32 3
  %128 = call i32 @spin_lock(i32* %127)
  %129 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %130 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %9, align 4
  %132 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %133 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %132, i32 0, i32 3
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @sprintf(i8* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %125, %119
  br label %139

139:                                              ; preds = %138, %106
  br label %140

140:                                              ; preds = %139, %87
  br label %141

141:                                              ; preds = %140, %73
  br label %142

142:                                              ; preds = %141, %59
  br label %143

143:                                              ; preds = %142, %45
  br label %144

144:                                              ; preds = %143, %32
  br label %145

145:                                              ; preds = %144, %19
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_4__* @to_pktcdvdkobj(%struct.kobject*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
