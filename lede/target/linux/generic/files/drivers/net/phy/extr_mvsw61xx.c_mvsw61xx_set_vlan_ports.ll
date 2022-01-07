; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_set_vlan_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_set_vlan_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32, i32 }
%struct.switch_val = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mvsw61xx_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@MV_VTUCTL_EGRESS_TAGGED = common dso_local global i32 0, align 4
@MV_VTUCTL_EGRESS_UNTAGGED = common dso_local global i32 0, align 4
@MV_STUCTL_STATE_FORWARDING = common dso_local global i32 0, align 4
@MV_VTUCTL_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @mvsw61xx_set_vlan_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_set_vlan_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.mvsw61xx_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %12 = call %struct.mvsw61xx_state* @get_state(%struct.switch_dev* %11)
  store %struct.mvsw61xx_state* %12, %struct.mvsw61xx_state** %6, align 8
  %13 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %14 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %21 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %182

27:                                               ; preds = %18
  %28 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %29 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %36 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %43 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %50 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %27
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %61 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  store i32 %59, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %27
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %140, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %71 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %143

74:                                               ; preds = %68
  %75 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %76 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = shl i32 1, %84
  %86 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %87 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %85
  store i32 %94, i32* %92, align 4
  %95 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %96 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %105 = shl i32 1, %104
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %74
  %109 = load i32, i32* @MV_VTUCTL_EGRESS_TAGGED, align 4
  store i32 %109, i32* %8, align 4
  br label %112

110:                                              ; preds = %74
  %111 = load i32, i32* @MV_VTUCTL_EGRESS_UNTAGGED, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = mul nsw i32 %114, 4
  %116 = shl i32 %113, %115
  %117 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %118 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %116
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @MV_STUCTL_STATE_FORWARDING, align 4
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 %127, 4
  %129 = add nsw i32 %128, 2
  %130 = shl i32 %126, %129
  %131 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %132 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %130
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %112
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %68

143:                                              ; preds = %68
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %178, %143
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %147 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %181

150:                                              ; preds = %144
  %151 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %152 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = shl i32 1, %159
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %177, label %163

163:                                              ; preds = %150
  %164 = load i32, i32* @MV_VTUCTL_DISCARD, align 4
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 %165, 4
  %167 = shl i32 %164, %166
  %168 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %169 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %168, i32 0, i32 0
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %167
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %163, %150
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %144

181:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %181, %24
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.mvsw61xx_state* @get_state(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
