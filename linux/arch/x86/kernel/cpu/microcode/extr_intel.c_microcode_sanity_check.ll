; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_microcode_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_microcode_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microcode_header_intel = type { i32, i32, i64, i64, i64 }
%struct.extended_sigtable = type { i64 }
%struct.extended_signature = type { i64, i64, i64 }

@MC_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Error: bad microcode data file size.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Error: invalid/unknown microcode update format.\0A\00", align 1
@EXT_HEADER_SIZE = common dso_local global i64 0, align 8
@EXT_SIGNATURE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Error: truncated extended signature table.\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Error: extended signature table size mismatch.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Bad extended signature table checksum, aborting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Bad microcode data checksum, aborting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Bad extended signature checksum, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @microcode_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microcode_sanity_check(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.microcode_header_intel*, align 8
  %10 = alloca %struct.extended_sigtable*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.extended_signature*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.microcode_header_intel*
  store %struct.microcode_header_intel* %19, %struct.microcode_header_intel** %9, align 8
  store %struct.extended_sigtable* null, %struct.extended_sigtable** %10, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %9, align 8
  %21 = call i64 @get_totalsize(%struct.microcode_header_intel* %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %9, align 8
  %23 = call i64 @get_datasize(%struct.microcode_header_intel* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MC_HEADER_SIZE, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* %6, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %217

37:                                               ; preds = %2
  %38 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %9, align 8
  %39 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %9, align 8
  %44 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %55

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %217

55:                                               ; preds = %42
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @MC_HEADER_SIZE, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %57, %58
  %60 = sub i64 %56, %59
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %132

63:                                               ; preds = %55
  store i64 0, i64* %16, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @EXT_HEADER_SIZE, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @EXT_HEADER_SIZE, align 8
  %70 = sub i64 %68, %69
  %71 = load i64, i64* @EXT_SIGNATURE_SIZE, align 8
  %72 = urem i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67, %63
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %217

82:                                               ; preds = %67
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* @MC_HEADER_SIZE, align 8
  %85 = getelementptr i8, i8* %83, i64 %84
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr i8, i8* %85, i64 %86
  %88 = bitcast i8* %87 to %struct.extended_sigtable*
  store %struct.extended_sigtable* %88, %struct.extended_sigtable** %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.extended_sigtable*, %struct.extended_sigtable** %10, align 8
  %91 = call i64 @exttable_size(%struct.extended_sigtable* %90)
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %82
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* @EFAULT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %217

101:                                              ; preds = %82
  %102 = load %struct.extended_sigtable*, %struct.extended_sigtable** %10, align 8
  %103 = getelementptr inbounds %struct.extended_sigtable, %struct.extended_sigtable* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %13, align 8
  %105 = load %struct.extended_sigtable*, %struct.extended_sigtable** %10, align 8
  %106 = bitcast %struct.extended_sigtable* %105 to i64*
  store i64* %106, i64** %17, align 8
  %107 = load i64, i64* %8, align 8
  %108 = udiv i64 %107, 8
  store i64 %108, i64* %14, align 8
  br label %109

109:                                              ; preds = %113, %101
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, -1
  store i64 %111, i64* %14, align 8
  %112 = icmp ne i64 %110, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i64*, i64** %17, align 8
  %115 = load i64, i64* %14, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %16, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %16, align 8
  br label %109

120:                                              ; preds = %109
  %121 = load i64, i64* %16, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %123
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %217

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %55
  store i64 0, i64* %12, align 8
  %133 = load i64, i64* @MC_HEADER_SIZE, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %133, %134
  %136 = udiv i64 %135, 8
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %141, %132
  %138 = load i64, i64* %14, align 8
  %139 = add i64 %138, -1
  store i64 %139, i64* %14, align 8
  %140 = icmp ne i64 %138, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i8*, i8** %4, align 8
  %143 = bitcast i8* %142 to i64*
  %144 = load i64, i64* %14, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %12, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %12, align 8
  br label %137

149:                                              ; preds = %137
  %150 = load i64, i64* %12, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %152
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %217

160:                                              ; preds = %149
  %161 = load i64, i64* %8, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %217

164:                                              ; preds = %160
  store i64 0, i64* %14, align 8
  br label %165

165:                                              ; preds = %213, %164
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* %13, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %216

169:                                              ; preds = %165
  %170 = load %struct.extended_sigtable*, %struct.extended_sigtable** %10, align 8
  %171 = bitcast %struct.extended_sigtable* %170 to i8*
  %172 = load i64, i64* @EXT_HEADER_SIZE, align 8
  %173 = getelementptr i8, i8* %171, i64 %172
  %174 = load i64, i64* @EXT_SIGNATURE_SIZE, align 8
  %175 = load i64, i64* %14, align 8
  %176 = mul i64 %174, %175
  %177 = getelementptr i8, i8* %173, i64 %176
  %178 = bitcast i8* %177 to %struct.extended_signature*
  store %struct.extended_signature* %178, %struct.extended_signature** %15, align 8
  %179 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %9, align 8
  %180 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %9, align 8
  %183 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %181, %184
  %186 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %9, align 8
  %187 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %185, %188
  %190 = load %struct.extended_signature*, %struct.extended_signature** %15, align 8
  %191 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.extended_signature*, %struct.extended_signature** %15, align 8
  %194 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %192, %195
  %197 = load %struct.extended_signature*, %struct.extended_signature** %15, align 8
  %198 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = add i64 %196, %199
  %201 = sub i64 %189, %200
  store i64 %201, i64* %11, align 8
  %202 = load i64, i64* %11, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %169
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %204
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %3, align 4
  br label %217

212:                                              ; preds = %169
  br label %213

213:                                              ; preds = %212
  %214 = load i64, i64* %14, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %14, align 8
  br label %165

216:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %209, %163, %157, %128, %98, %79, %52, %34
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i64 @get_totalsize(%struct.microcode_header_intel*) #1

declare dso_local i64 @get_datasize(%struct.microcode_header_intel*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @exttable_size(%struct.extended_sigtable*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
