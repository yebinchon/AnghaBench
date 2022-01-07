; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_stat_irq.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_stat_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.sw = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32 }

@MAC2_RX_ERROR = common dso_local global i32 0, align 4
@switch_port_tab = common dso_local global %struct.TYPE_9__** null, align 8
@MAC1_RX_ERROR = common dso_local global i32 0, align 4
@MAC0_RX_ERROR = common dso_local global i32 0, align 4
@MAC0_STATUS_CHANGE = common dso_local global i32 0, align 4
@MAC1_STATUS_CHANGE = common dso_local global i32 0, align 4
@MAC2_STATUS_CHANGE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eth_stat_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.sw* @netdev_priv(%struct.net_device* %11)
  store %struct.sw* %12, %struct.sw** %6, align 8
  %13 = load %struct.sw*, %struct.sw** %6, align 8
  %14 = getelementptr inbounds %struct.sw, %struct.sw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = call i32 @__raw_readl(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sw*, %struct.sw** %6, align 8
  %19 = getelementptr inbounds %struct.sw, %struct.sw* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = call i32 @__raw_writel(i32 -1, i32* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MAC2_RX_ERROR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %27, %2
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MAC1_RX_ERROR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %37
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MAC0_RX_ERROR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %58, i64 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %57, %52
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @MAC0_STATUS_CHANGE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %135

72:                                               ; preds = %67
  %73 = load %struct.sw*, %struct.sw** %6, align 8
  %74 = getelementptr inbounds %struct.sw, %struct.sw* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i32 @__raw_readl(i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 1
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = ashr i32 %88, 4
  %90 = and i32 %89, 1
  %91 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %91, i64 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32 %90, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = ashr i32 %97, 2
  %99 = and i32 %98, 3
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %108

101:                                              ; preds = %72
  %102 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %102, i64 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i32 1000, i32* %107, align 4
  br label %128

108:                                              ; preds = %72
  %109 = load i32, i32* %7, align 4
  %110 = ashr i32 %109, 2
  %111 = and i32 %110, 3
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %114, i64 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  store i32 100, i32* %119, align 4
  br label %127

120:                                              ; preds = %108
  %121 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %121, i64 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i32 10, i32* %126, align 4
  br label %127

127:                                              ; preds = %120, %113
  br label %128

128:                                              ; preds = %127, %101
  %129 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %129, i64 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = call i32 @cns3xxx_adjust_link(%struct.TYPE_10__* %133)
  br label %135

135:                                              ; preds = %128, %67
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @MAC1_STATUS_CHANGE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %203

140:                                              ; preds = %135
  %141 = load %struct.sw*, %struct.sw** %6, align 8
  %142 = getelementptr inbounds %struct.sw, %struct.sw* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = call i32 @__raw_readl(i32* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = and i32 %148, 1
  %150 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %150, i64 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 %149, i32* %155, align 4
  %156 = load i32, i32* %7, align 4
  %157 = ashr i32 %156, 4
  %158 = and i32 %157, 1
  %159 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %159, i64 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i32 %158, i32* %164, align 4
  %165 = load i32, i32* %7, align 4
  %166 = ashr i32 %165, 2
  %167 = and i32 %166, 3
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %176

169:                                              ; preds = %140
  %170 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %170, i64 1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  store i32 1000, i32* %175, align 4
  br label %196

176:                                              ; preds = %140
  %177 = load i32, i32* %7, align 4
  %178 = ashr i32 %177, 2
  %179 = and i32 %178, 3
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %182, i64 1
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  store i32 100, i32* %187, align 4
  br label %195

188:                                              ; preds = %176
  %189 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %189, i64 1
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  store i32 10, i32* %194, align 4
  br label %195

195:                                              ; preds = %188, %181
  br label %196

196:                                              ; preds = %195, %169
  %197 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %197, i64 1
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = call i32 @cns3xxx_adjust_link(%struct.TYPE_10__* %201)
  br label %203

203:                                              ; preds = %196, %135
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @MAC2_STATUS_CHANGE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %271

208:                                              ; preds = %203
  %209 = load %struct.sw*, %struct.sw** %6, align 8
  %210 = getelementptr inbounds %struct.sw, %struct.sw* %209, i32 0, i32 0
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = call i32 @__raw_readl(i32* %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = and i32 %216, 1
  %218 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %218, i64 3
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  store i32 %217, i32* %223, align 4
  %224 = load i32, i32* %7, align 4
  %225 = ashr i32 %224, 4
  %226 = and i32 %225, 1
  %227 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %227, i64 3
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  store i32 %226, i32* %232, align 4
  %233 = load i32, i32* %7, align 4
  %234 = ashr i32 %233, 2
  %235 = and i32 %234, 3
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %237, label %244

237:                                              ; preds = %208
  %238 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %238, i64 3
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  store i32 1000, i32* %243, align 4
  br label %264

244:                                              ; preds = %208
  %245 = load i32, i32* %7, align 4
  %246 = ashr i32 %245, 2
  %247 = and i32 %246, 3
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %256

249:                                              ; preds = %244
  %250 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %250, i64 3
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  store i32 100, i32* %255, align 4
  br label %263

256:                                              ; preds = %244
  %257 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %257, i64 3
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  store i32 10, i32* %262, align 4
  br label %263

263:                                              ; preds = %256, %249
  br label %264

264:                                              ; preds = %263, %237
  %265 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @switch_port_tab, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %265, i64 3
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = call i32 @cns3xxx_adjust_link(%struct.TYPE_10__* %269)
  br label %271

271:                                              ; preds = %264, %203
  %272 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %272
}

declare dso_local %struct.sw* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @cns3xxx_adjust_link(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
