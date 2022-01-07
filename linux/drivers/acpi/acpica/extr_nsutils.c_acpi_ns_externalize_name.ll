; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_externalize_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_externalize_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ns_externalize_name = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid internal name\00", align 1
@AE_BAD_PATHNAME = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_externalize_name(i64 %0, i8* %1, i64* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @ns_externalize_name, align 4
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i8**, i8*** %9, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %20, %4
  %27 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %62 [
    i32 128, label %34
    i32 129, label %35
  ]

34:                                               ; preds = %29
  store i64 1, i64* %13, align 8
  br label %63

35:                                               ; preds = %29
  store i64 0, i64* %14, align 8
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @ACPI_IS_PARENT_PREFIX(i8 signext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  br label %51

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %14, align 8
  br label %36

55:                                               ; preds = %50, %36
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %14, align 8
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %59, %55
  br label %63

62:                                               ; preds = %29
  br label %63

63:                                               ; preds = %62, %61, %34
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %88 [
    i32 130, label %73
    i32 131, label %84
    i32 0, label %87
  ]

73:                                               ; preds = %67
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %74, 2
  store i64 %75, i64* %10, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %13, align 8
  %78 = trunc i64 %77 to i32
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i64
  store i64 %83, i64* %11, align 8
  br label %90

84:                                               ; preds = %67
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %10, align 8
  store i64 2, i64* %11, align 8
  br label %90

87:                                               ; preds = %67
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %90

88:                                               ; preds = %67
  %89 = load i64, i64* %13, align 8
  store i64 %89, i64* %10, align 8
  store i64 1, i64* %11, align 8
  br label %90

90:                                               ; preds = %88, %87, %84, %73
  br label %91

91:                                               ; preds = %90, %63
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %11, align 8
  %94 = mul i64 4, %93
  %95 = add i64 %92, %94
  %96 = load i64, i64* %11, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i64, i64* %11, align 8
  %100 = sub i64 %99, 1
  br label %102

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i64 [ %100, %98 ], [ 0, %101 ]
  %104 = add i64 %95, %103
  %105 = add i64 %104, 1
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load i32, i32* @AE_INFO, align 4
  %111 = call i32 @ACPI_ERROR(i32 ptrtoint ([22 x i8]* @.str to i32))
  %112 = load i32, i32* @AE_BAD_PATHNAME, align 4
  %113 = call i32 @return_ACPI_STATUS(i32 %112)
  br label %114

114:                                              ; preds = %109, %102
  %115 = load i64, i64* %12, align 8
  %116 = call i8* @ACPI_ALLOCATE_ZEROED(i64 %115)
  %117 = load i8**, i8*** %9, align 8
  store i8* %116, i8** %117, align 8
  %118 = load i8**, i8*** %9, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @AE_NO_MEMORY, align 4
  %123 = call i32 @return_ACPI_STATUS(i32 %122)
  br label %124

124:                                              ; preds = %121, %114
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %125

125:                                              ; preds = %139, %124
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %13, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load i8*, i8** %7, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = load i8**, i8*** %9, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = load i64, i64* %15, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %15, align 8
  %138 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8 %133, i8* %138, align 1
  br label %139

139:                                              ; preds = %129
  %140 = load i64, i64* %14, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %14, align 8
  br label %125

142:                                              ; preds = %125
  %143 = load i64, i64* %11, align 8
  %144 = icmp ugt i64 %143, 0
  br i1 %144, label %145, label %183

145:                                              ; preds = %142
  store i64 0, i64* %14, align 8
  br label %146

146:                                              ; preds = %179, %145
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* %11, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %182

150:                                              ; preds = %146
  %151 = load i64, i64* %14, align 8
  %152 = icmp ugt i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i8**, i8*** %9, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = load i64, i64* %15, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %15, align 8
  %158 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8 46, i8* %158, align 1
  br label %159

159:                                              ; preds = %153, %150
  %160 = load i8**, i8*** %9, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = load i64, i64* %15, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  %164 = load i8*, i8** %7, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = call i32 @ACPI_COPY_NAMESEG(i8* %163, i8* %166)
  %168 = load i8**, i8*** %9, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = load i64, i64* %15, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = call i32 @acpi_ut_repair_name(i8* %171)
  %173 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %174 = load i64, i64* %15, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %15, align 8
  %176 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %177 = load i64, i64* %10, align 8
  %178 = add i64 %177, %176
  store i64 %178, i64* %10, align 8
  br label %179

179:                                              ; preds = %159
  %180 = load i64, i64* %14, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %14, align 8
  br label %146

182:                                              ; preds = %146
  br label %183

183:                                              ; preds = %182, %142
  %184 = load i64*, i64** %8, align 8
  %185 = icmp ne i64* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i64, i64* %12, align 8
  %188 = load i64*, i64** %8, align 8
  store i64 %187, i64* %188, align 8
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i32, i32* @AE_OK, align 4
  %191 = call i32 @return_ACPI_STATUS(i32 %190)
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_IS_PARENT_PREFIX(i8 signext) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i8* @ACPI_ALLOCATE_ZEROED(i64) #1

declare dso_local i32 @ACPI_COPY_NAMESEG(i8*, i8*) #1

declare dso_local i32 @acpi_ut_repair_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
