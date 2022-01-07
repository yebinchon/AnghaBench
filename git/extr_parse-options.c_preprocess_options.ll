; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_preprocess_options.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_preprocess_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i8** }
%struct.option = type { i64, i32, i8*, i8* }

@OPTION_END = common dso_local global i64 0, align 8
@OPTION_ALIAS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"An alias must have long option name\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"No please. Nested aliases are not supported.\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"could not find source option '%s' of alias '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.option* (%struct.parse_opt_ctx_t*, %struct.option*)* @preprocess_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.option* @preprocess_options(%struct.parse_opt_ctx_t* %0, %struct.option* %1) #0 {
  %3 = alloca %struct.option*, align 8
  %4 = alloca %struct.parse_opt_ctx_t*, align 8
  %5 = alloca %struct.option*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %4, align 8
  store %struct.option* %1, %struct.option** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %38, %2
  %17 = load %struct.option*, %struct.option** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i64 %19
  %21 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OPTION_END, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %16
  %26 = load %struct.option*, %struct.option** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.option, %struct.option* %26, i64 %28
  %30 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OPTION_ALIAS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store %struct.option* null, %struct.option** %3, align 8
  br label %212

45:                                               ; preds = %41
  %46 = load %struct.option*, %struct.option** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @ALLOC_ARRAY(%struct.option* %46, i32 %48)
  %50 = load %struct.option*, %struct.option** %6, align 8
  %51 = load %struct.option*, %struct.option** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @COPY_ARRAY(%struct.option* %50, %struct.option* %51, i32 %53)
  %55 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %56 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  %60 = mul nsw i32 3, %59
  %61 = call i32 @CALLOC_ARRAY(i8** %57, i32 %60)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %207, %45
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %210

66:                                               ; preds = %62
  %67 = load %struct.option*, %struct.option** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.option, %struct.option* %67, i64 %69
  %71 = getelementptr inbounds %struct.option, %struct.option* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @OPTION_ALIAS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %207

76:                                               ; preds = %66
  %77 = load %struct.option*, %struct.option** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.option, %struct.option* %77, i64 %79
  %81 = getelementptr inbounds %struct.option, %struct.option* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %11, align 4
  %83 = load %struct.option*, %struct.option** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.option, %struct.option* %83, i64 %85
  %87 = getelementptr inbounds %struct.option, %struct.option* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %12, align 8
  %89 = load %struct.option*, %struct.option** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.option, %struct.option* %89, i64 %91
  %93 = getelementptr inbounds %struct.option, %struct.option* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %13, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %76
  %98 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %76
  store i32 0, i32* %14, align 4
  br label %100

100:                                              ; preds = %152, %99
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %155

104:                                              ; preds = %100
  %105 = load %struct.option*, %struct.option** %5, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.option, %struct.option* %105, i64 %107
  %109 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %15, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load i8*, i8** %15, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = call i64 @strcmp(i8* %114, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113, %104
  br label %152

119:                                              ; preds = %113
  %120 = load %struct.option*, %struct.option** %5, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.option, %struct.option* %120, i64 %122
  %124 = getelementptr inbounds %struct.option, %struct.option* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @OPTION_ALIAS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %119
  %131 = load %struct.option*, %struct.option** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.option, %struct.option* %131, i64 %133
  %135 = load %struct.option*, %struct.option** %5, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.option, %struct.option* %135, i64 %137
  %139 = call i32 @memcpy(%struct.option* %134, %struct.option* %138, i32 32)
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.option*, %struct.option** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.option, %struct.option* %141, i64 %143
  %145 = getelementptr inbounds %struct.option, %struct.option* %144, i32 0, i32 1
  store i32 %140, i32* %145, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = load %struct.option*, %struct.option** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.option, %struct.option* %147, i64 %149
  %151 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 2
  store i8* %146, i8** %151, align 8
  br label %155

152:                                              ; preds = %118
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %100

155:                                              ; preds = %130, %100
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load i8*, i8** %13, align 8
  %161 = load %struct.option*, %struct.option** %6, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.option, %struct.option* %161, i64 %163
  %165 = getelementptr inbounds %struct.option, %struct.option* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %160, i8* %166)
  br label %168

168:                                              ; preds = %159, %155
  %169 = load %struct.option*, %struct.option** %6, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.option, %struct.option* %169, i64 %171
  %173 = getelementptr inbounds %struct.option, %struct.option* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %176 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %175, i32 0, i32 0
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = mul nsw i32 %178, 3
  %180 = add nsw i32 %179, 0
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %177, i64 %181
  store i8* %174, i8** %182, align 8
  %183 = load %struct.option*, %struct.option** %5, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.option, %struct.option* %183, i64 %185
  %187 = getelementptr inbounds %struct.option, %struct.option* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %190 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %189, i32 0, i32 0
  %191 = load i8**, i8*** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = mul nsw i32 %192, 3
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %191, i64 %195
  store i8* %188, i8** %196, align 8
  %197 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %198 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %197, i32 0, i32 0
  %199 = load i8**, i8*** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = mul nsw i32 %200, 3
  %202 = add nsw i32 %201, 2
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %199, i64 %203
  store i8* null, i8** %204, align 8
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %168, %75
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %7, align 4
  br label %62

210:                                              ; preds = %62
  %211 = load %struct.option*, %struct.option** %6, align 8
  store %struct.option* %211, %struct.option** %3, align 8
  br label %212

212:                                              ; preds = %210, %44
  %213 = load %struct.option*, %struct.option** %3, align 8
  ret %struct.option* %213
}

declare dso_local i32 @ALLOC_ARRAY(%struct.option*, i32) #1

declare dso_local i32 @COPY_ARRAY(%struct.option*, %struct.option*, i32) #1

declare dso_local i32 @CALLOC_ARRAY(i8**, i32) #1

declare dso_local i32 @BUG(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.option*, %struct.option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
