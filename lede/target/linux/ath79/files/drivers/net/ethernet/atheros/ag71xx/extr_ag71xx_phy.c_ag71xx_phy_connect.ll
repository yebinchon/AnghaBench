; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_connect.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_9__*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to register fixed PHY link: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not find valid phy node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ag71xx_phy_link_adjust = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not connect to PHY device\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"connected to PHY at %s [uid=%08x, driver=%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ag71xx_phy_connect(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %7 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %8 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i64 @of_phy_is_fixed_link(%struct.device_node* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call i32 @of_phy_register_fixed_link(%struct.device_node* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %23 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %94

29:                                               ; preds = %16
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call %struct.device_node* @of_node_get(%struct.device_node* %30)
  store %struct.device_node* %31, %struct.device_node** %5, align 8
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %34, %struct.device_node** %5, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %40 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %94

46:                                               ; preds = %35
  %47 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %48 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = load i32, i32* @ag71xx_phy_link_adjust, align 4
  %52 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %53 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_9__* @of_phy_connect(i32 %49, %struct.device_node* %50, i32 %51, i32 0, i32 %54)
  %56 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %57 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %56, i32 0, i32 0
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %57, align 8
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = call i32 @of_node_put(%struct.device_node* %58)
  %60 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %61 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %46
  %65 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %66 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %94

72:                                               ; preds = %46
  %73 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %74 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %78 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = call i32 @phydev_name(%struct.TYPE_9__* %79)
  %81 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %82 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %87 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_info(%struct.TYPE_10__* %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %85, i32 %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %72, %64, %38, %21
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @of_phy_connect(i32, %struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i32, i32) #1

declare dso_local i32 @phydev_name(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
