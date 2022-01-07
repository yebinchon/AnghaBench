; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_longhaul_get_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_longhaul_get_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid (reserved) multiplier!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fsb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid (reserved) FSB!\0A\00", align 1
@maxmult = common dso_local global i32 0, align 4
@cpu_model = common dso_local global i32 0, align 4
@minmult = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"MinMult:%d.%dx MaxMult:%d.%dx\0A\00", align 1
@highest_speed = common dso_local global i32 0, align 4
@lowest_speed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"FSB:%dMHz  Lowest speed: %s   Highest speed:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"highestspeed == lowest, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"nonsense! lowest (%d > %d) !\0A\00", align 1
@numscales = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@longhaul_table = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@mults = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@longhaul_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @longhaul_get_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @longhaul_get_ranges() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %9 = call i32 (...) @longhaul_get_cpu_mult()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %241

16:                                               ; preds = %0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @guess_fsb(i32 %17)
  store i32 %18, i32* @fsb, align 4
  %19 = load i32, i32* @fsb, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %1, align 4
  br label %241

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* @maxmult, align 4
  %27 = load i32, i32* @cpu_model, align 4
  switch i32 %27, label %30 [
    i32 129, label %28
    i32 128, label %29
  ]

28:                                               ; preds = %25
  store i32 50, i32* @minmult, align 4
  br label %31

29:                                               ; preds = %25
  store i32 40, i32* @minmult, align 4
  br label %31

30:                                               ; preds = %25
  store i32 30, i32* @minmult, align 4
  br label %31

31:                                               ; preds = %30, %29, %28
  %32 = load i32, i32* @minmult, align 4
  %33 = sdiv i32 %32, 10
  %34 = load i32, i32* @minmult, align 4
  %35 = srem i32 %34, 10
  %36 = load i32, i32* @maxmult, align 4
  %37 = sdiv i32 %36, 10
  %38 = load i32, i32* @maxmult, align 4
  %39 = srem i32 %38, 10
  %40 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %35, i32 %37, i32 %39)
  %41 = load i32, i32* @maxmult, align 4
  %42 = call i8* @calc_speed(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* @highest_speed, align 4
  %44 = load i32, i32* @minmult, align 4
  %45 = call i8* @calc_speed(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* @lowest_speed, align 4
  %47 = load i32, i32* @fsb, align 4
  %48 = load i32, i32* @lowest_speed, align 4
  %49 = sdiv i32 %48, 1000
  %50 = call i32 @print_speed(i32 %49)
  %51 = load i32, i32* @highest_speed, align 4
  %52 = sdiv i32 %51, 1000
  %53 = call i32 @print_speed(i32 %52)
  %54 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load i32, i32* @lowest_speed, align 4
  %56 = load i32, i32* @highest_speed, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %31
  %59 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %1, align 4
  br label %241

62:                                               ; preds = %31
  %63 = load i32, i32* @lowest_speed, align 4
  %64 = load i32, i32* @highest_speed, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @lowest_speed, align 4
  %68 = load i32, i32* @highest_speed, align 4
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %1, align 4
  br label %241

72:                                               ; preds = %62
  %73 = load i32, i32* @numscales, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.TYPE_4__* @kcalloc(i32 %74, i32 8, i32 %75)
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** @longhaul_table, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %78 = icmp ne %struct.TYPE_4__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %1, align 4
  br label %241

82:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %122, %82
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @numscales, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %125

87:                                               ; preds = %83
  %88 = load i32*, i32** @mults, align 8
  %89 = load i32, i32* %3, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %122

96:                                               ; preds = %87
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @maxmult, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @minmult, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %96
  br label %122

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = call i8* @calc_speed(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %110 = load i32, i32* %4, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %116 = load i32, i32* %4, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %4, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %105, %104, %95
  %123 = load i32, i32* %3, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %83

125:                                              ; preds = %83
  %126 = load i32, i32* %4, align 4
  %127 = icmp ule i32 %126, 1
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %130 = call i32 @kfree(%struct.TYPE_4__* %129)
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %1, align 4
  br label %241

133:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %206, %133
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %4, align 4
  %137 = sub i32 %136, 1
  %138 = icmp ult i32 %135, %137
  br i1 %138, label %139, label %209

139:                                              ; preds = %134
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %141 = load i32, i32* %3, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %3, align 4
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %3, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %171, %139
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %149
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %155 = load i32, i32* %2, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %153
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %164 = load i32, i32* %2, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %2, align 4
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %162, %153
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %2, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %2, align 4
  br label %149

174:                                              ; preds = %149
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %3, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %205

178:                                              ; preds = %174
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %180 = load i32, i32* %3, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %186 = load i32, i32* %8, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @swap(i32 %184, i32 %190)
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %193 = load i32, i32* %3, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %199 = load i32, i32* %8, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @swap(i32 %197, i32 %203)
  br label %205

205:                                              ; preds = %178, %174
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %3, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %3, align 4
  br label %134

209:                                              ; preds = %134
  %210 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %212 = load i32, i32* %4, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  store i32 %210, i32* %215, align 4
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %237, %209
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %240

220:                                              ; preds = %216
  %221 = load i32*, i32** @mults, align 8
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @longhaul_table, align 8
  %223 = load i32, i32* %3, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 31
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %221, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %220
  %235 = load i32, i32* %3, align 4
  store i32 %235, i32* @longhaul_index, align 4
  br label %240

236:                                              ; preds = %220
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %3, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %3, align 4
  br label %216

240:                                              ; preds = %234, %216
  store i32 0, i32* %1, align 4
  br label %241

241:                                              ; preds = %240, %128, %79, %66, %58, %21, %12
  %242 = load i32, i32* %1, align 4
  ret i32 %242
}

declare dso_local i32 @longhaul_get_cpu_mult(...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @guess_fsb(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, ...) #1

declare dso_local i8* @calc_speed(i32) #1

declare dso_local i32 @print_speed(i32) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
