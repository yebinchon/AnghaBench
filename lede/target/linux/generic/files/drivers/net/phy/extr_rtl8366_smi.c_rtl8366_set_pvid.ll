; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_set_pvid.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_set_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, i32)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)* }
%struct.rtl8366_vlan_mc = type { i32, i64, i32, i32 }
%struct.rtl8366_vlan_4k = type { i64, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"all VLAN member configurations are in use\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32)* @rtl8366_set_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366_set_pvid(%struct.rtl8366_smi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl8366_vlan_mc, align 8
  %9 = alloca %struct.rtl8366_vlan_4k, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %62, %3
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %16 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %13
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %21 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)** %23, align 8
  %25 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 %24(%struct.rtl8366_smi* %25, i32 %26, %struct.rtl8366_vlan_mc* %8)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %222

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %39 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)** %41, align 8
  %43 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 %42(%struct.rtl8366_smi* %43, i32 %44, %struct.rtl8366_vlan_mc* %8)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %222

50:                                               ; preds = %37
  %51 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %52 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32 (%struct.rtl8366_smi*, i32, i32)*, i32 (%struct.rtl8366_smi*, i32, i32)** %54, align 8
  %56 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 %55(%struct.rtl8366_smi* %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %222

61:                                               ; preds = %32
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %13

65:                                               ; preds = %13
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %142, %65
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %69 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %145

72:                                               ; preds = %66
  %73 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %74 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)** %76, align 8
  %78 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 %77(%struct.rtl8366_smi* %78, i32 %79, %struct.rtl8366_vlan_mc* %8)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %222

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %141

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %89
  %94 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %95 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)** %97, align 8
  %99 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 %98(%struct.rtl8366_smi* %99, i32 %100, %struct.rtl8366_vlan_4k* %9)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %222

106:                                              ; preds = %93
  %107 = load i32, i32* %7, align 4
  %108 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %9, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 1
  store i64 %110, i64* %111, align 8
  %112 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %9, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 3
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %9, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 2
  store i32 %116, i32* %117, align 8
  %118 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %119 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)** %121, align 8
  %123 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 %122(%struct.rtl8366_smi* %123, i32 %124, %struct.rtl8366_vlan_mc* %8)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %106
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %4, align 4
  br label %222

130:                                              ; preds = %106
  %131 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %132 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32 (%struct.rtl8366_smi*, i32, i32)*, i32 (%struct.rtl8366_smi*, i32, i32)** %134, align 8
  %136 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 %135(%struct.rtl8366_smi* %136, i32 %137, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %4, align 4
  br label %222

141:                                              ; preds = %89, %85
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %66

145:                                              ; preds = %66
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %212, %145
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %149 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %215

152:                                              ; preds = %146
  %153 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @rtl8366_mc_is_used(%struct.rtl8366_smi* %153, i32 %154, i32* %12)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %4, align 4
  br label %222

160:                                              ; preds = %152
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %211, label %163

163:                                              ; preds = %160
  %164 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %165 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 3
  %168 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)** %167, align 8
  %169 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 %168(%struct.rtl8366_smi* %169, i32 %170, %struct.rtl8366_vlan_4k* %9)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %4, align 4
  br label %222

176:                                              ; preds = %163
  %177 = load i32, i32* %7, align 4
  %178 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 0
  store i32 %177, i32* %178, align 8
  %179 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %9, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 1
  store i64 %180, i64* %181, align 8
  %182 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %9, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 3
  store i32 %183, i32* %184, align 4
  %185 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %9, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 2
  store i32 %186, i32* %187, align 8
  %188 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %189 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %188, i32 0, i32 2
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)** %191, align 8
  %193 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 %192(%struct.rtl8366_smi* %193, i32 %194, %struct.rtl8366_vlan_mc* %8)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %176
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %4, align 4
  br label %222

200:                                              ; preds = %176
  %201 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %202 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %201, i32 0, i32 2
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  %205 = load i32 (%struct.rtl8366_smi*, i32, i32)*, i32 (%struct.rtl8366_smi*, i32, i32)** %204, align 8
  %206 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %11, align 4
  %209 = call i32 %205(%struct.rtl8366_smi* %206, i32 %207, i32 %208)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %4, align 4
  br label %222

211:                                              ; preds = %160
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %146

215:                                              ; preds = %146
  %216 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %217 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @dev_err(i32 %218, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %220 = load i32, i32* @ENOSPC, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %215, %200, %198, %174, %158, %130, %128, %104, %83, %50, %48, %30
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @rtl8366_mc_is_used(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
