; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_jvp_dtoa_fmt.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_jvp_dtoa_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jvp_dtoa_fmt(%struct.dtoa_context* %0, i8* %1, double %2) #0 {
  %4 = alloca %struct.dtoa_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.dtoa_context* %0, %struct.dtoa_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store double %2, double* %6, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %13, align 8
  %17 = load %struct.dtoa_context*, %struct.dtoa_context** %4, align 8
  %18 = load double, double* %6, align 8
  %19 = call i8* @jvp_dtoa(%struct.dtoa_context* %17, double %18, i32 0, i32 0, i32* %10, i32* %12, i8** %15)
  store i8* %19, i8** %14, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  store i8 45, i8* %23, align 1
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 9999
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %36, %28
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  %32 = load i8, i8* %30, align 1
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  store i8 %32, i8* %33, align 1
  %35 = icmp ne i8 %32, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %29

37:                                               ; preds = %29
  br label %186

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %39, -4
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = add nsw i64 %48, 15
  %50 = icmp sgt i64 %43, %49
  br i1 %50, label %51, label %123

51:                                               ; preds = %41, %38
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  %54 = load i8, i8* %52, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 %54, i8* %55, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %51
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 46, i8* %61, align 1
  br label %63

63:                                               ; preds = %69, %60
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  %66 = load i8, i8* %64, align 1
  %67 = load i8*, i8** %5, align 8
  store i8 %66, i8* %67, align 1
  %68 = icmp ne i8 %66, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  br label %63

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 101, i8* %74, align 1
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  store i8 45, i8* %80, align 1
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %87

84:                                               ; preds = %73
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  store i8 43, i8* %85, align 1
  br label %87

87:                                               ; preds = %84, %79
  store i32 2, i32* %11, align 4
  store i32 10, i32* %8, align 4
  br label %88

88:                                               ; preds = %94, %87
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 10, %89
  %91 = load i32, i32* %10, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %97, 10
  store i32 %98, i32* %8, align 4
  br label %88

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %113, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 48
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %5, align 8
  store i8 %106, i8* %107, align 1
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %11, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %121

113:                                              ; preds = %100
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = mul nsw i32 %119, 10
  store i32 %120, i32* %10, align 4
  br label %100

121:                                              ; preds = %112
  %122 = load i8*, i8** %5, align 8
  store i8 0, i8* %122, align 1
  br label %185

123:                                              ; preds = %41
  %124 = load i32, i32* %10, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %123
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %5, align 8
  store i8 48, i8* %127, align 1
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %5, align 8
  store i8 46, i8* %129, align 1
  br label %131

131:                                              ; preds = %137, %126
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %5, align 8
  store i8 48, i8* %135, align 1
  br label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %131

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %148, %140
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %9, align 8
  %144 = load i8, i8* %142, align 1
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %5, align 8
  store i8 %144, i8* %145, align 1
  %147 = icmp ne i8 %144, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %141

149:                                              ; preds = %141
  br label %184

150:                                              ; preds = %123
  br label %151

151:                                              ; preds = %171, %150
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %9, align 8
  %154 = load i8, i8* %152, align 1
  %155 = load i8*, i8** %5, align 8
  store i8 %154, i8* %155, align 1
  %156 = icmp ne i8 %154, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %151
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %5, align 8
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %10, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %157
  %164 = load i8*, i8** %9, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i8*, i8** %5, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %5, align 8
  store i8 46, i8* %169, align 1
  br label %171

171:                                              ; preds = %168, %163, %157
  br label %151

172:                                              ; preds = %151
  br label %173

173:                                              ; preds = %179, %172
  %174 = load i32, i32* %10, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i8*, i8** %5, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %5, align 8
  store i8 48, i8* %177, align 1
  br label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %10, align 4
  br label %173

182:                                              ; preds = %173
  %183 = load i8*, i8** %5, align 8
  store i8 0, i8* %183, align 1
  br label %184

184:                                              ; preds = %182, %149
  br label %185

185:                                              ; preds = %184, %121
  br label %186

186:                                              ; preds = %185, %37
  %187 = load %struct.dtoa_context*, %struct.dtoa_context** %4, align 8
  %188 = load i8*, i8** %14, align 8
  %189 = call i32 @jvp_freedtoa(%struct.dtoa_context* %187, i8* %188)
  br label %190

190:                                              ; preds = %186
  %191 = load i8*, i8** %13, align 8
  ret i8* %191
}

declare dso_local i8* @jvp_dtoa(%struct.dtoa_context*, double, i32, i32, i32*, i32*, i8**) #1

declare dso_local i32 @jvp_freedtoa(%struct.dtoa_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
