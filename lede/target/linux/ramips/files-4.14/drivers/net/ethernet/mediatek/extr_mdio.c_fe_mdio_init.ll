; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_mdio_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_mdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.fe_priv = type { %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_10__*, %struct.fe_priv*, i32, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.device_node = type { i8* }

@phy_ralink = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"mdio-bus\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"no %s child node found\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@fe_mdio_reset = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fe_mdio_init(%struct.fe_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  %6 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %7 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %14 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %125

20:                                               ; preds = %12
  %21 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @phy_ralink, i32 0, i32 0))
  %22 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %23 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %22, i32 0, i32 3
  store %struct.TYPE_8__* @phy_ralink, %struct.TYPE_8__** %23, align 8
  %24 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %25 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.device_node* @of_get_child_by_name(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %29, %struct.device_node** %4, align 8
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = icmp ne %struct.device_node* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %20
  %33 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %34 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = call i32 @dev_err(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %125

39:                                               ; preds = %20
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = call i32 @of_device_is_available(%struct.device_node* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %119

44:                                               ; preds = %39
  %45 = call %struct.TYPE_9__* (...) @mdiobus_alloc()
  %46 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %47 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %46, i32 0, i32 0
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %49 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %119

55:                                               ; preds = %44
  %56 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %57 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %59, align 8
  %60 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %61 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %66 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 6
  store i64 %64, i64* %68, align 8
  %69 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %70 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %75 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 5
  store i64 %73, i64* %77, align 8
  %78 = load i32, i32* @fe_mdio_reset, align 4
  %79 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %80 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  store i32 %78, i32* %82, align 8
  %83 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %84 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %85 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  store %struct.fe_priv* %83, %struct.fe_priv** %87, align 8
  %88 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %89 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %92 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %94, align 8
  %95 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %96 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %101 = load %struct.device_node*, %struct.device_node** %4, align 8
  %102 = getelementptr inbounds %struct.device_node, %struct.device_node* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @snprintf(i32 %99, i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  %105 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %106 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load %struct.device_node*, %struct.device_node** %4, align 8
  %109 = call i32 @of_mdiobus_register(%struct.TYPE_9__* %107, %struct.device_node* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %55
  br label %114

113:                                              ; preds = %55
  store i32 0, i32* %2, align 4
  br label %125

114:                                              ; preds = %112
  %115 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %116 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = call i32 @kfree(%struct.TYPE_9__* %117)
  br label %119

119:                                              ; preds = %114, %52, %43
  %120 = load %struct.device_node*, %struct.device_node** %4, align 8
  %121 = call i32 @of_node_put(%struct.device_node* %120)
  %122 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %123 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %122, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %123, align 8
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %119, %113, %32, %19
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local %struct.TYPE_9__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_9__*, %struct.device_node*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
