; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_get_vlan_info.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_get_vlan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.rtl8366_vlan_4k = type { i32, i32, i32, i32 }
%struct.rtl8366_smi = type { i8*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"VLAN %d: Ports: '\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"', members=%04x, untag=%04x, fid=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_sw_get_vlan_info(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl8366_vlan_4k, align 4
  %11 = alloca %struct.rtl8366_smi*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %15 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %14)
  store %struct.rtl8366_smi* %15, %struct.rtl8366_smi** %11, align 8
  %16 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %11, align 8
  %17 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %11, align 8
  %20 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32 (%struct.rtl8366_smi*, i32)*, i32 (%struct.rtl8366_smi*, i32)** %22, align 8
  %24 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %11, align 8
  %25 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %26 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %23(%struct.rtl8366_smi* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %127

33:                                               ; preds = %3
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @memset(i8* %34, i8 signext 0, i32 8)
  %36 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %11, align 8
  %37 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)** %39, align 8
  %41 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %11, align 8
  %42 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %43 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %40(%struct.rtl8366_smi* %41, i32 %44, %struct.rtl8366_vlan_4k* %10)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %4, align 4
  br label %127

50:                                               ; preds = %33
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %54, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %99, %50
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %11, align 8
  %67 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %99

78:                                               ; preds = %70
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 8, %84
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %8, align 4
  %88 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %10, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %96 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %82, i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %87, i8* %95)
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %78, %77
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %64

102:                                              ; preds = %64
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 8, %108
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %10, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %10, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %10, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %106, i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %114, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load i8*, i8** %12, align 8
  %121 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %122 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i8* %120, i8** %123, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %126 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %102, %48, %30
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
