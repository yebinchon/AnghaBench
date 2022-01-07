; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_multi_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_multi_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i64, i32, i32, i32, i32 (i32, i32)*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.reg_sequence = type { i32, i32, i64 }
%struct.regmap_range_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error in caching of register: %x ret: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, %struct.reg_sequence*, i64)* @_regmap_multi_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regmap_multi_reg_write(%struct.regmap* %0, %struct.reg_sequence* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.reg_sequence*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.regmap_range_node*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.reg_sequence*, align 8
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store %struct.reg_sequence* %1, %struct.reg_sequence** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.regmap*, %struct.regmap** %5, align 8
  %18 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %67, label %21

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %63, %21
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %22
  %28 = load %struct.regmap*, %struct.regmap** %5, align 8
  %29 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %29, i64 %31
  %33 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %35, i64 %37
  %39 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @_regmap_write(%struct.regmap* %28, i32 %34, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %234

46:                                               ; preds = %27
  %47 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %47, i64 %49
  %51 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %55, i64 %57
  %59 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @udelay(i64 %60)
  br label %62

62:                                               ; preds = %54, %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %22

66:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %234

67:                                               ; preds = %3
  %68 = load %struct.regmap*, %struct.regmap** %5, align 8
  %69 = getelementptr inbounds %struct.regmap, %struct.regmap* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %234

76:                                               ; preds = %67
  %77 = load %struct.regmap*, %struct.regmap** %5, align 8
  %78 = getelementptr inbounds %struct.regmap, %struct.regmap* %77, i32 0, i32 6
  %79 = load i32 (i32, i32)*, i32 (i32, i32)** %78, align 8
  %80 = icmp ne i32 (i32, i32)* %79, null
  br i1 %80, label %81, label %121

81:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %117, %81
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %7, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %82
  %88 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %88, i64 %90
  %92 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %10, align 4
  %94 = load %struct.regmap*, %struct.regmap** %5, align 8
  %95 = getelementptr inbounds %struct.regmap, %struct.regmap* %94, i32 0, i32 6
  %96 = load i32 (i32, i32)*, i32 (i32, i32)** %95, align 8
  %97 = load %struct.regmap*, %struct.regmap** %5, align 8
  %98 = getelementptr inbounds %struct.regmap, %struct.regmap* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 %96(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %87
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %234

106:                                              ; preds = %87
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.regmap*, %struct.regmap** %5, align 8
  %109 = getelementptr inbounds %struct.regmap, %struct.regmap* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @IS_ALIGNED(i32 %107, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %234

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %82

120:                                              ; preds = %82
  br label %121

121:                                              ; preds = %120, %76
  %122 = load %struct.regmap*, %struct.regmap** %5, align 8
  %123 = getelementptr inbounds %struct.regmap, %struct.regmap* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %172, label %126

126:                                              ; preds = %121
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %160, %126
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %7, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %127
  %133 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %133, i64 %135
  %137 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %11, align 4
  %139 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %139, i64 %141
  %143 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %12, align 4
  %145 = load %struct.regmap*, %struct.regmap** %5, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @regcache_write(%struct.regmap* %145, i32 %146, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %132
  %152 = load %struct.regmap*, %struct.regmap** %5, align 8
  %153 = getelementptr inbounds %struct.regmap, %struct.regmap* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %155, i32 %156)
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %4, align 4
  br label %234

159:                                              ; preds = %132
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %127

163:                                              ; preds = %127
  %164 = load %struct.regmap*, %struct.regmap** %5, align 8
  %165 = getelementptr inbounds %struct.regmap, %struct.regmap* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.regmap*, %struct.regmap** %5, align 8
  %170 = getelementptr inbounds %struct.regmap, %struct.regmap* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  store i32 0, i32* %4, align 4
  br label %234

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171, %121
  %173 = load %struct.regmap*, %struct.regmap** %5, align 8
  %174 = getelementptr inbounds %struct.regmap, %struct.regmap* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @WARN_ON(i32 %178)
  store i32 0, i32* %8, align 4
  br label %180

180:                                              ; preds = %226, %172
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %7, align 8
  %184 = icmp ult i64 %182, %183
  br i1 %184, label %185, label %229

185:                                              ; preds = %180
  %186 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %186, i64 %188
  %190 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  store i32 %191, i32* %13, align 4
  %192 = load %struct.regmap*, %struct.regmap** %5, align 8
  %193 = load i32, i32* %13, align 4
  %194 = call %struct.regmap_range_node* @_regmap_range_lookup(%struct.regmap* %192, i32 %193)
  store %struct.regmap_range_node* %194, %struct.regmap_range_node** %14, align 8
  %195 = load %struct.regmap_range_node*, %struct.regmap_range_node** %14, align 8
  %196 = icmp ne %struct.regmap_range_node* %195, null
  br i1 %196, label %205, label %197

197:                                              ; preds = %185
  %198 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %198, i64 %200
  %202 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %225

205:                                              ; preds = %197, %185
  %206 = load i64, i64* %7, align 8
  %207 = mul i64 16, %206
  store i64 %207, i64* %15, align 8
  %208 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %209 = load i64, i64* %15, align 8
  %210 = load i32, i32* @GFP_KERNEL, align 4
  %211 = call %struct.reg_sequence* @kmemdup(%struct.reg_sequence* %208, i64 %209, i32 %210)
  store %struct.reg_sequence* %211, %struct.reg_sequence** %16, align 8
  %212 = load %struct.reg_sequence*, %struct.reg_sequence** %16, align 8
  %213 = icmp ne %struct.reg_sequence* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %205
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %4, align 4
  br label %234

217:                                              ; preds = %205
  %218 = load %struct.regmap*, %struct.regmap** %5, align 8
  %219 = load %struct.reg_sequence*, %struct.reg_sequence** %16, align 8
  %220 = load i64, i64* %7, align 8
  %221 = call i32 @_regmap_range_multi_paged_reg_write(%struct.regmap* %218, %struct.reg_sequence* %219, i64 %220)
  store i32 %221, i32* %9, align 4
  %222 = load %struct.reg_sequence*, %struct.reg_sequence** %16, align 8
  %223 = call i32 @kfree(%struct.reg_sequence* %222)
  %224 = load i32, i32* %9, align 4
  store i32 %224, i32* %4, align 4
  br label %234

225:                                              ; preds = %197
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %180

229:                                              ; preds = %180
  %230 = load %struct.regmap*, %struct.regmap** %5, align 8
  %231 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %232 = load i64, i64* %7, align 8
  %233 = call i32 @_regmap_raw_multi_reg_write(%struct.regmap* %230, %struct.reg_sequence* %231, i64 %232)
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %229, %217, %214, %168, %151, %113, %103, %73, %66, %44
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @_regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @regcache_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.regmap_range_node* @_regmap_range_lookup(%struct.regmap*, i32) #1

declare dso_local %struct.reg_sequence* @kmemdup(%struct.reg_sequence*, i64, i32) #1

declare dso_local i32 @_regmap_range_multi_paged_reg_write(%struct.regmap*, %struct.reg_sequence*, i64) #1

declare dso_local i32 @kfree(%struct.reg_sequence*) #1

declare dso_local i32 @_regmap_raw_multi_reg_write(%struct.regmap*, %struct.reg_sequence*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
