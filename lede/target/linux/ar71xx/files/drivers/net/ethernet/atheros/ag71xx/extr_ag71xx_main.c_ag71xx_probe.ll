; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.ag71xx_platform_data* }
%struct.ag71xx_platform_data = type { i32, i32, i32, i32, i64, i64, i64, i32* }
%struct.net_device = type { i64, i32, i32, i32, i32*, i32* }
%struct.resource = type { i64, i64 }
%struct.ag71xx = type { i64, i64, %struct.TYPE_11__*, i32, %struct.TYPE_9__, i64, i64, %struct.TYPE_8__, %struct.TYPE_10__, i32, i32, i32, %struct.net_device*, %struct.platform_device* }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"no platform data specified\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"no MII bus device specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"alloc_etherdev failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ag71xx_msg_level = common dso_local global i32 0, align 4
@AG71XX_DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"mac_base\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no mac_base resource found\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unable to ioremap mac_base\0A\00", align 1
@ag71xx_interrupt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"unable to request IRQ %d\0A\00", align 1
@ag71xx_netdev_ops = common dso_local global i32 0, align 4
@ag71xx_ethtool_ops = common dso_local global i32 0, align 4
@ag71xx_restart_work_func = common dso_local global i32 0, align 4
@ag71xx_oom_timer_handler = common dso_local global i32 0, align 4
@AG71XX_TX_RING_SIZE_DEFAULT = common dso_local global i32 0, align 4
@AG71XX_RX_RING_SIZE_DEFAULT = common dso_local global i32 0, align 4
@AG71XX_TX_RING_SPLIT = common dso_local global i32 0, align 4
@AG71XX_TX_RING_DS_PER_PKT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ag71xx_poll = common dso_local global i32 0, align 4
@AG71XX_NAPI_WEIGHT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"unable to register net device\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"%s: Atheros AG71xx at 0x%08lx, irq %d, mode:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ag71xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.ag71xx*, align 8
  %7 = alloca %struct.ag71xx_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %12, align 8
  store %struct.ag71xx_platform_data* %13, %struct.ag71xx_platform_data** %7, align 8
  %14 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %15 = icmp ne %struct.ag71xx_platform_data* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %319

22:                                               ; preds = %1
  %23 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %24 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %29 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %319

38:                                               ; preds = %27, %22
  %39 = call %struct.net_device* @alloc_etherdev(i32 120)
  store %struct.net_device* %39, %struct.net_device** %4, align 8
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %319

48:                                               ; preds = %38
  %49 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %50 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %55 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %323

61:                                               ; preds = %53
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @SET_NETDEV_DEV(%struct.net_device* %62, %struct.TYPE_12__* %64)
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %66)
  store %struct.ag71xx* %67, %struct.ag71xx** %6, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %70 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %69, i32 0, i32 13
  store %struct.platform_device* %68, %struct.platform_device** %70, align 8
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %73 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %72, i32 0, i32 12
  store %struct.net_device* %71, %struct.net_device** %73, align 8
  %74 = load i32, i32* @ag71xx_msg_level, align 4
  %75 = load i32, i32* @AG71XX_DEFAULT_MSG_ENABLE, align 4
  %76 = call i32 @netif_msg_init(i32 %74, i32 %75)
  %77 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %78 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %80 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %79, i32 0, i32 10
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load i32, i32* @IORESOURCE_MEM, align 4
  %84 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %82, i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %84, %struct.resource** %5, align 8
  %85 = load %struct.resource*, %struct.resource** %5, align 8
  %86 = icmp ne %struct.resource* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %61
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %319

93:                                               ; preds = %61
  %94 = load %struct.resource*, %struct.resource** %5, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.resource*, %struct.resource** %5, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.resource*, %struct.resource** %5, align 8
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = add nsw i64 %103, 1
  %105 = call i64 @ioremap_nocache(i64 %96, i64 %104)
  %106 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %107 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %109 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %93
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %316

