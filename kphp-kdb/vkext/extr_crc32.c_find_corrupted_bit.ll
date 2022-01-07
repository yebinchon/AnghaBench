; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_crc32.c_find_corrupted_bit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_crc32.c_find_corrupted_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcb_table_entry = type { i32, i32 }

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
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.fcb_table_entry* @calloc(i32 %29, i32 8)
  store %struct.fcb_table_entry* %30, %struct.fcb_table_entry** %9, align 8
  %31 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %32 = icmp ne %struct.fcb_table_entry* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %36 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %35, i64 0
  %37 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %39 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %38, i64 0
  %40 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %65, %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %47, i64 %49
  %51 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %52, i64 %55
  %57 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xmult(i32 %58)
  %60 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %60, i64 %62
  %64 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %41

68:                                               ; preds = %41
  %69 = call i32 @xmult(i32 -2107601189)
  %70 = icmp eq i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @cmp_fcb_table_entry, align 4
  %76 = call i32 @qsort(%struct.fcb_table_entry* %73, i32 %74, i32 8, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @gf32_pow(i32 -2107601189, i32 %77)
  store i32 %78, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %89, %68
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 32
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @gf32_shl(i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %79

92:                                               ; preds = %79
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sdiv i32 %94, %95
  store i32 %96, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %153, %92
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  store i32 -1, i32* %15, align 4
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %125, %101
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 %104, %105
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %109, %110
  %112 = ashr i32 %111, 1
  store i32 %112, i32* %17, align 4
  %113 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %113, i64 %115
  %117 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ule i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %15, align 4
  br label %125

123:                                              ; preds = %108
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %123, %121
  br label %103

126:                                              ; preds = %103
  %127 = load i32, i32* %15, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %130, i64 %132
  %134 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %129
  %139 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %139, i64 %141
  %143 = getelementptr inbounds %struct.fcb_table_entry, %struct.fcb_table_entry* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %6, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %144, %147
  store i32 %148, i32* %14, align 4
  br label %156

149:                                              ; preds = %129, %126
  %150 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @gf32_matrix_times(i32* %150, i32 %151)
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %97

156:                                              ; preds = %138, %97
  %157 = load %struct.fcb_table_entry*, %struct.fcb_table_entry** %9, align 8
  %158 = call i32 @free(%struct.fcb_table_entry* %157)
  %159 = load i32, i32* %14, align 4
  ret i32 %159
}

declare dso_local i32 @revbin(i32) #1

declare dso_local i64 @sqrt(i32) #1

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
