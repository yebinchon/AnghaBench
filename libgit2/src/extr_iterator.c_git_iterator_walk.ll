; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_iterator.c_git_iterator_walk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_iterator.c_git_iterator_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_iterator_walk(i32** %0, i64 %1, i32 (i32**, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i32**, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (i32**, i8*)* %2, i32 (i32**, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32** @git__calloc(i64 %16, i32 8)
  store i32** %17, i32*** %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32** @git__calloc(i64 %18, i32 8)
  store i32** %19, i32*** %10, align 8
  %20 = load i32**, i32*** %9, align 8
  %21 = call i32 @GIT_ERROR_CHECK_ALLOC(i32** %20)
  %22 = load i32**, i32*** %10, align 8
  %23 = call i32 @GIT_ERROR_CHECK_ALLOC(i32** %22)
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %45, %4
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32**, i32*** %9, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32**, i32*** %5, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @git_iterator_current(i32** %31, i32* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @GIT_ITEROVER, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %183

44:                                               ; preds = %39, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  br label %24

48:                                               ; preds = %24
  br label %49

49:                                               ; preds = %48, %181
  store i64 0, i64* %12, align 8
  br label %50

50:                                               ; preds = %58, %49
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32**, i32*** %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %50

61:                                               ; preds = %50
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  br label %62

62:                                               ; preds = %135, %61
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %138

66:                                               ; preds = %62
  %67 = load i32**, i32*** %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %135

73:                                               ; preds = %66
  %74 = load i32*, i32** %11, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i32**, i32*** %9, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %11, align 8
  %81 = load i32**, i32*** %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i32*, i32** %81, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32**, i32*** %10, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i32*, i32** %85, i64 %86
  store i32* %84, i32** %87, align 8
  br label %134

88:                                               ; preds = %73
  %89 = load i32**, i32*** %9, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @git_index_entry_cmp(i32* %92, i32* %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %88
  store i64 0, i64* %13, align 8
  br label %98

98:                                               ; preds = %106, %97
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %12, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i32**, i32*** %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %13, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %13, align 8
  br label %98

109:                                              ; preds = %98
  %110 = load i32**, i32*** %9, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i32*, i32** %110, i64 %111
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %11, align 8
  %114 = load i32**, i32*** %9, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds i32*, i32** %114, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32**, i32*** %10, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  store i32* %117, i32** %120, align 8
  br label %133

121:                                              ; preds = %88
  %122 = load i32, i32* %15, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load i32**, i32*** %9, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32**, i32*** %10, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds i32*, i32** %129, i64 %130
  store i32* %128, i32** %131, align 8
  br label %132

132:                                              ; preds = %124, %121
  br label %133

133:                                              ; preds = %132, %109
  br label %134

134:                                              ; preds = %133, %76
  br label %135

135:                                              ; preds = %134, %72
  %136 = load i64, i64* %12, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %12, align 8
  br label %62

138:                                              ; preds = %62
  %139 = load i32*, i32** %11, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %182

142:                                              ; preds = %138
  %143 = load i32 (i32**, i8*)*, i32 (i32**, i8*)** %7, align 8
  %144 = load i32**, i32*** %10, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 %143(i32** %144, i8* %145)
  store i32 %146, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %183

149:                                              ; preds = %142
  store i64 0, i64* %12, align 8
  br label %150

150:                                              ; preds = %178, %149
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* %6, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %181

154:                                              ; preds = %150
  %155 = load i32**, i32*** %10, align 8
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %178

161:                                              ; preds = %154
  %162 = load i32**, i32*** %9, align 8
  %163 = load i64, i64* %12, align 8
  %164 = getelementptr inbounds i32*, i32** %162, i64 %163
  %165 = load i32**, i32*** %5, align 8
  %166 = load i64, i64* %12, align 8
  %167 = getelementptr inbounds i32*, i32** %165, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @git_iterator_advance(i32** %164, i32* %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %161
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @GIT_ITEROVER, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %183

177:                                              ; preds = %172, %161
  br label %178

178:                                              ; preds = %177, %160
  %179 = load i64, i64* %12, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %12, align 8
  br label %150

181:                                              ; preds = %150
  br label %49

182:                                              ; preds = %141
  br label %183

183:                                              ; preds = %182, %176, %148, %43
  %184 = load i32**, i32*** %9, align 8
  %185 = call i32 @git__free(i32** %184)
  %186 = load i32**, i32*** %10, align 8
  %187 = call i32 @git__free(i32** %186)
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @GIT_ITEROVER, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  store i32 0, i32* %14, align 4
  br label %192

192:                                              ; preds = %191, %183
  %193 = load i32, i32* %14, align 4
  ret i32 %193
}

declare dso_local i32** @git__calloc(i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32**) #1

declare dso_local i32 @git_iterator_current(i32**, i32*) #1

declare dso_local i32 @git_index_entry_cmp(i32*, i32*) #1

declare dso_local i32 @git_iterator_advance(i32**, i32*) #1

declare dso_local i32 @git__free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
