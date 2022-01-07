; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_aux.c_delpaths_sorted.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_aux.c_delpaths_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @delpaths_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delpaths_sorted(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = call i32 (...) @jv_array()
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %132, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @jv_copy(i32 %17)
  %19 = call i32 @jv_array_length(i32 %18)
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %134

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @jv_copy(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @jv_array_get(i32 %24, i32 %25)
  %27 = call i32 @jv_array_length(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @jv_copy(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @jv_array_get(i32 %33, i32 %34)
  %36 = call i32 @jv_array_length(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @jv_copy(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @jv_array_get(i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @jv_array_get(i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %66, %21
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @jv_copy(i32 %49)
  %51 = call i32 @jv_array_length(i32 %50)
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @jv_copy(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @jv_copy(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @jv_array_get(i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @jv_array_get(i32 %59, i32 %60)
  %62 = call i64 @jv_equal(i32 %55, i32 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %53, %47
  %65 = phi i1 [ false, %47 ], [ %63, %53 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %47

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @jv_array_append(i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %132

76:                                               ; preds = %69
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @jv_copy(i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @jv_copy(i32 %79)
  %81 = call i32 @jv_get(i32 %78, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i64 @jv_is_valid(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @jv_free(i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @jv_free(i32 %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %4, align 4
  br label %134

91:                                               ; preds = %76
  %92 = load i32, i32* %12, align 4
  %93 = call i64 @jv_get_kind(i32 %92)
  %94 = load i64, i64* @JV_KIND_NULL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @jv_free(i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @jv_free(i32 %99)
  br label %125

101:                                              ; preds = %91
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @jv_copy(i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @jv_array_slice(i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 @delpaths_sorted(i32 %102, i32 %107, i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i64 @jv_is_valid(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @jv_free(i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @jv_free(i32 %117)
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %4, align 4
  br label %134

120:                                              ; preds = %101
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @jv_set(i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %96
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %4, align 4
  %128 = call i64 @jv_is_valid(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  br label %134

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %72
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %8, align 4
  br label %15

134:                                              ; preds = %130, %114, %85, %15
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @jv_free(i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = call i64 @jv_is_valid(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @jv_dels(i32 %141, i32 %142)
  store i32 %143, i32* %4, align 4
  br label %147

144:                                              ; preds = %134
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @jv_free(i32 %145)
  br label %147

147:                                              ; preds = %144, %140
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @jv_array(...) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jv_array_get(i32, i32) #1

declare dso_local i64 @jv_equal(i32, i32) #1

declare dso_local i32 @jv_array_append(i32, i32) #1

declare dso_local i32 @jv_get(i32, i32) #1

declare dso_local i64 @jv_is_valid(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_array_slice(i32, i32, i32) #1

declare dso_local i32 @jv_set(i32, i32, i32) #1

declare dso_local i32 @jv_dels(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
