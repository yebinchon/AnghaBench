; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c___process_mem_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c___process_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_vector = type { i64, i64 }

@CONFIG_X86_32 = common dso_local global i32 0, align 4
@KERNEL_IMAGE_SIZE = common dso_local global i64 0, align 8
@mem_limit = common dso_local global i32 0, align 4
@slot_area_index = common dso_local global i64 0, align 8
@MAX_SLOT_AREA = common dso_local global i64 0, align 8
@CONFIG_PHYSICAL_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_vector*, i64, i64)* @__process_mem_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__process_mem_region(%struct.mem_vector* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mem_vector*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mem_vector, align 8
  %8 = alloca %struct.mem_vector, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mem_vector, align 8
  %12 = alloca %struct.mem_vector, align 8
  store %struct.mem_vector* %0, %struct.mem_vector** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @CONFIG_X86_32, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %18 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KERNEL_IMAGE_SIZE, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %184

23:                                               ; preds = %16, %3
  %24 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %25 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %28 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %26, %29
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %184

34:                                               ; preds = %23
  %35 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %36 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %39 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = load i32, i32* @mem_limit, align 4
  %43 = call i64 @min(i64 %41, i32 %42)
  store i64 %43, i64* %10, align 8
  %44 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %45 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %184

50:                                               ; preds = %34
  %51 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %52 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %11, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.mem_vector*, %struct.mem_vector** %4, align 8
  %57 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %55, %58
  %60 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %11, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %11, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %11, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %166, %50
  %68 = load i64, i64* @slot_area_index, align 8
  %69 = load i64, i64* @MAX_SLOT_AREA, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %184

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %9, align 8
  %74 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %71
  %82 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @CONFIG_PHYSICAL_ALIGN, align 4
  %85 = call i64 @ALIGN(i64 %83, i32 %84)
  %86 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %11, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %11, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %90, %92
  %94 = icmp ugt i64 %88, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  br label %184

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = sub i64 %98, %99
  %101 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, %100
  store i64 %103, i64* %101, align 8
  %104 = load i32, i32* @CONFIG_X86_32, align 4
  %105 = call i64 @IS_ENABLED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %109, %111
  %113 = load i64, i64* @KERNEL_IMAGE_SIZE, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load i64, i64* @KERNEL_IMAGE_SIZE, align 8
  %117 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %116, %118
  %120 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 1
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %115, %107, %96
  %122 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %184

127:                                              ; preds = %121
  %128 = call i32 @mem_avoid_overlap(%struct.mem_vector* %7, %struct.mem_vector* %8)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @process_gb_huge_pages(%struct.mem_vector* %7, i64 %131)
  br label %184

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %8, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = add i64 %137, %138
  %140 = icmp ugt i64 %135, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %12, i32 0, i32 0
  store i64 %143, i64* %144, align 8
  %145 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %8, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %146, %148
  %150 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %12, i32 0, i32 1
  store i64 %149, i64* %150, align 8
  %151 = load i64, i64* %6, align 8
  %152 = call i32 @process_gb_huge_pages(%struct.mem_vector* %12, i64 %151)
  br label %153

153:                                              ; preds = %141, %133
  %154 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %8, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %8, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %155, %157
  %159 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %160, %162
  %164 = icmp uge i64 %158, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  br label %184

166:                                              ; preds = %153
  %167 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %8, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = sub i64 %168, %170
  %172 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %8, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %171, %173
  %175 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = sub i64 %176, %174
  store i64 %177, i64* %175, align 8
  %178 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %8, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %8, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %179, %181
  %183 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  store i64 %182, i64* %183, align 8
  br label %67

184:                                              ; preds = %22, %33, %49, %95, %126, %130, %165, %67
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @mem_avoid_overlap(%struct.mem_vector*, %struct.mem_vector*) #1

declare dso_local i32 @process_gb_huge_pages(%struct.mem_vector*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
