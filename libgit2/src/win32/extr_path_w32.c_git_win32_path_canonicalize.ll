; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_git_win32_path_canonicalize.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_git_win32_path_canonicalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@ERROR_FILENAME_EXCED_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_win32_path_canonicalize(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @path__skip_prefix(i32* %9)
  store i32* %10, i32** %6, align 8
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  store i32* %11, i32** %5, align 8
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ult i32* %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  store i32 92, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  br label %12

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %163, %26
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %164

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  store i32* %32, i32** %7, align 8
  br label %33

33:                                               ; preds = %49, %31
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  store i32 92, i32* %42, align 4
  br label %52

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %52

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  br label %33

52:                                               ; preds = %47, %41, %33
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 46
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %152

67:                                               ; preds = %61, %52
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %68, 2
  br i1 %69, label %70, label %125

70:                                               ; preds = %67
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %125

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 46
  br i1 %79, label %80, label %125

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = icmp eq i32* %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 92
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32*, i32** %6, align 8
  store i32* %92, i32** %4, align 8
  br label %124

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %105, %93
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = icmp ugt i32* %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 -1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 92
  br label %103

103:                                              ; preds = %98, %94
  %104 = phi i1 [ false, %94 ], [ %102, %98 ]
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 -1
  store i32* %107, i32** %6, align 8
  br label %94

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %120, %108
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = icmp ugt i32* %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 -1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 92
  br label %118

118:                                              ; preds = %113, %109
  %119 = phi i1 [ false, %109 ], [ %117, %113 ]
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 -1
  store i32* %122, i32** %6, align 8
  br label %109

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %91
  br label %151

125:                                              ; preds = %75, %70, %67
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 92
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 92
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i64, i64* %8, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %8, align 8
  br label %136

136:                                              ; preds = %133, %129, %125
  %137 = load i32*, i32** %6, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = icmp ne i32* %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load i32*, i32** %6, align 8
  %142 = load i32*, i32** %5, align 8
  %143 = load i64, i64* %8, align 8
  %144 = mul i64 4, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memmove(i32* %141, i32* %142, i32 %145)
  br label %147

147:                                              ; preds = %140, %136
  %148 = load i64, i64* %8, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 %148
  store i32* %150, i32** %6, align 8
  br label %151

151:                                              ; preds = %147, %124
  br label %152

152:                                              ; preds = %151, %66
  %153 = load i64, i64* %8, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 %153
  store i32* %155, i32** %5, align 8
  br label %156

156:                                              ; preds = %160, %152
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 92
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %5, align 8
  br label %156

163:                                              ; preds = %156
  br label %27

164:                                              ; preds = %27
  br label %165

165:                                              ; preds = %176, %164
  %166 = load i32*, i32** %6, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = icmp ugt i32* %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32*, i32** %6, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 -1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 92
  br label %174

174:                                              ; preds = %169, %165
  %175 = phi i1 [ false, %165 ], [ %173, %169 ]
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 -1
  store i32* %178, i32** %6, align 8
  br label %165

179:                                              ; preds = %174
  %180 = load i32*, i32** %6, align 8
  store i32 0, i32* %180, align 4
  %181 = load i32*, i32** %6, align 8
  %182 = load i32*, i32** %3, align 8
  %183 = ptrtoint i32* %181 to i64
  %184 = ptrtoint i32* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 4
  %187 = load i32, i32* @INT_MAX, align 4
  %188 = sext i32 %187 to i64
  %189 = icmp sgt i64 %186, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %179
  %191 = load i32, i32* @ERROR_FILENAME_EXCED_RANGE, align 4
  %192 = call i32 @SetLastError(i32 %191)
  store i32 -1, i32* %2, align 4
  br label %201

193:                                              ; preds = %179
  %194 = load i32*, i32** %6, align 8
  %195 = load i32*, i32** %3, align 8
  %196 = ptrtoint i32* %194 to i64
  %197 = ptrtoint i32* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sdiv exact i64 %198, 4
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %193, %190
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32* @path__skip_prefix(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
