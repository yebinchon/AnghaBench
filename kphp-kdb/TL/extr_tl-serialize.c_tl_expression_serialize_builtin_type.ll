; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_expression_serialize_builtin_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_expression_serialize_builtin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_scheme_object = type { i32 }
%struct.tl_int_array = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ouble\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"isn't of type 'double'\00", align 1
@CODE_double = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"output buffer overflow\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"isn't of type 'int'\00", align 1
@CODE_int = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ong\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"isn't of type 'long'\00", align 1
@CODE_long = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"tring\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"isn't of type 'string'\00", align 1
@CODE_string = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_expression_serialize_builtin_type(%struct.tl_compiler* %0, %struct.tl_scheme_object* %1, i8* %2, %struct.tl_int_array* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_compiler*, align 8
  %7 = alloca %struct.tl_scheme_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tl_int_array*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca i8*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %6, align 8
  store %struct.tl_scheme_object* %1, %struct.tl_scheme_object** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.tl_int_array* %3, %struct.tl_int_array** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = call i32 @tolower(i8 signext %16)
  switch i32 %17, label %178 [
    i32 100, label %18
    i32 105, label %58
    i32 108, label %98
    i32 115, label %138
  ]

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %18
  %24 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %25 = call i32 @tl_scheme_double_value(%struct.tl_scheme_object* %24, double* %12)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %29 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %30 = call i32 @tl_serialize_failf(%struct.tl_compiler* %28, %struct.tl_scheme_object* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %5, align 4
  br label %179

31:                                               ; preds = %23
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @isupper(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.tl_int_array*, %struct.tl_int_array** %9, align 8
  %39 = load i32, i32* @CODE_double, align 4
  %40 = call i32 @tl_int_array_append(%struct.tl_int_array* %38, i32 %39)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %44 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %45 = call i32 @tl_serialize_failf(%struct.tl_compiler* %43, %struct.tl_scheme_object* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %45, i32* %5, align 4
  br label %179

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.tl_int_array*, %struct.tl_int_array** %9, align 8
  %49 = load double, double* %12, align 8
  %50 = call i32 @tl_int_array_append_double(%struct.tl_int_array* %48, double %49)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %54 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %55 = call i32 @tl_serialize_failf(%struct.tl_compiler* %53, %struct.tl_scheme_object* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %5, align 4
  br label %179

56:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %179

57:                                               ; preds = %18
  br label %178

58:                                               ; preds = %4
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %58
  %64 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %65 = call i32 @tl_scheme_int_value(%struct.tl_scheme_object* %64, i32* %10)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %69 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %70 = call i32 @tl_serialize_failf(%struct.tl_compiler* %68, %struct.tl_scheme_object* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 %70, i32* %5, align 4
  br label %179

71:                                               ; preds = %63
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @isupper(i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.tl_int_array*, %struct.tl_int_array** %9, align 8
  %79 = load i32, i32* @CODE_int, align 4
  %80 = call i32 @tl_int_array_append(%struct.tl_int_array* %78, i32 %79)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %84 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %85 = call i32 @tl_serialize_failf(%struct.tl_compiler* %83, %struct.tl_scheme_object* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %85, i32* %5, align 4
  br label %179

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %71
  %88 = load %struct.tl_int_array*, %struct.tl_int_array** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @tl_int_array_append(%struct.tl_int_array* %88, i32 %89)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %94 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %95 = call i32 @tl_serialize_failf(%struct.tl_compiler* %93, %struct.tl_scheme_object* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %95, i32* %5, align 4
  br label %179

96:                                               ; preds = %87
  store i32 1, i32* %5, align 4
  br label %179

97:                                               ; preds = %58
  br label %178

98:                                               ; preds = %4
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %137, label %103

103:                                              ; preds = %98
  %104 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %105 = call i32 @tl_scheme_long_value(%struct.tl_scheme_object* %104, i64* %11)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %109 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %110 = call i32 @tl_serialize_failf(%struct.tl_compiler* %108, %struct.tl_scheme_object* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 %110, i32* %5, align 4
  br label %179

111:                                              ; preds = %103
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @isupper(i8 signext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.tl_int_array*, %struct.tl_int_array** %9, align 8
  %119 = load i32, i32* @CODE_long, align 4
  %120 = call i32 @tl_int_array_append(%struct.tl_int_array* %118, i32 %119)
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %124 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %125 = call i32 @tl_serialize_failf(%struct.tl_compiler* %123, %struct.tl_scheme_object* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %125, i32* %5, align 4
  br label %179

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %111
  %128 = load %struct.tl_int_array*, %struct.tl_int_array** %9, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @tl_int_array_append_long(%struct.tl_int_array* %128, i64 %129)
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %134 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %135 = call i32 @tl_serialize_failf(%struct.tl_compiler* %133, %struct.tl_scheme_object* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %135, i32* %5, align 4
  br label %179

136:                                              ; preds = %127
  store i32 1, i32* %5, align 4
  br label %179

137:                                              ; preds = %98
  br label %178

138:                                              ; preds = %4
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %177, label %143

143:                                              ; preds = %138
  %144 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %145 = call i32 @tl_scheme_string_value(%struct.tl_scheme_object* %144, i8** %13)
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %149 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %150 = call i32 @tl_serialize_failf(%struct.tl_compiler* %148, %struct.tl_scheme_object* %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  store i32 %150, i32* %5, align 4
  br label %179

151:                                              ; preds = %143
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = call i32 @isupper(i8 signext %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load %struct.tl_int_array*, %struct.tl_int_array** %9, align 8
  %159 = load i32, i32* @CODE_string, align 4
  %160 = call i32 @tl_int_array_append(%struct.tl_int_array* %158, i32 %159)
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %164 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %165 = call i32 @tl_serialize_failf(%struct.tl_compiler* %163, %struct.tl_scheme_object* %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %165, i32* %5, align 4
  br label %179

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166, %151
  %168 = load %struct.tl_int_array*, %struct.tl_int_array** %9, align 8
  %169 = load i8*, i8** %13, align 8
  %170 = call i32 @tl_int_array_append_string(%struct.tl_int_array* %168, i8* %169)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %174 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  %175 = call i32 @tl_serialize_failf(%struct.tl_compiler* %173, %struct.tl_scheme_object* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %175, i32* %5, align 4
  br label %179

176:                                              ; preds = %167
  store i32 1, i32* %5, align 4
  br label %179

177:                                              ; preds = %138
  br label %178

178:                                              ; preds = %4, %177, %137, %97, %57
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %178, %176, %172, %162, %147, %136, %132, %122, %107, %96, %92, %82, %67, %56, %52, %42, %27
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @tl_scheme_double_value(%struct.tl_scheme_object*, double*) #1

declare dso_local i32 @tl_serialize_failf(%struct.tl_compiler*, %struct.tl_scheme_object*, i8*) #1

declare dso_local i32 @isupper(i8 signext) #1

declare dso_local i32 @tl_int_array_append(%struct.tl_int_array*, i32) #1

declare dso_local i32 @tl_int_array_append_double(%struct.tl_int_array*, double) #1

declare dso_local i32 @tl_scheme_int_value(%struct.tl_scheme_object*, i32*) #1

declare dso_local i32 @tl_scheme_long_value(%struct.tl_scheme_object*, i64*) #1

declare dso_local i32 @tl_int_array_append_long(%struct.tl_int_array*, i64) #1

declare dso_local i32 @tl_scheme_string_value(%struct.tl_scheme_object*, i8**) #1

declare dso_local i32 @tl_int_array_append_string(%struct.tl_int_array*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
