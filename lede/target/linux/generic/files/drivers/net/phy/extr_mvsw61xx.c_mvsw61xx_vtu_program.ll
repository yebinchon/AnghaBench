; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_vtu_program.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_vtu_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.mvsw61xx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@VTU_OP = common dso_local global i32 0, align 4
@MV_VTUOP_INPROGRESS = common dso_local global i32 0, align 4
@MV_VTUOP_PURGE = common dso_local global i32 0, align 4
@VTU_VID = common dso_local global i32 0, align 4
@MV_VTU_VID_VALID = common dso_local global i32 0, align 4
@VTU_SID = common dso_local global i32 0, align 4
@VTU_DATA1 = common dso_local global i32 0, align 4
@VTU_DATA2 = common dso_local global i32 0, align 4
@VTU_DATA3 = common dso_local global i32 0, align 4
@MV_VTUOP_STULOAD = common dso_local global i32 0, align 4
@VTU_FID = common dso_local global i32 0, align 4
@MV_VTUOP_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @mvsw61xx_vtu_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_vtu_program(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca %struct.mvsw61xx_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %10 = call %struct.mvsw61xx_state* @get_state(%struct.switch_dev* %9)
  store %struct.mvsw61xx_state* %10, %struct.mvsw61xx_state** %3, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %12 = load i32, i32* @VTU_OP, align 4
  %13 = call i32 @MV_GLOBALREG(i32 %12)
  %14 = load i32, i32* @MV_VTUOP_INPROGRESS, align 4
  %15 = call i32 @mvsw61xx_wait_mask_s(%struct.switch_dev* %11, i32 %13, i32 %14, i32 0)
  %16 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %17 = load i32, i32* @VTU_OP, align 4
  %18 = call i32 @MV_GLOBALREG(i32 %17)
  %19 = load i32, i32* @MV_VTUOP_INPROGRESS, align 4
  %20 = load i32, i32* @MV_VTUOP_PURGE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @sw16(%struct.switch_dev* %16, i32 %18, i32 %21)
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %190, %1
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %26 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %193

29:                                               ; preds = %23
  %30 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %3, align 8
  %31 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %29
  %40 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %3, align 8
  %41 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %39
  %50 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %3, align 8
  %51 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %49, %39, %29
  br label %190

60:                                               ; preds = %49
  %61 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %62 = load i32, i32* @VTU_OP, align 4
  %63 = call i32 @MV_GLOBALREG(i32 %62)
  %64 = load i32, i32* @MV_VTUOP_INPROGRESS, align 4
  %65 = call i32 @mvsw61xx_wait_mask_s(%struct.switch_dev* %61, i32 %63, i32 %64, i32 0)
  %66 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %3, align 8
  %67 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 65535
  store i32 %74, i32* %6, align 4
  %75 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %3, align 8
  %76 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %82, 16
  %84 = and i32 %83, 65535
  store i32 %84, i32* %7, align 4
  %85 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %86 = load i32, i32* @VTU_VID, align 4
  %87 = call i32 @MV_GLOBALREG(i32 %86)
  %88 = load i32, i32* @MV_VTU_VID_VALID, align 4
  %89 = call i32 @sw16(%struct.switch_dev* %85, i32 %87, i32 %88)
  %90 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %91 = load i32, i32* @VTU_SID, align 4
  %92 = call i32 @MV_GLOBALREG(i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @sw16(%struct.switch_dev* %90, i32 %92, i32 %93)
  %95 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %96 = load i32, i32* @VTU_DATA1, align 4
  %97 = call i32 @MV_GLOBALREG(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @sw16(%struct.switch_dev* %95, i32 %97, i32 %98)
  %100 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %101 = load i32, i32* @VTU_DATA2, align 4
  %102 = call i32 @MV_GLOBALREG(i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @sw16(%struct.switch_dev* %100, i32 %102, i32 %103)
  %105 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %106 = load i32, i32* @VTU_DATA3, align 4
  %107 = call i32 @MV_GLOBALREG(i32 %106)
  %108 = call i32 @sw16(%struct.switch_dev* %105, i32 %107, i32 0)
  %109 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %110 = load i32, i32* @VTU_OP, align 4
  %111 = call i32 @MV_GLOBALREG(i32 %110)
  %112 = load i32, i32* @MV_VTUOP_INPROGRESS, align 4
  %113 = load i32, i32* @MV_VTUOP_STULOAD, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @sw16(%struct.switch_dev* %109, i32 %111, i32 %114)
  %116 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %117 = load i32, i32* @VTU_OP, align 4
  %118 = call i32 @MV_GLOBALREG(i32 %117)
  %119 = load i32, i32* @MV_VTUOP_INPROGRESS, align 4
  %120 = call i32 @mvsw61xx_wait_mask_s(%struct.switch_dev* %116, i32 %118, i32 %119, i32 0)
  %121 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %3, align 8
  %122 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 65535
  store i32 %129, i32* %4, align 4
  %130 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %3, align 8
  %131 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 16
  %139 = and i32 %138, 65535
  store i32 %139, i32* %5, align 4
  %140 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %141 = load i32, i32* @VTU_VID, align 4
  %142 = call i32 @MV_GLOBALREG(i32 %141)
  %143 = load i32, i32* @MV_VTU_VID_VALID, align 4
  %144 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %3, align 8
  %145 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %143, %151
  %153 = call i32 @sw16(%struct.switch_dev* %140, i32 %142, i32 %152)
  %154 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %155 = load i32, i32* @VTU_SID, align 4
  %156 = call i32 @MV_GLOBALREG(i32 %155)
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @sw16(%struct.switch_dev* %154, i32 %156, i32 %157)
  %159 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %160 = load i32, i32* @VTU_FID, align 4
  %161 = call i32 @MV_GLOBALREG(i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @sw16(%struct.switch_dev* %159, i32 %161, i32 %162)
  %164 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %165 = load i32, i32* @VTU_DATA1, align 4
  %166 = call i32 @MV_GLOBALREG(i32 %165)
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @sw16(%struct.switch_dev* %164, i32 %166, i32 %167)
  %169 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %170 = load i32, i32* @VTU_DATA2, align 4
  %171 = call i32 @MV_GLOBALREG(i32 %170)
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @sw16(%struct.switch_dev* %169, i32 %171, i32 %172)
  %174 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %175 = load i32, i32* @VTU_DATA3, align 4
  %176 = call i32 @MV_GLOBALREG(i32 %175)
  %177 = call i32 @sw16(%struct.switch_dev* %174, i32 %176, i32 0)
  %178 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %179 = load i32, i32* @VTU_OP, align 4
  %180 = call i32 @MV_GLOBALREG(i32 %179)
  %181 = load i32, i32* @MV_VTUOP_INPROGRESS, align 4
  %182 = load i32, i32* @MV_VTUOP_LOAD, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @sw16(%struct.switch_dev* %178, i32 %180, i32 %183)
  %185 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %186 = load i32, i32* @VTU_OP, align 4
  %187 = call i32 @MV_GLOBALREG(i32 %186)
  %188 = load i32, i32* @MV_VTUOP_INPROGRESS, align 4
  %189 = call i32 @mvsw61xx_wait_mask_s(%struct.switch_dev* %185, i32 %187, i32 %188, i32 0)
  br label %190

190:                                              ; preds = %60, %59
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %23

193:                                              ; preds = %23
  ret i32 0
}

declare dso_local %struct.mvsw61xx_state* @get_state(%struct.switch_dev*) #1

declare dso_local i32 @mvsw61xx_wait_mask_s(%struct.switch_dev*, i32, i32, i32) #1

declare dso_local i32 @MV_GLOBALREG(i32) #1

declare dso_local i32 @sw16(%struct.switch_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
