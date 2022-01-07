; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_build_normalized_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_build_normalized_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.acpi_namespace_node*, i32 }

@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@ns_build_normalized_path = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@AML_DUAL_NAME_PREFIX = common dso_local global i8 0, align 1
@FALSE = common dso_local global i64 0, align 8
@AML_ROOT_PREFIX = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @ns_build_normalized_path, align 4
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %25 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %23, %struct.acpi_namespace_node* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %31 = icmp ne %struct.acpi_namespace_node* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %156

33:                                               ; preds = %29
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  store %struct.acpi_namespace_node* %34, %struct.acpi_namespace_node** %18, align 8
  br label %35

35:                                               ; preds = %110, %33
  %36 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %18, align 8
  %37 = icmp ne %struct.acpi_namespace_node* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %18, align 8
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %41 = icmp ne %struct.acpi_namespace_node* %39, %40
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %44, label %114

44:                                               ; preds = %42
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %18, align 8
  %46 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %47 = icmp ne %struct.acpi_namespace_node* %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8, i8* @AML_DUAL_NAME_PREFIX, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 %54, i8* %58, align 1
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %18, align 8
  %66 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %65, i32 0, i32 1
  %67 = call i32 @ACPI_MOVE_32_TO_32(i8* %22, i32* %66)
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %14, align 8
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %107, %64
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %110

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 4, %73
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %22, i64 %76
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %15, align 1
  %79 = load i64, i64* %14, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load i8, i8* %15, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 95
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %85, %81, %72
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i8, i8* %15, align 1
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 %96, i8* %100, align 1
  br label %101

101:                                              ; preds = %95, %91
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %87
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %69

110:                                              ; preds = %69
  %111 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %18, align 8
  %112 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %111, i32 0, i32 0
  %113 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %112, align 8
  store %struct.acpi_namespace_node* %113, %struct.acpi_namespace_node** %18, align 8
  br label %35

114:                                              ; preds = %42
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i8, i8* @AML_ROOT_PREFIX, align 1
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 %120, i8* %124, align 1
  br label %125

125:                                              ; preds = %119, %115
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %155

133:                                              ; preds = %129
  %134 = load i8*, i8** %7, align 8
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = getelementptr inbounds i8, i8* %138, i64 -1
  store i8* %139, i8** %17, align 8
  br label %140

140:                                              ; preds = %144, %133
  %141 = load i8*, i8** %16, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = icmp ult i8* %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load i8*, i8** %16, align 8
  %146 = load i8, i8* %145, align 1
  store i8 %146, i8* %15, align 1
  %147 = load i8*, i8** %17, align 8
  %148 = load i8, i8* %147, align 1
  %149 = load i8*, i8** %16, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %16, align 8
  store i8 %148, i8* %149, align 1
  %151 = load i8, i8* %15, align 1
  %152 = load i8*, i8** %17, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 -1
  store i8* %153, i8** %17, align 8
  store i8 %151, i8* %152, align 1
  br label %140

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154, %129
  br label %156

156:                                              ; preds = %155, %32
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8 0, i8* %165, align 1
  br label %166

166:                                              ; preds = %161, %157
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %166
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @return_UINT32(i32 %171)
  %173 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_namespace_node*) #2

declare dso_local i32 @ACPI_MOVE_32_TO_32(i8*, i32*) #2

declare dso_local i32 @return_UINT32(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
