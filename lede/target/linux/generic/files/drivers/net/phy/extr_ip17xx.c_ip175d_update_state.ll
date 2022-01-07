; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175d_update_state.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175d_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17xx_state = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17xx_state*)* @ip175d_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175d_update_state(%struct.ip17xx_state* %0) #0 {
  %2 = alloca %struct.ip17xx_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [16 x i32], align 16
  %5 = alloca [16 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip17xx_state* %0, %struct.ip17xx_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %136, %1
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %139

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %15
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %18
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %24 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %13
  %28 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 14, %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @ip_phy_write(%struct.ip17xx_state* %28, i32 22, i32 %30, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %37
  store i32 63, i32* %38, align 4
  br label %136

39:                                               ; preds = %13
  %40 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %41 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %39
  %50 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 14, %51
  %53 = call i32 @ip_phy_write(%struct.ip17xx_state* %50, i32 22, i32 %52, i32 0)
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %136

56:                                               ; preds = %39
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 14, %62
  %64 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %65 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ip_phy_write(%struct.ip17xx_state* %61, i32 22, i32 %63, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %76 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %84
  store i32 %82, i32* %85, align 4
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %132, %56
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 6
  br i1 %88, label %89, label %135

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 1, %94
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %89
  %99 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %100 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = shl i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = load i32, i32* %8, align 4
  %108 = shl i32 1, %107
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %106, %98
  %115 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %116 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = shl i32 1, %118
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load i32, i32* %8, align 4
  %124 = shl i32 1, %123
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %122, %114
  br label %131

131:                                              ; preds = %130, %89
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %86

135:                                              ; preds = %86
  br label %136

136:                                              ; preds = %135, %49, %27
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %10

139:                                              ; preds = %10
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %200, %139
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 8
  br i1 %142, label %143, label %203

143:                                              ; preds = %140
  %144 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = mul nsw i32 2, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %7, align 4
  %152 = mul nsw i32 2, %151
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 8
  %158 = or i32 %150, %157
  %159 = call i32 @ip_phy_write(%struct.ip17xx_state* %144, i32 23, i32 %145, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 8, %163
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 2, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 2, %170
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 8
  %177 = or i32 %169, %176
  %178 = call i32 @ip_phy_write(%struct.ip17xx_state* %162, i32 23, i32 %164, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %9, align 4
  %181 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 16, %182
  %184 = load i32, i32* %7, align 4
  %185 = mul nsw i32 2, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = mul nsw i32 2, %189
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %194, 8
  %196 = or i32 %188, %195
  %197 = call i32 @ip_phy_write(%struct.ip17xx_state* %181, i32 23, i32 %183, i32 %196)
  %198 = load i32, i32* %9, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %143
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %140

203:                                              ; preds = %140
  %204 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @ip_phy_write(%struct.ip17xx_state* %204, i32 22, i32 10, i32 %205)
  %207 = load i32, i32* %9, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %233, %203
  %210 = load i32, i32* %7, align 4
  %211 = icmp slt i32 %210, 6
  br i1 %211, label %212, label %236

212:                                              ; preds = %209
  %213 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 4, %214
  %216 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %217 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %216, i32 0, i32 3
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %220 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %219, i32 0, i32 2
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @ip_phy_write(%struct.ip17xx_state* %213, i32 22, i32 %215, i32 %229)
  %231 = load i32, i32* %9, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %212
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %209

236:                                              ; preds = %209
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* @EIO, align 4
  %241 = sub nsw i32 0, %240
  br label %243

242:                                              ; preds = %236
  br label %243

243:                                              ; preds = %242, %239
  %244 = phi i32 [ %241, %239 ], [ 0, %242 ]
  ret i32 %244
}

declare dso_local i32 @ip_phy_write(%struct.ip17xx_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
