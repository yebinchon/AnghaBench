; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_set_mac.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.port = type { i32, %struct.sw* }
%struct.sw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.sockaddr = type { i32* }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @eth_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.port*, align 8
  %7 = alloca %struct.sw*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.port* @netdev_priv(%struct.net_device* %10)
  store %struct.port* %11, %struct.port** %6, align 8
  %12 = load %struct.port*, %struct.port** %6, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 1
  %14 = load %struct.sw*, %struct.sw** %13, align 8
  store %struct.sw* %14, %struct.sw** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.sockaddr*
  store %struct.sockaddr* %16, %struct.sockaddr** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @is_valid_ether_addr(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EADDRNOTAVAIL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %255

25:                                               ; preds = %2
  %26 = load %struct.port*, %struct.port** %6, align 8
  %27 = getelementptr inbounds %struct.port, %struct.port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.port*, %struct.port** %6, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 16
  %35 = or i32 %34, 2048
  %36 = load %struct.sw*, %struct.sw** %7, align 8
  %37 = getelementptr inbounds %struct.sw, %struct.sw* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @__raw_writel(i32 %35, i32* %41)
  br label %57

43:                                               ; preds = %25
  %44 = load %struct.port*, %struct.port** %6, align 8
  %45 = getelementptr inbounds %struct.port, %struct.port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = shl i32 %47, 16
  %49 = or i32 %48, 2048
  %50 = load %struct.sw*, %struct.sw** %7, align 8
  %51 = getelementptr inbounds %struct.sw, %struct.sw* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @__raw_writel(i32 %49, i32* %55)
  br label %57

57:                                               ; preds = %43, %30
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 24
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 16
  %70 = or i32 %63, %69
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %70, %76
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %77, %82
  %84 = load %struct.sw*, %struct.sw** %7, align 8
  %85 = getelementptr inbounds %struct.sw, %struct.sw* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = call i32 @__raw_writel(i32 %83, i32* %89)
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 24
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 16
  %103 = or i32 %96, %102
  %104 = or i32 %103, 2
  %105 = load %struct.sw*, %struct.sw** %7, align 8
  %106 = getelementptr inbounds %struct.sw, %struct.sw* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = call i32 @__raw_writel(i32 %104, i32* %110)
  %112 = load %struct.sw*, %struct.sw** %7, align 8
  %113 = getelementptr inbounds %struct.sw, %struct.sw* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @__raw_writel(i32 524288, i32* %115)
  br label %117

117:                                              ; preds = %130, %57
  %118 = load %struct.sw*, %struct.sw** %7, align 8
  %119 = getelementptr inbounds %struct.sw, %struct.sw* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = call i32 @__raw_readl(i32* %121)
  %123 = and i32 %122, 2097152
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 5000
  br label %128

128:                                              ; preds = %125, %117
  %129 = phi i1 [ false, %117 ], [ %127, %125 ]
  br i1 %129, label %130, label %134

130:                                              ; preds = %128
  %131 = call i32 @udelay(i32 1)
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %117

134:                                              ; preds = %128
  store i32 0, i32* %9, align 4
  %135 = load %struct.net_device*, %struct.net_device** %4, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %139 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @memcpy(i32* %137, i32* %140, i32 %143)
  %145 = load %struct.port*, %struct.port** %6, align 8
  %146 = getelementptr inbounds %struct.port, %struct.port* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %149, label %162

149:                                              ; preds = %134
  %150 = load %struct.port*, %struct.port** %6, align 8
  %151 = getelementptr inbounds %struct.port, %struct.port* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = shl i32 %152, 16
  %154 = or i32 %153, 2048
  %155 = load %struct.sw*, %struct.sw** %7, align 8
  %156 = getelementptr inbounds %struct.sw, %struct.sw* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = call i32 @__raw_writel(i32 %154, i32* %160)
  br label %176

162:                                              ; preds = %134
  %163 = load %struct.port*, %struct.port** %6, align 8
  %164 = getelementptr inbounds %struct.port, %struct.port* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  %167 = shl i32 %166, 16
  %168 = or i32 %167, 2048
  %169 = load %struct.sw*, %struct.sw** %7, align 8
  %170 = getelementptr inbounds %struct.sw, %struct.sw* %169, i32 0, i32 0
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = call i32 @__raw_writel(i32 %168, i32* %174)
  br label %176

176:                                              ; preds = %162, %149
  %177 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %178 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 24
  %183 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %184 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 16
  %189 = or i32 %182, %188
  %190 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %191 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %194, 8
  %196 = or i32 %189, %195
  %197 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %198 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %196, %201
  %203 = load %struct.sw*, %struct.sw** %7, align 8
  %204 = getelementptr inbounds %struct.sw, %struct.sw* %203, i32 0, i32 0
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = call i32 @__raw_writel(i32 %202, i32* %208)
  %210 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %211 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 24
  %216 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %217 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 5
  %220 = load i32, i32* %219, align 4
  %221 = shl i32 %220, 16
  %222 = or i32 %215, %221
  %223 = or i32 %222, 112
  %224 = or i32 %223, 2
  %225 = load %struct.sw*, %struct.sw** %7, align 8
  %226 = getelementptr inbounds %struct.sw, %struct.sw* %225, i32 0, i32 0
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 2
  %231 = call i32 @__raw_writel(i32 %224, i32* %230)
  %232 = load %struct.sw*, %struct.sw** %7, align 8
  %233 = getelementptr inbounds %struct.sw, %struct.sw* %232, i32 0, i32 0
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = call i32 @__raw_writel(i32 524288, i32* %235)
  br label %237

237:                                              ; preds = %250, %176
  %238 = load %struct.sw*, %struct.sw** %7, align 8
  %239 = getelementptr inbounds %struct.sw, %struct.sw* %238, i32 0, i32 0
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = call i32 @__raw_readl(i32* %241)
  %243 = and i32 %242, 2097152
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %237
  %246 = load i32, i32* %9, align 4
  %247 = icmp slt i32 %246, 5000
  br label %248

248:                                              ; preds = %245, %237
  %249 = phi i1 [ false, %237 ], [ %247, %245 ]
  br i1 %249, label %250, label %254

250:                                              ; preds = %248
  %251 = call i32 @udelay(i32 1)
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %9, align 4
  br label %237

254:                                              ; preds = %248
  store i32 0, i32* %3, align 4
  br label %255

255:                                              ; preds = %254, %22
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local %struct.port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