118:                                              ; preds = %93
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = call i32 @platform_get_irq(%struct.platform_device* %119, i32 0)
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.net_device*, %struct.net_device** %4, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ag71xx_interrupt, align 4
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = call i32 @request_irq(i32 %125, i32 %126, i32 0, i32 %129, %struct.net_device* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %118
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  br label %311

141:                                              ; preds = %118
  %142 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %143 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.net_device*, %struct.net_device** %4, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 5
  store i32* @ag71xx_netdev_ops, i32** %148, align 8
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 4
  store i32* @ag71xx_ethtool_ops, i32** %150, align 8
  %151 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %152 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %151, i32 0, i32 9
  %153 = load i32, i32* @ag71xx_restart_work_func, align 4
  %154 = call i32 @INIT_DELAYED_WORK(i32* %152, i32 %153)
  %155 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %156 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %155, i32 0, i32 8
  %157 = call i32 @init_timer(%struct.TYPE_10__* %156)
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = ptrtoint %struct.net_device* %158 to i64
  %160 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %161 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %160, i32 0, i32 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  %163 = load i32, i32* @ag71xx_oom_timer_handler, align 4
  %164 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %165 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %164, i32 0, i32 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 8
  %167 = load i32, i32* @AG71XX_TX_RING_SIZE_DEFAULT, align 4
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* @AG71XX_RX_RING_SIZE_DEFAULT, align 4
  %169 = call i8* @ag71xx_ring_size_order(i32 %168)
  %170 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %171 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  %173 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %174 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %177 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %176, i32 0, i32 6
  store i64 %175, i64* %177, align 8
  %178 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %179 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %182 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %181, i32 0, i32 5
  store i64 %180, i64* %182, align 8
  %183 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %184 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %141
  %188 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %189 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* @AG71XX_TX_RING_SPLIT, align 4
  %194 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %195 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  store i32 %193, i32* %196, align 8
  %197 = load i32, i32* @AG71XX_TX_RING_DS_PER_PKT, align 4
  %198 = load i32, i32* %8, align 4
  %199 = mul nsw i32 %198, %197
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %192, %187, %141
  %201 = load i32, i32* %8, align 4
  %202 = call i8* @ag71xx_ring_size_order(i32 %201)
  %203 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %204 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  store i8* %202, i8** %205, align 8
  %206 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %207 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %206, i32 0, i32 1
  %208 = load i32, i32* @GFP_KERNEL, align 4
  %209 = call %struct.TYPE_11__* @dma_alloc_coherent(i32* null, i32 4, i64* %207, i32 %208)
  %210 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %211 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %210, i32 0, i32 2
  store %struct.TYPE_11__* %209, %struct.TYPE_11__** %211, align 8
  %212 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %213 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %212, i32 0, i32 2
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = icmp ne %struct.TYPE_11__* %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %200
  br label %305

217:                                              ; preds = %200
  %218 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %219 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %218, i32 0, i32 2
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 2
  store i64 0, i64* %221, align 8
  %222 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %223 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %222, i32 0, i32 2
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  store i64 0, i64* %225, align 8
  %226 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %227 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %230 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %229, i32 0, i32 2
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  store i64 %228, i64* %232, align 8
  %233 = load %struct.net_device*, %struct.net_device** %4, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %237 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @ETH_ALEN, align 4
  %240 = call i32 @memcpy(i32 %235, i32 %238, i32 %239)
  %241 = load %struct.net_device*, %struct.net_device** %4, align 8
  %242 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %243 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %242, i32 0, i32 3
  %244 = load i32, i32* @ag71xx_poll, align 4
  %245 = load i32, i32* @AG71XX_NAPI_WEIGHT, align 4
  %246 = call i32 @netif_napi_add(%struct.net_device* %241, i32* %243, i32 %244, i32 %245)
  %247 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %248 = call i32 @ag71xx_dump_regs(%struct.ag71xx* %247)
  %249 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %250 = call i32 @ag71xx_hw_init(%struct.ag71xx* %249)
  %251 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %252 = call i32 @ag71xx_dump_regs(%struct.ag71xx* %251)
  %253 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %254 = call i32 @ag71xx_phy_connect(%struct.ag71xx* %253)
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %217
  br label %297

258:                                              ; preds = %217
  %259 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %260 = call i32 @ag71xx_debugfs_init(%struct.ag71xx* %259)
  store i32 %260, i32* %9, align 4
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  br label %294

264:                                              ; preds = %258
  %265 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %266 = load %struct.net_device*, %struct.net_device** %4, align 8
  %267 = call i32 @platform_set_drvdata(%struct.platform_device* %265, %struct.net_device* %266)
  %268 = load %struct.net_device*, %struct.net_device** %4, align 8
  %269 = call i32 @register_netdev(%struct.net_device* %268)
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %264
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %273, i32 0, i32 0
  %275 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %274, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %291

276:                                              ; preds = %264
  %277 = load %struct.net_device*, %struct.net_device** %4, align 8
  %278 = getelementptr inbounds %struct.net_device, %struct.net_device* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.net_device*, %struct.net_device** %4, align 8
  %281 = getelementptr inbounds %struct.net_device, %struct.net_device* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.net_device*, %struct.net_device** %4, align 8
  %284 = getelementptr inbounds %struct.net_device, %struct.net_device* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %287 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @ag71xx_get_phy_if_mode_name(i32 %288)
  %290 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %279, i64 %282, i32 %285, i32 %289)
  store i32 0, i32* %2, align 4
  br label %323

291:                                              ; preds = %272
  %292 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %293 = call i32 @ag71xx_debugfs_exit(%struct.ag71xx* %292)
  br label %294

294:                                              ; preds = %291, %263
  %295 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %296 = call i32 @ag71xx_phy_disconnect(%struct.ag71xx* %295)
  br label %297

297:                                              ; preds = %294, %257
  %298 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %299 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %298, i32 0, i32 2
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %299, align 8
  %301 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %302 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @dma_free_coherent(i32* null, i32 4, %struct.TYPE_11__* %300, i64 %303)
  br label %305

305:                                              ; preds = %297, %216
  %306 = load %struct.net_device*, %struct.net_device** %4, align 8
  %307 = getelementptr inbounds %struct.net_device, %struct.net_device* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.net_device*, %struct.net_device** %4, align 8
  %310 = call i32 @free_irq(i32 %308, %struct.net_device* %309)
  br label %311

311:                                              ; preds = %305, %134
  %312 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %313 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @iounmap(i64 %314)
  br label %316

316:                                              ; preds = %311, %112
  %317 = load %struct.net_device*, %struct.net_device** %4, align 8
  %318 = call i32 @kfree(%struct.net_device* %317)
  br label %319

319:                                              ; preds = %316, %87, %42, %32, %16
  %320 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %321 = call i32 @platform_set_drvdata(%struct.platform_device* %320, %struct.net_device* null)
  %322 = load i32, i32* %9, align 4
  store i32 %322, i32* %2, align 4
  br label %323

323:                                              ; preds = %319, %276, %58
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_12__*) #1

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i64 @ioremap_nocache(i64, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_10__*) #1

declare dso_local i8* @ag71xx_ring_size_order(i32) #1

declare dso_local %struct.TYPE_11__* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @ag71xx_dump_regs(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_hw_init(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_phy_connect(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_debugfs_init(%struct.ag71xx*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @ag71xx_get_phy_if_mode_name(i32) #1

declare dso_local i32 @ag71xx_debugfs_exit(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_phy_disconnect(%struct.ag71xx*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
