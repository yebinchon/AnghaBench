; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_set_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_set_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32, i32 }
%struct.switch_val = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }

@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@PVID = common dso_local global i32 0, align 4
@NON_PVID_DISCARD = common dso_local global i32 0, align 4
@VID_INSERT = common dso_local global i32 0, align 4
@TAG_INSERT = common dso_local global i32 0, align 4
@PORTMASK = common dso_local global i32 0, align 4
@RTL8306_NUM_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @rtl_set_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_set_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.switch_port*, align 8
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %101, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %13 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %104

16:                                               ; preds = %10
  %17 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %18 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.switch_port*, %struct.switch_port** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %20, i64 %22
  store %struct.switch_port* %23, %struct.switch_port** %8, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %25 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %31 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %34 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %16
  br label %101

38:                                               ; preds = %16
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %41 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %46 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %38
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %58 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %59 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PVID, align 4
  %62 = call i32 @RTL_PORT_REG(i32 %60, i32 %61)
  %63 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %64 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rtl_set(%struct.switch_dev* %57, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %56, %53
  %68 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %69 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %70 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NON_PVID_DISCARD, align 4
  %73 = call i32 @RTL_PORT_REG(i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 0, i32 1
  %78 = call i32 @rtl_set(%struct.switch_dev* %68, i32 %73, i32 %77)
  %79 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %80 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %81 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VID_INSERT, align 4
  %84 = call i32 @RTL_PORT_REG(i32 %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 1
  %89 = call i32 @rtl_set(%struct.switch_dev* %79, i32 %84, i32 %88)
  %90 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %91 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %92 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TAG_INSERT, align 4
  %95 = call i32 @RTL_PORT_REG(i32 %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 2, i32 1
  %100 = call i32 @rtl_set(%struct.switch_dev* %90, i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %67, %37
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %10

104:                                              ; preds = %10
  %105 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %106 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %107 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PORTMASK, align 4
  %110 = call i32 @RTL_VLAN_REG(i32 %108, i32 %109)
  %111 = call i32 @rtl_get(%struct.switch_dev* %105, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %113 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %114 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PORTMASK, align 4
  %117 = call i32 @RTL_VLAN_REG(i32 %115, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @rtl_set(%struct.switch_dev* %112, i32 %117, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %6, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %163, %104
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @RTL8306_NUM_PORTS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %166

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = shl i32 1, %130
  %132 = and i32 %129, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  br label %163

135:                                              ; preds = %128
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %138 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %163

142:                                              ; preds = %135
  %143 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @PVID, align 4
  %146 = call i32 @RTL_PORT_REG(i32 %144, i32 %145)
  %147 = call i32 @rtl_get(%struct.switch_dev* %143, i32 %146)
  %148 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %149 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %147, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %142
  %153 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @PVID, align 4
  %156 = call i32 @RTL_PORT_REG(i32 %154, i32 %155)
  %157 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %158 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @rtl_set(%struct.switch_dev* %153, i32 %156, i32 %160)
  br label %162

162:                                              ; preds = %152, %142
  br label %163

163:                                              ; preds = %162, %141, %134
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %124

166:                                              ; preds = %124
  ret i32 0
}

declare dso_local i32 @rtl_set(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @RTL_PORT_REG(i32, i32) #1

declare dso_local i32 @rtl_get(%struct.switch_dev*, i32) #1

declare dso_local i32 @RTL_VLAN_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
