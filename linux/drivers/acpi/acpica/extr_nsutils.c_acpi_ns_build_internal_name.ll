; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_build_internal_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_build_internal_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namestring_info = type { i32, i8*, i8*, i32, i64 }

@ns_build_internal_name = common dso_local global i32 0, align 4
@AML_ROOT_PREFIX = common dso_local global i8 0, align 1
@AML_DUAL_NAME_PREFIX = common dso_local global i8 0, align 1
@AML_MULTI_NAME_PREFIX = common dso_local global i8 0, align 1
@AML_PARENT_PREFIX = common dso_local global i8 0, align 1
@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@AE_BAD_PATHNAME = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Returning [%p] (abs) \22\\%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Returning [%p] (rel) \22%s\22\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_build_internal_name(%struct.acpi_namestring_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_namestring_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_namestring_info* %0, %struct.acpi_namestring_info** %3, align 8
  %9 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %18 = load i32, i32* @ns_build_internal_name, align 4
  %19 = call i32 @ACPI_FUNCTION_TRACE(i32 %18)
  %20 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %1
  %25 = load i8, i8* @AML_ROOT_PREFIX, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 %25, i8* %27, align 1
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %7, align 8
  br label %53

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i8, i8* @AML_DUAL_NAME_PREFIX, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 %37, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %7, align 8
  br label %52

42:                                               ; preds = %33
  %43 = load i8, i8* @AML_MULTI_NAME_PREFIX, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %4, align 4
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %47, i8* %49, align 1
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %42, %36
  br label %53

53:                                               ; preds = %52, %30
  br label %118

54:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %55 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %63 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i8, i8* @AML_PARENT_PREFIX, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %60

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %4, align 4
  %78 = icmp sle i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8* %83, i8** %7, align 8
  br label %117

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i8, i8* @AML_DUAL_NAME_PREFIX, align 1
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 %88, i8* %92, align 1
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, 1
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8* %97, i8** %7, align 8
  br label %116

98:                                               ; preds = %84
  %99 = load i8, i8* @AML_MULTI_NAME_PREFIX, align 1
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 %99, i8* %103, align 1
  %104 = load i32, i32* %4, align 4
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 1
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8 %105, i8* %110, align 1
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, 2
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  store i8* %115, i8** %7, align 8
  br label %116

116:                                              ; preds = %98, %87
  br label %117

117:                                              ; preds = %116, %79
  br label %118

118:                                              ; preds = %117, %53
  br label %119

119:                                              ; preds = %178, %118
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %181

122:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %155, %122
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %123
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = call i64 @ACPI_IS_PATH_SEPARATOR(i8 signext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132, %127
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 95, i8* %141, align 1
  br label %154

142:                                              ; preds = %132
  %143 = load i8*, i8** %6, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = call i64 @toupper(i32 %145)
  %147 = trunc i64 %146 to i8
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  store i8 %147, i8* %151, align 1
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %6, align 8
  br label %154

154:                                              ; preds = %142, %137
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %123

158:                                              ; preds = %123
  %159 = load i8*, i8** %6, align 8
  %160 = load i8, i8* %159, align 1
  %161 = call i64 @ACPI_IS_PATH_SEPARATOR(i8 signext %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %158
  %164 = load i8*, i8** %6, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* @AE_BAD_PATHNAME, align 4
  %170 = call i32 @return_ACPI_STATUS(i32 %169)
  br label %171

171:                                              ; preds = %168, %163, %158
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %6, align 8
  %174 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %175 = load i8*, i8** %7, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %7, align 8
  br label %178

178:                                              ; preds = %171
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %4, align 4
  br label %119

181:                                              ; preds = %119
  %182 = load i8*, i8** %7, align 8
  store i8 0, i8* %182, align 1
  %183 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %184 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32, i32* @ACPI_DB_EXEC, align 4
  %189 = load i8*, i8** %5, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = ptrtoint i8* %190 to i32
  %192 = call i32 @ACPI_DEBUG_PRINT(i32 %191)
  br label %199

193:                                              ; preds = %181
  %194 = load i32, i32* @ACPI_DB_EXEC, align 4
  %195 = load i8*, i8** %5, align 8
  %196 = load i8*, i8** %5, align 8
  %197 = ptrtoint i8* %196 to i32
  %198 = call i32 @ACPI_DEBUG_PRINT(i32 %197)
  br label %199

199:                                              ; preds = %193, %187
  %200 = load i32, i32* @AE_OK, align 4
  %201 = call i32 @return_ACPI_STATUS(i32 %200)
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @ACPI_IS_PATH_SEPARATOR(i8 signext) #1

declare dso_local i64 @toupper(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
