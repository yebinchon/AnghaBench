; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_get_port_mask.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_get_port_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.mvsw61xx_state = type { i8* }

@VLANMAP = common dso_local global i32 0, align 4
@MV_PORTS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"0x%04x: \00", align 1
@MV_PORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @mvsw61xx_get_port_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_get_port_mask(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_attr*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca %struct.mvsw61xx_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %5, align 8
  store %struct.switch_val* %2, %struct.switch_val** %6, align 8
  %13 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %14 = call %struct.mvsw61xx_state* @get_state(%struct.switch_dev* %13)
  store %struct.mvsw61xx_state* %14, %struct.mvsw61xx_state** %7, align 8
  %15 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %7, align 8
  %16 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %19 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %22 = load i32, i32* @VLANMAP, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @MV_PORTREG(i32 %22, i32 %23)
  %25 = call i32 @sr16(%struct.switch_dev* %21, i32 %24)
  %26 = load i32, i32* @MV_PORTS_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %65, %3
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @MV_PORTS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %64

50:                                               ; preds = %35
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %54, %50
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %31

68:                                               ; preds = %31
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %71 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  ret i32 0
}

declare dso_local %struct.mvsw61xx_state* @get_state(%struct.switch_dev*) #1

declare dso_local i32 @sr16(%struct.switch_dev*, i32) #1

declare dso_local i32 @MV_PORTREG(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
