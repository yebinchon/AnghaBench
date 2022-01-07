; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_machine_kexec_file_64.c_setup_new_fdt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_machine_kexec_file_64.c_setup_new_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

@initial_boot_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Removed old device tree reservation.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Error creating /chosen.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Malformed device tree: error reading /chosen.\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"linux,initrd-start\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"linux,initrd-end\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Malformed device tree.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Removed old initrd reservation.\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Error deleting linux,initrd-start.\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Error deleting linux,initrd-end.\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Error reserving initrd memory: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Error deleting bootargs.\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Error setting up the new device tree.\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"linux,booted-from-kexec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_new_fdt(%struct.kimage* %0, i8* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kimage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* @initial_boot_params, align 4
  %20 = call i64 @__pa(i32 %19)
  %21 = load i32, i32* @initial_boot_params, align 4
  %22 = call i64 @fdt_totalsize(i32 %21)
  %23 = call i32 @delete_fdt_mem_rsv(i8* %18, i64 %20, i64 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %36

28:                                               ; preds = %5
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %229

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @fdt_path_offset(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @fdt_path_offset(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @fdt_add_subnode(i8* %44, i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %229

54:                                               ; preds = %43
  br label %63

55:                                               ; preds = %36
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %229

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i8* @fdt_getprop(i8* %64, i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i8* %66, i8** %14, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %144

69:                                               ; preds = %63
  %70 = load i8*, i8** %14, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @fdt64_to_cpu(i32 %72)
  store i64 %73, i64* %15, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i8* @fdt_getprop(i8* %74, i32 %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32* null)
  store i8* %76, i8** %14, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %69
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %229

83:                                               ; preds = %69
  %84 = load i8*, i8** %14, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @fdt64_to_cpu(i32 %86)
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %15, align 8
  %90 = sub nsw i64 %88, %89
  store i64 %90, i64* %17, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %17, align 8
  %94 = call i32 @delete_fdt_mem_rsv(i8* %91, i64 %92, i64 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %83
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %17, align 8
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = call i64 @round_up(i64 %102, i32 %103)
  %105 = call i32 @delete_fdt_mem_rsv(i8* %100, i64 %101, i64 %104)
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %99, %83
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %119

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @ENOENT, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %6, align 4
  br label %229

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %109
  %120 = load i64, i64* %10, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %119
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @fdt_delprop(i8* %123, i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %229

132:                                              ; preds = %122
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @fdt_delprop(i8* %133, i32 %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %229

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %119
  br label %144

144:                                              ; preds = %143, %63
  %145 = load i64, i64* %10, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %179

147:                                              ; preds = %144
  %148 = load i8*, i8** %8, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @fdt_setprop_u64(i8* %148, i32 %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %225

155:                                              ; preds = %147
  %156 = load i8*, i8** %8, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* %10, align 8
  %160 = add i64 %158, %159
  %161 = call i32 @fdt_setprop_u64(i8* %156, i32 %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %160)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %225

165:                                              ; preds = %155
  %166 = load i8*, i8** %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @fdt_add_mem_rsv(i8* %166, i64 %167, i64 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @fdt_strerror(i32 %173)
  %175 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %229

178:                                              ; preds = %165
  br label %179

179:                                              ; preds = %178, %144
  %180 = load i8*, i8** %11, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load i8*, i8** %8, align 8
  %184 = load i32, i32* %13, align 4
  %185 = load i8*, i8** %11, align 8
  %186 = call i32 @fdt_setprop_string(i8* %183, i32 %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %185)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %225

190:                                              ; preds = %182
  br label %207

191:                                              ; preds = %179
  %192 = load i8*, i8** %8, align 8
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @fdt_delprop(i8* %192, i32 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %191
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp ne i32 %198, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %6, align 4
  br label %229

206:                                              ; preds = %197, %191
  br label %207

207:                                              ; preds = %206, %190
  %208 = load %struct.kimage*, %struct.kimage** %7, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @setup_ima_buffer(%struct.kimage* %208, i8* %209, i32 %210)
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %6, align 4
  br label %229

217:                                              ; preds = %207
  %218 = load i8*, i8** %8, align 8
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @fdt_setprop(i8* %218, i32 %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32* null, i32 0)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %225

224:                                              ; preds = %217
  store i32 0, i32* %6, align 4
  br label %229

225:                                              ; preds = %223, %189, %164, %154
  %226 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %6, align 4
  br label %229

229:                                              ; preds = %225, %224, %214, %202, %172, %138, %128, %116, %79, %58, %50, %33
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local i32 @delete_fdt_mem_rsv(i8*, i64, i64) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i64 @fdt_totalsize(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @fdt_add_subnode(i8*, i32, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i64 @fdt64_to_cpu(i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @fdt_delprop(i8*, i32, i8*) #1

declare dso_local i32 @fdt_setprop_u64(i8*, i32, i8*, i64) #1

declare dso_local i32 @fdt_add_mem_rsv(i8*, i64, i64) #1

declare dso_local i32 @fdt_strerror(i32) #1

declare dso_local i32 @fdt_setprop_string(i8*, i32, i8*, i8*) #1

declare dso_local i32 @setup_ima_buffer(%struct.kimage*, i8*, i32) #1

declare dso_local i32 @fdt_setprop(i8*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
