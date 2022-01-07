; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exregion.c_acpi_ex_system_memory_space_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exregion.c_acpi_ex_system_memory_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_mem_space_context = type { i64, i32, i64, i64, i8* }

@AE_OK = common dso_local global i32 0, align 4
@ex_system_memory_space_handler = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid SystemMemory width %u\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@ACPI_DEFAULT_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not map memory at 0x%8.8X%8.8X, size %u\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"System-Memory (width %u) R/W %u Address=%8.8X%8.8X\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_AML_ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_system_memory_space_handler(i32 %0, i64 %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.acpi_mem_space_context*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load i32, i32* @AE_OK, align 4
  store i32 %20, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = bitcast i8* %21 to %struct.acpi_mem_space_context*
  store %struct.acpi_mem_space_context* %22, %struct.acpi_mem_space_context** %16, align 8
  %23 = load i32, i32* @ex_system_memory_space_handler, align 4
  %24 = call i32 @ACPI_FUNCTION_TRACE(i32 %23)
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %30 [
    i32 8, label %26
    i32 16, label %27
    i32 32, label %28
    i32 64, label %29
  ]

26:                                               ; preds = %6
  store i32 1, i32* %17, align 4
  br label %36

27:                                               ; preds = %6
  store i32 2, i32* %17, align 4
  br label %36

28:                                               ; preds = %6
  store i32 4, i32* %17, align 4
  br label %36

29:                                               ; preds = %6
  store i32 8, i32* %17, align 4
  br label %36

30:                                               ; preds = %6
  %31 = load i32, i32* @AE_INFO, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @ACPI_ERROR(i32 %32)
  %34 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  %35 = call i32 @return_ACPI_STATUS(i32 %34)
  br label %36

36:                                               ; preds = %30, %29, %28, %27, %26
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %39 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %48 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %52 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %50, %53
  %55 = icmp sgt i32 %46, %54
  br i1 %55, label %56, label %123

56:                                               ; preds = %42, %36
  %57 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %58 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %63 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %66 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @acpi_os_unmap_memory(i8* %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %56
  %70 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %71 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %74 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load i64, i64* %9, align 8
  %78 = sub nsw i64 %76, %77
  store i64 %78, i64* %18, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @ACPI_DEFAULT_PAGE_SIZE, align 8
  %81 = call i64 @ACPI_ROUND_UP(i64 %79, i64 %80)
  %82 = load i64, i64* %9, align 8
  %83 = sub nsw i64 %81, %82
  store i64 %83, i64* %19, align 8
  %84 = load i64, i64* %19, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %69
  %87 = load i64, i64* @ACPI_DEFAULT_PAGE_SIZE, align 8
  store i64 %87, i64* %19, align 8
  br label %88

88:                                               ; preds = %86, %69
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %19, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* %19, align 8
  store i64 %93, i64* %18, align 8
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %18, align 8
  %97 = call i8* @acpi_os_map_memory(i64 %95, i64 %96)
  %98 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %99 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %101 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %115, label %104

104:                                              ; preds = %94
  %105 = load i32, i32* @AE_INFO, align 4
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @ACPI_FORMAT_UINT64(i64 %106)
  %108 = load i64, i64* %18, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @ACPI_ERROR(i32 %109)
  %111 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %112 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %111, i32 0, i32 1
  store i32 0, i32* %112, align 8
  %113 = load i32, i32* @AE_NO_MEMORY, align 4
  %114 = call i32 @return_ACPI_STATUS(i32 %113)
  br label %115

115:                                              ; preds = %104, %94
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %118 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %18, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %122 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %115, %42
  %124 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %125 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %16, align 8
  %130 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = sub nsw i32 %128, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr i8, i8* %126, i64 %134
  store i8* %135, i8** %15, align 8
  %136 = load i32, i32* @ACPI_DB_INFO, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @ACPI_FORMAT_UINT64(i64 %139)
  %141 = call i32 @ACPI_DEBUG_PRINT(i32 %140)
  %142 = load i32, i32* %8, align 4
  switch i32 %142, label %192 [
    i32 129, label %143
    i32 128, label %168
  ]

143:                                              ; preds = %123
  %144 = load i32*, i32** %11, align 8
  store i32 0, i32* %144, align 4
  %145 = load i32, i32* %10, align 4
  switch i32 %145, label %166 [
    i32 8, label %146
    i32 16, label %151
    i32 32, label %156
    i32 64, label %161
  ]

146:                                              ; preds = %143
  %147 = load i8*, i8** %15, align 8
  %148 = call i64 @ACPI_GET8(i8* %147)
  %149 = trunc i64 %148 to i32
  %150 = load i32*, i32** %11, align 8
  store i32 %149, i32* %150, align 4
  br label %167

151:                                              ; preds = %143
  %152 = load i8*, i8** %15, align 8
  %153 = call i64 @ACPI_GET16(i8* %152)
  %154 = trunc i64 %153 to i32
  %155 = load i32*, i32** %11, align 8
  store i32 %154, i32* %155, align 4
  br label %167

156:                                              ; preds = %143
  %157 = load i8*, i8** %15, align 8
  %158 = call i64 @ACPI_GET32(i8* %157)
  %159 = trunc i64 %158 to i32
  %160 = load i32*, i32** %11, align 8
  store i32 %159, i32* %160, align 4
  br label %167

161:                                              ; preds = %143
  %162 = load i8*, i8** %15, align 8
  %163 = call i64 @ACPI_GET64(i8* %162)
  %164 = trunc i64 %163 to i32
  %165 = load i32*, i32** %11, align 8
  store i32 %164, i32* %165, align 4
  br label %167

166:                                              ; preds = %143
  br label %167

167:                                              ; preds = %166, %161, %156, %151, %146
  br label %194

168:                                              ; preds = %123
  %169 = load i32, i32* %10, align 4
  switch i32 %169, label %190 [
    i32 8, label %170
    i32 16, label %175
    i32 32, label %180
    i32 64, label %185
  ]

170:                                              ; preds = %168
  %171 = load i8*, i8** %15, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ACPI_SET8(i8* %171, i32 %173)
  br label %191

175:                                              ; preds = %168
  %176 = load i8*, i8** %15, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ACPI_SET16(i8* %176, i32 %178)
  br label %191

180:                                              ; preds = %168
  %181 = load i8*, i8** %15, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ACPI_SET32(i8* %181, i32 %183)
  br label %191

185:                                              ; preds = %168
  %186 = load i8*, i8** %15, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @ACPI_SET64(i8* %186, i32 %188)
  br label %191

190:                                              ; preds = %168
  br label %191

191:                                              ; preds = %190, %185, %180, %175, %170
  br label %194

192:                                              ; preds = %123
  %193 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %192, %191, %167
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @return_ACPI_STATUS(i32 %195)
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_os_unmap_memory(i8*, i32) #1

declare dso_local i64 @ACPI_ROUND_UP(i64, i64) #1

declare dso_local i8* @acpi_os_map_memory(i64, i64) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @ACPI_GET8(i8*) #1

declare dso_local i64 @ACPI_GET16(i8*) #1

declare dso_local i64 @ACPI_GET32(i8*) #1

declare dso_local i64 @ACPI_GET64(i8*) #1

declare dso_local i32 @ACPI_SET8(i8*, i32) #1

declare dso_local i32 @ACPI_SET16(i8*, i32) #1

declare dso_local i32 @ACPI_SET32(i8*, i32) #1

declare dso_local i32 @ACPI_SET64(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
