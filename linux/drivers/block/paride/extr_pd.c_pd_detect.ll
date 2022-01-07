; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_unit = type { i32, i32, i32, i32, i64, i64, i32*, i32, i32, i64, i32 }

@PD_UNITS = common dso_local global i32 0, align 4
@drives = common dso_local global i32*** null, align 8
@pd = common dso_local global %struct.pd_unit* null, align 8
@D_SLV = common dso_local global i64 0, align 8
@PD_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@name = common dso_local global i8* null, align 8
@D_GEO = common dso_local global i64 0, align 8
@D_SBY = common dso_local global i64 0, align 8
@D_PRT = common dso_local global i64 0, align 8
@par_drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register %s driver\0A\00", align 1
@pd_scratch = common dso_local global i32 0, align 4
@PI_PD = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@D_MOD = common dso_local global i64 0, align 8
@D_UNI = common dso_local global i64 0, align 8
@D_PRO = common dso_local global i64 0, align 8
@D_DLY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: no valid drive found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pd_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pd_unit*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pd_unit*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %73, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PD_UNITS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %76

13:                                               ; preds = %9
  %14 = load i32***, i32**** @drives, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32**, i32*** %14, i64 %16
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %20, i64 %22
  store %struct.pd_unit* %23, %struct.pd_unit** %7, align 8
  %24 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %25 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %24, i32 0, i32 10
  %26 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %27 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %26, i32 0, i32 6
  store i32* %25, i32** %27, align 8
  %28 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %29 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  %30 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %31 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %33 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* @D_SLV, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %39 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %41 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PD_NAMELEN, align 4
  %44 = load i8*, i8** @name, align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 97, %45
  %47 = trunc i32 %46 to i8
  %48 = call i32 @snprintf(i32 %42, i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %44, i8 signext %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* @D_GEO, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %54 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* @D_SBY, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %60 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* @D_PRT, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %13
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %13
  %70 = load %struct.pd_unit*, %struct.pd_unit** %7, align 8
  %71 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %70, i32 0, i32 8
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %9

76:                                               ; preds = %9
  %77 = load i8*, i8** @name, align 8
  %78 = call i32 @pi_register_driver(i8* %77)
  store i32 %78, i32* @par_drv, align 4
  %79 = load i32, i32* @par_drv, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** @name, align 8
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  store i32 -1, i32* %1, align 4
  br label %224

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  store %struct.pd_unit* %88, %struct.pd_unit** %5, align 8
  %89 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %90 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @pd_scratch, align 4
  %93 = load i32, i32* @PI_PD, align 4
  %94 = load i32, i32* @verbose, align 4
  %95 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %96 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @pi_init(i32* %91, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 %92, i32 %93, i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %87
  %101 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %102 = call i32 @pd_probe_drive(%struct.pd_unit* %101)
  %103 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %104 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %100
  %108 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %109 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @pi_release(i32* %110)
  br label %112

112:                                              ; preds = %107, %100
  br label %113

113:                                              ; preds = %112, %87
  br label %185

114:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  %115 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  store %struct.pd_unit* %115, %struct.pd_unit** %5, align 8
  br label %116

116:                                              ; preds = %179, %114
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @PD_UNITS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %184

120:                                              ; preds = %116
  %121 = load i32***, i32**** @drives, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32**, i32*** %121, i64 %123
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %8, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i64, i64* @D_PRT, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  br label %179

133:                                              ; preds = %120
  %134 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %135 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load i64, i64* @D_PRT, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = load i64, i64* @D_MOD, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = load i64, i64* @D_UNI, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = load i64, i64* @D_PRO, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i64, i64* @D_DLY, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @pd_scratch, align 4
  %158 = load i32, i32* @PI_PD, align 4
  %159 = load i32, i32* @verbose, align 4
  %160 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %161 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @pi_init(i32* %136, i32 0, i32 %140, i32 %144, i32 %148, i32 %152, i32 %156, i32 %157, i32 %158, i32 %159, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %133
  %166 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %167 = call i32 @pd_probe_drive(%struct.pd_unit* %166)
  %168 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %169 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %165
  %173 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %174 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %173, i32 0, i32 6
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @pi_release(i32* %175)
  br label %177

177:                                              ; preds = %172, %165
  br label %178

178:                                              ; preds = %177, %133
  br label %179

179:                                              ; preds = %178, %132
  %180 = load i32, i32* %3, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %3, align 4
  %182 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %183 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %182, i32 1
  store %struct.pd_unit* %183, %struct.pd_unit** %5, align 8
  br label %116

184:                                              ; preds = %116
  br label %185

185:                                              ; preds = %184, %113
  store i32 0, i32* %3, align 4
  %186 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  store %struct.pd_unit* %186, %struct.pd_unit** %5, align 8
  br label %187

187:                                              ; preds = %209, %185
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @PD_UNITS, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %214

191:                                              ; preds = %187
  %192 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %193 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %191
  %197 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %198 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %201 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @set_capacity(i64 %199, i64 %202)
  %204 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %205 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @add_disk(i64 %206)
  store i32 1, i32* %2, align 4
  br label %208

208:                                              ; preds = %196, %191
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %3, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %3, align 4
  %212 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %213 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %212, i32 1
  store %struct.pd_unit* %213, %struct.pd_unit** %5, align 8
  br label %187

214:                                              ; preds = %187
  %215 = load i32, i32* %2, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = load i8*, i8** @name, align 8
  %219 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %218)
  %220 = load i32, i32* @par_drv, align 4
  %221 = call i32 @pi_unregister_driver(i32 %220)
  br label %222

222:                                              ; preds = %217, %214
  %223 = load i32, i32* %2, align 4
  store i32 %223, i32* %1, align 4
  br label %224

224:                                              ; preds = %222, %81
  %225 = load i32, i32* %1, align 4
  ret i32 %225
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8 signext) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pi_register_driver(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i64 @pi_init(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pd_probe_drive(%struct.pd_unit*) #1

declare dso_local i32 @pi_release(i32*) #1

declare dso_local i32 @set_capacity(i64, i64) #1

declare dso_local i32 @add_disk(i64) #1

declare dso_local i32 @printk(i8*, i8*) #1

declare dso_local i32 @pi_unregister_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
