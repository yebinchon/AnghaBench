; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_malloc_io.c_malloc_strtoumax.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_malloc_io.c_malloc_strtoumax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@UINTMAX_MAX = common dso_local global i32 0, align 4
@JEMALLOC_FALLTHROUGH = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malloc_strtoumax(i8* noalias %0, i8** noalias %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 36
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %17, %3
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %12, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @set_errno(i32 %25)
  %27 = load i32, i32* @UINTMAX_MAX, align 4
  store i32 %27, i32* %7, align 4
  br label %186

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %44
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %43 [
    i32 9, label %34
    i32 10, label %34
    i32 11, label %34
    i32 12, label %34
    i32 13, label %34
    i32 32, label %34
    i32 45, label %37
    i32 43, label %39
  ]

34:                                               ; preds = %30, %30, %30, %30, %30, %30
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %11, align 8
  br label %44

37:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  %38 = load i32, i32* @JEMALLOC_FALLTHROUGH, align 4
  br label %39

39:                                               ; preds = %30, %37
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %11, align 8
  %42 = load i32, i32* @JEMALLOC_FALLTHROUGH, align 4
  br label %43

43:                                               ; preds = %30, %39
  br label %45

44:                                               ; preds = %34
  br label %30

45:                                               ; preds = %43
  %46 = load i8*, i8** %11, align 8
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 48
  br i1 %50, label %51, label %89

51:                                               ; preds = %45
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %85 [
    i32 48, label %56
    i32 49, label %56
    i32 50, label %56
    i32 51, label %56
    i32 52, label %56
    i32 53, label %56
    i32 54, label %56
    i32 55, label %56
    i32 88, label %67
    i32 120, label %67
  ]

56:                                               ; preds = %51, %51, %51, %51, %51, %51, %51, %51
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 8, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %11, align 8
  br label %66

66:                                               ; preds = %63, %60
  br label %88

67:                                               ; preds = %51, %51
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  switch i32 %71, label %83 [
    i32 48, label %72
    i32 49, label %72
    i32 50, label %72
    i32 51, label %72
    i32 52, label %72
    i32 53, label %72
    i32 54, label %72
    i32 55, label %72
    i32 56, label %72
    i32 57, label %72
    i32 65, label %72
    i32 66, label %72
    i32 67, label %72
    i32 68, label %72
    i32 69, label %72
    i32 70, label %72
    i32 97, label %72
    i32 98, label %72
    i32 99, label %72
    i32 100, label %72
    i32 101, label %72
    i32 102, label %72
  ]

72:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 16, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 16
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %11, align 8
  br label %82

82:                                               ; preds = %79, %76
  br label %84

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83, %82
  br label %88

85:                                               ; preds = %51
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %11, align 8
  store i32 0, i32* %7, align 4
  br label %186

88:                                               ; preds = %84, %66
  br label %89

89:                                               ; preds = %88, %45
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 10, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %89
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %166, %93
  %95 = load i8*, i8** %11, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sge i32 %97, 48
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load i8*, i8** %11, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sle i32 %102, 57
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i8*, i8** %11, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = sub nsw i32 %107, 48
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %149, label %111

111:                                              ; preds = %104, %99, %94
  %112 = load i8*, i8** %11, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sge i32 %114, 65
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load i8*, i8** %11, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sle i32 %119, 90
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i8*, i8** %11, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = add nsw i32 10, %124
  %126 = sub nsw i32 %125, 65
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %149, label %129

129:                                              ; preds = %121, %116, %111
  %130 = load i8*, i8** %11, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sge i32 %132, 97
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load i8*, i8** %11, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 122
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load i8*, i8** %11, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = add nsw i32 10, %142
  %144 = sub nsw i32 %143, 97
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ult i32 %144, %145
  br label %147

147:                                              ; preds = %139, %134, %129
  %148 = phi i1 [ false, %134 ], [ false, %129 ], [ %146, %139 ]
  br label %149

149:                                              ; preds = %147, %121, %104
  %150 = phi i1 [ true, %121 ], [ true, %104 ], [ %148, %147 ]
  br i1 %150, label %151, label %169

151:                                              ; preds = %149
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %7, align 4
  %155 = mul i32 %154, %153
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %7, align 4
  %158 = add i32 %157, %156
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %151
  %163 = load i32, i32* @ERANGE, align 4
  %164 = call i32 @set_errno(i32 %163)
  %165 = load i32, i32* @UINTMAX_MAX, align 4
  store i32 %165, i32* %7, align 4
  br label %186

166:                                              ; preds = %151
  %167 = load i8*, i8** %11, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %11, align 8
  br label %94

169:                                              ; preds = %149
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  %174 = zext i32 %173 to i64
  %175 = sub nsw i64 0, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %172, %169
  %178 = load i8*, i8** %11, align 8
  %179 = load i8*, i8** %12, align 8
  %180 = icmp eq i8* %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i32, i32* @EINVAL, align 4
  %183 = call i32 @set_errno(i32 %182)
  %184 = load i32, i32* @UINTMAX_MAX, align 4
  store i32 %184, i32* %7, align 4
  br label %186

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185, %181, %162, %85, %23
  %187 = load i8**, i8*** %5, align 8
  %188 = icmp ne i8** %187, null
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load i8*, i8** %11, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = icmp eq i8* %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i8*, i8** %4, align 8
  %195 = load i8**, i8*** %5, align 8
  store i8* %194, i8** %195, align 8
  br label %199

196:                                              ; preds = %189
  %197 = load i8*, i8** %11, align 8
  %198 = load i8**, i8*** %5, align 8
  store i8* %197, i8** %198, align 8
  br label %199

199:                                              ; preds = %196, %193
  br label %200

200:                                              ; preds = %199, %186
  %201 = load i32, i32* %7, align 4
  ret i32 %201
}

declare dso_local i32 @set_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
