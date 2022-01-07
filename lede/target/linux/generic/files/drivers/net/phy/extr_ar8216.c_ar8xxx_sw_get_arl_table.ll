; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_arl_table.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_arl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ar8xxx_priv = type { i8*, i32, %struct.arl_entry*, %struct.TYPE_3__, %struct.ar8xxx_chip*, %struct.mii_bus* }
%struct.arl_entry = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ar8xxx_chip = type { i32 (%struct.ar8xxx_priv*, %struct.arl_entry*, i32*, i32)* }
%struct.mii_bus = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@AR8XXX_ARL_INITIALIZE = common dso_local global i32 0, align 4
@AR8XXX_NUM_ARL_RECORDS = common dso_local global i32 0, align 4
@AR8XXX_ARL_GET_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"address resolution table\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Too many entries found, displaying the first %d only!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Port %d: MAC %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_sw_get_arl_table(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ar8xxx_priv*, align 8
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca %struct.ar8xxx_chip*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.arl_entry*, align 8
  %17 = alloca %struct.arl_entry*, align 8
  %18 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %19 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %20 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %19)
  store %struct.ar8xxx_priv* %20, %struct.ar8xxx_priv** %8, align 8
  %21 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %22 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %21, i32 0, i32 5
  %23 = load %struct.mii_bus*, %struct.mii_bus** %22, align 8
  store %struct.mii_bus* %23, %struct.mii_bus** %9, align 8
  %24 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %25 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %24, i32 0, i32 4
  %26 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %25, align 8
  store %struct.ar8xxx_chip* %26, %struct.ar8xxx_chip** %10, align 8
  %27 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %28 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  store i32 0, i32* %15, align 4
  %30 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %10, align 8
  %31 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %30, i32 0, i32 0
  %32 = load i32 (%struct.ar8xxx_priv*, %struct.arl_entry*, i32*, i32)*, i32 (%struct.ar8xxx_priv*, %struct.arl_entry*, i32*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.ar8xxx_priv*, %struct.arl_entry*, i32*, i32)* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %241

37:                                               ; preds = %3
  %38 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %39 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %42 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %10, align 8
  %45 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %44, i32 0, i32 0
  %46 = load i32 (%struct.ar8xxx_priv*, %struct.arl_entry*, i32*, i32)*, i32 (%struct.ar8xxx_priv*, %struct.arl_entry*, i32*, i32)** %45, align 8
  %47 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %48 = load i32, i32* @AR8XXX_ARL_INITIALIZE, align 4
  %49 = call i32 %46(%struct.ar8xxx_priv* %47, %struct.arl_entry* null, i32* null, i32 %48)
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %112, %37
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @AR8XXX_NUM_ARL_RECORDS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %115

54:                                               ; preds = %50
  %55 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %56 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %55, i32 0, i32 2
  %57 = load %struct.arl_entry*, %struct.arl_entry** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %57, i64 %59
  store %struct.arl_entry* %60, %struct.arl_entry** %16, align 8
  br label %61

61:                                               ; preds = %105, %54
  %62 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %10, align 8
  %63 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %62, i32 0, i32 0
  %64 = load i32 (%struct.ar8xxx_priv*, %struct.arl_entry*, i32*, i32)*, i32 (%struct.ar8xxx_priv*, %struct.arl_entry*, i32*, i32)** %63, align 8
  %65 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %66 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %67 = load i32, i32* @AR8XXX_ARL_GET_NEXT, align 4
  %68 = call i32 %64(%struct.ar8xxx_priv* %65, %struct.arl_entry* %66, i32* %18, i32 %67)
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %115

72:                                               ; preds = %61
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %108, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %73
  %78 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %79 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %78, i32 0, i32 2
  %80 = load %struct.arl_entry*, %struct.arl_entry** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %80, i64 %82
  store %struct.arl_entry* %83, %struct.arl_entry** %17, align 8
  %84 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %85 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.arl_entry*, %struct.arl_entry** %17, align 8
  %88 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @memcmp(i32* %86, i32* %89, i32 8)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %77
  %93 = load %struct.arl_entry*, %struct.arl_entry** %17, align 8
  %94 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = xor i32 %95, -1
  %97 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %98 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %102 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %92
  br label %61

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %77
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %73

111:                                              ; preds = %73
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %50

115:                                              ; preds = %71, %50
  %116 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %117 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 8, %124
  %126 = trunc i64 %125 to i32
  %127 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %122, i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @AR8XXX_NUM_ARL_RECORDS, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %115
  %136 = load i8*, i8** %11, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 8, %141
  %143 = trunc i64 %142 to i32
  %144 = load i32, i32* @AR8XXX_NUM_ARL_RECORDS, align 4
  %145 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %139, i32 %143, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %135, %115
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %227, %150
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %154 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %230

158:                                              ; preds = %151
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %223, %158
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %226

163:                                              ; preds = %159
  %164 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %165 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %164, i32 0, i32 2
  %166 = load %struct.arl_entry*, %struct.arl_entry** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %166, i64 %168
  store %struct.arl_entry* %169, %struct.arl_entry** %16, align 8
  %170 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %171 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @BIT(i32 %173)
  %175 = and i32 %172, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %163
  br label %223

178:                                              ; preds = %163
  %179 = load i8*, i8** %11, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = sub i64 8, %184
  %186 = trunc i64 %185 to i32
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %189 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 5
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %194 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %199 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %204 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %209 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.arl_entry*, %struct.arl_entry** %16, align 8
  %214 = getelementptr inbounds %struct.arl_entry, %struct.arl_entry* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %182, i32 %186, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %192, i32 %197, i32 %202, i32 %207, i32 %212, i32 %217)
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %218
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %15, align 4
  br label %223

223:                                              ; preds = %178, %177
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  br label %159

226:                                              ; preds = %159
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  br label %151

230:                                              ; preds = %151
  %231 = load i8*, i8** %11, align 8
  %232 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %233 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  store i8* %231, i8** %234, align 8
  %235 = load i32, i32* %15, align 4
  %236 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %237 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %239 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %238, i32 0, i32 1
  %240 = call i32 @mutex_unlock(i32* %239)
  store i32 0, i32* %4, align 4
  br label %241

241:                                              ; preds = %230, %34
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
