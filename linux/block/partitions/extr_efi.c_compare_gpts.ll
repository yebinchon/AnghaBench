; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_compare_gpts.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_compare_gpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"GPT:Primary header LBA != Alt. header alternate_lba\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"GPT:%lld != %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"GPT:Primary header alternate_lba != Alt. header my_lba\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GPT:first_usable_lbas don't match.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"GPT:last_usable_lbas don't match.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"GPT:disk_guids don't match.\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"GPT:num_partition_entries don't match: 0x%x != 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"GPT:sizeof_partition_entry values don't match: 0x%x != 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"GPT:partition_entry_array_crc32 values don't match: 0x%x != 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"GPT:Primary header thinks Alt. header is not at the end of the disk.\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"GPT:Alternate GPT header not at the end of the disk.\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"GPT: Use GNU Parted to correct GPT errors.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*, i64)* @compare_gpts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compare_gpts(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %3
  br label %225

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le64_to_cpu(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le64_to_cpu(i32 %21)
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le64_to_cpu(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le64_to_cpu(i32 %32)
  %34 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %24, %14
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le64_to_cpu(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le64_to_cpu(i32 %44)
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le64_to_cpu(i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le64_to_cpu(i32 %55)
  %57 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %47, %37
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le64_to_cpu(i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le64_to_cpu(i32 %67)
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %60
  %71 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @le64_to_cpu(i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le64_to_cpu(i32 %78)
  %80 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %75, i64 %79)
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %70, %60
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le64_to_cpu(i32 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le64_to_cpu(i32 %90)
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %83
  %94 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @le64_to_cpu(i32 %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @le64_to_cpu(i32 %101)
  %103 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %98, i64 %102)
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %93, %83
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @efi_guidcmp(i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %115, %106
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  %128 = icmp ne i32 %123, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %119
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le32_to_cpu(i32 %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le32_to_cpu(i32 %136)
  %138 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %133, i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %129, %119
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @le32_to_cpu(i32 %144)
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le32_to_cpu(i32 %148)
  %150 = icmp ne i32 %145, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %141
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le32_to_cpu(i32 %154)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %155, i32 %159)
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %151, %141
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @le32_to_cpu(i32 %166)
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @le32_to_cpu(i32 %170)
  %172 = icmp ne i32 %167, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %163
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le32_to_cpu(i32 %176)
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @le32_to_cpu(i32 %180)
  %182 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %177, i32 %181)
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %173, %163
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @le64_to_cpu(i32 %188)
  %190 = load i64, i64* %6, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %185
  %193 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @le64_to_cpu(i32 %196)
  %198 = load i64, i64* %6, align 8
  %199 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %197, i64 %198)
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %192, %185
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @le64_to_cpu(i32 %205)
  %207 = load i64, i64* %6, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %202
  %210 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @le64_to_cpu(i32 %213)
  %215 = load i64, i64* %6, align 8
  %216 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %214, i64 %215)
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %209, %202
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %219
  br label %225

225:                                              ; preds = %224, %13
  ret void
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i64 @efi_guidcmp(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
