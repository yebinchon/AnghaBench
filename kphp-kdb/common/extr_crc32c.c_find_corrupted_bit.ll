; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_crc32c.c_find_corrupted_bit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_crc32c.c_find_corrupted_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcb_table_entry = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"n = %d, r = %d\0A\00", align 1
@cmp_fcb_table_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @find_corrupted_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_corrupted_bit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fcb_table_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @revbin(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 %22, 3
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @sqrt(i32 %24)
  %26 = sitofp i64 %25 to double
  %27 = fadd double %26, 5.000000e-01
  %28 = fptosi double %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.fcb_table_entry* @calloc(i32 %32, i32 8)
  store %struct.fcb_table_entry* %33, %struct.fcb_table_entry** %9, align 8
  %34 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %35 = icmp ne %struct.fcb_table_entry* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %39 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %38, i64 0
  %40 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %42 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %41, i64 0
  %43 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %68, %2
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %50, i64 %52
  %54 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  %55 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %55, i64 %58
  %60 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xmult(i32 %61)
  %63 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %63, i64 %65
  %67 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 4
  br label %68

68:                                               ; preds = %48
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %44

71:                                               ; preds = %44
  %72 = call i32 @xmult(i32 -1888602208)
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @cmp_fcb_table_entry, align 4
  %79 = call i32 @qsort(%struct.fcb_table_entry* %76, i32 %77, i32 8, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @gf32_pow(i32 -1888602208, i32 %80)
  store i32 %81, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %92, %71
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 32
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @gf32_shl(i32 %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %90
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %82

95:                                               ; preds = %82
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sdiv i32 %97, %98
  store i32 %99, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %156, %95
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %159

104:                                              ; preds = %100
  store i32 -1, i32* %15, align 4
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %128, %104
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %107, %108
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %112, %113
  %115 = ashr i32 %114, 1
  store i32 %115, i32* %17, align 4
  %116 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %116, i64 %118
  %120 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ule i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i32, i32* %17, align 4
  store i32 %125, i32* %15, align 4
  br label %128

126:                                              ; preds = %111
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %126, %124
  br label %106

129:                                              ; preds = %106
  %130 = load i32, i32* %15, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %129
  %133 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %133, i64 %135
  %137 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %132
  %142 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %142, i64 %144
  %146 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %6, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %147, %150
  store i32 %151, i32* %14, align 4
  br label %159

152:                                              ; preds = %132, %129
  %153 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @gf32_matrix_times(i32* %153, i32 %154)
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %100

159:                                              ; preds = %141, %100
  %160 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %161 = call i32 @free(%struct.fcb_table_entry* %160)
  %162 = load i32, i32* %14, align 4
  ret i32 %162
}

declare dso_local i32 @revbin(i32) #1

declare dso_local i64 @sqrt(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local %struct.fcb_table_entry* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xmult(i32) #1

declare dso_local i32 @qsort(%struct.fcb_table_entry*, i32, i32, i32) #1

declare dso_local i32 @gf32_pow(i32, i32) #1

declare dso_local i32 @gf32_shl(i32, i32) #1

declare dso_local i32 @gf32_matrix_times(i32*, i32) #1

declare dso_local i32 @free(%struct.fcb_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
