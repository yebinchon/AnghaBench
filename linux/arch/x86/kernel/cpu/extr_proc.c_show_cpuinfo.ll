; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_proc.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_proc.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cpuinfo_x86 = type { i32, i8*, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"processor\09: %u\0Avendor_id\09: %s\0Acpu family\09: %d\0Amodel\09\09: %u\0Amodel name\09: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"stepping\09: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"stepping\09: unknown\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"microcode\09: 0x%x\0A\00", align 1
@X86_FEATURE_TSC = common dso_local global i32 0, align 4
@cpu_khz = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"cpu MHz\09\09: %u.%03u\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"cache size\09: %u KB\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"flags\09\09:\00", align 1
@NCAPINTS = common dso_local global i32 0, align 4
@x86_cap_flags = common dso_local global i32** null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\0Abugs\09\09:\00", align 1
@NBUGINTS = common dso_local global i32 0, align 4
@x86_bug_flags = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"\0Abogomips\09: %lu.%02lu\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"clflush size\09: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"cache_alignment\09: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"address sizes\09: %u bits physical, %u bits virtual\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"power management:\00", align 1
@x86_power_flags = common dso_local global i64** null, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpuinfo_x86*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.cpuinfo_x86*
  store %struct.cpuinfo_x86* %11, %struct.cpuinfo_x86** %5, align 8
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %13 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %18 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %26 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i8* [ %27, %24 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %38 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %46 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  br label %49

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i8* [ %47, %44 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %48 ]
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %30, i32 %33, i32 %36, i8* %50)
  %52 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %53 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %58 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56, %49
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %64 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %70

67:                                               ; preds = %56
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %72 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %78 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %83 = load i32, i32* @X86_FEATURE_TSC, align 4
  %84 = call i64 @cpu_has(%struct.cpuinfo_x86* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @aperfmperf_get_khz(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @cpufreq_quick_get(i32 %92)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @cpu_khz, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %94
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load i32, i32* %8, align 4
  %102 = udiv i32 %101, 1000
  %103 = load i32, i32* %8, align 4
  %104 = urem i32 %103, 1000
  %105 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %99, %81
  %107 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %108 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %113 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %114 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %111, %106
  %118 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %119 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @show_cpuinfo_core(%struct.seq_file* %118, %struct.cpuinfo_x86* %119, i32 %120)
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %124 = call i32 @show_cpuinfo_misc(%struct.seq_file* %122, %struct.cpuinfo_x86* %123)
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = call i32 @seq_puts(%struct.seq_file* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %153, %117
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @NCAPINTS, align 4
  %130 = mul nsw i32 32, %129
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %127
  %133 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i64 @cpu_has(%struct.cpuinfo_x86* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %132
  %138 = load i32**, i32*** @x86_cap_flags, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %146 = load i32**, i32*** @x86_cap_flags, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %150)
  br label %152

152:                                              ; preds = %144, %137, %132
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %127

156:                                              ; preds = %127
  %157 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %158 = call i32 @seq_puts(%struct.seq_file* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %189, %156
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @NBUGINTS, align 4
  %162 = mul nsw i32 32, %161
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %192

164:                                              ; preds = %159
  %165 = load i32, i32* @NCAPINTS, align 4
  %166 = mul nsw i32 32, %165
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %166, %167
  store i32 %168, i32* %9, align 4
  %169 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i64 @cpu_has_bug(%struct.cpuinfo_x86* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %164
  %174 = load i32*, i32** @x86_bug_flags, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %182 = load i32*, i32** @x86_bug_flags, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %180, %173, %164
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %159

192:                                              ; preds = %159
  %193 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %194 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %195 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @HZ, align 4
  %198 = sdiv i32 500000, %197
  %199 = sdiv i32 %196, %198
  %200 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %201 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @HZ, align 4
  %204 = sdiv i32 5000, %203
  %205 = sdiv i32 %202, %204
  %206 = srem i32 %205, 100
  %207 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %193, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %199, i32 %206)
  %208 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %209 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %210 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %211)
  %213 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %214 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %215 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %214, i32 0, i32 10
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %213, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %216)
  %218 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %219 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %220 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %219, i32 0, i32 13
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %223 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %222, i32 0, i32 12
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %218, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %221, i32 %224)
  %226 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %227 = call i32 @seq_puts(%struct.seq_file* %226, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %228

228:                                              ; preds = %275, %192
  %229 = load i32, i32* %7, align 4
  %230 = icmp slt i32 %229, 32
  br i1 %230, label %231, label %278

231:                                              ; preds = %228
  %232 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %233 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %232, i32 0, i32 11
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = shl i32 1, %235
  %237 = and i32 %234, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %274

239:                                              ; preds = %231
  %240 = load i32, i32* %7, align 4
  %241 = load i64**, i64*** @x86_power_flags, align 8
  %242 = call i32 @ARRAY_SIZE(i64** %241)
  %243 = icmp slt i32 %240, %242
  br i1 %243, label %244, label %269

244:                                              ; preds = %239
  %245 = load i64**, i64*** @x86_power_flags, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64*, i64** %245, i64 %247
  %249 = load i64*, i64** %248, align 8
  %250 = icmp ne i64* %249, null
  br i1 %250, label %251, label %269

251:                                              ; preds = %244
  %252 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %253 = load i64**, i64*** @x86_power_flags, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64*, i64** %253, i64 %255
  %257 = load i64*, i64** %256, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %263 = load i64**, i64*** @x86_power_flags, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64*, i64** %263, i64 %265
  %267 = load i64*, i64** %266, align 8
  %268 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %262, i64* %267)
  br label %273

269:                                              ; preds = %244, %239
  %270 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %271 = load i32, i32* %7, align 4
  %272 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %269, %251
  br label %274

274:                                              ; preds = %273, %231
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %7, align 4
  br label %228

278:                                              ; preds = %228
  %279 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %280 = call i32 @seq_puts(%struct.seq_file* %279, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @aperfmperf_get_khz(i32) #1

declare dso_local i32 @cpufreq_quick_get(i32) #1

declare dso_local i32 @show_cpuinfo_core(%struct.seq_file*, %struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @show_cpuinfo_misc(%struct.seq_file*, %struct.cpuinfo_x86*) #1

declare dso_local i64 @cpu_has_bug(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
