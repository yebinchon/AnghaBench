; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_is_ntfs_dot_generic.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_is_ntfs_dot_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*)* @is_ntfs_dot_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ntfs_dot_generic(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 46
  br i1 %17, label %18, label %49

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @strncasecmp(i8* %20, i8* %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %164, %72, %26
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %11, align 8
  %34 = getelementptr inbounds i8, i8* %31, i64 %32
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %12, align 1
  %36 = load i8, i8* %12, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %165

39:                                               ; preds = %30
  %40 = load i8, i8* %12, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 32
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8, i8* %12, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 46
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %165

48:                                               ; preds = %43, %39
  br label %30

49:                                               ; preds = %18, %4
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strncasecmp(i8* %50, i8* %51, i32 6)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 126
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 7
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sge i32 %64, 49
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 7
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 52
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i64 8, i64* %11, align 8
  br label %29

73:                                               ; preds = %66, %60, %54, %49
  store i64 0, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %161, %73
  %75 = load i64, i64* %11, align 8
  %76 = icmp ult i64 %75, 8
  br i1 %76, label %77, label %164

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %165

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp slt i32 %93, 48
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sgt i32 %100, 57
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %88
  store i32 0, i32* %5, align 4
  br label %165

103:                                              ; preds = %95
  br label %159

104:                                              ; preds = %85
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 126
  br i1 %110, label %111, label %128

111:                                              ; preds = %104
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %11, align 8
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp slt i32 %117, 49
  br i1 %118, label %126, label %119

119:                                              ; preds = %111
  %120 = load i8*, i8** %6, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sgt i32 %124, 57
  br i1 %125, label %126, label %127

126:                                              ; preds = %119, %111
  store i32 0, i32* %5, align 4
  br label %165

127:                                              ; preds = %119
  store i32 1, i32* %10, align 4
  br label %158

128:                                              ; preds = %104
  %129 = load i64, i64* %11, align 8
  %130 = icmp uge i64 %129, 6
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %165

132:                                              ; preds = %128
  %133 = load i8*, i8** %6, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = and i32 %137, 128
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %165

141:                                              ; preds = %132
  %142 = load i8*, i8** %6, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = call signext i8 @tolower(i8 signext %145)
  %147 = sext i8 %146 to i32
  %148 = load i8*, i8** %9, align 8
  %149 = load i64, i64* %11, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %147, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  br label %165

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %127
  br label %159

159:                                              ; preds = %158, %103
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %11, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %11, align 8
  br label %74

164:                                              ; preds = %74
  br label %29

165:                                              ; preds = %154, %140, %131, %126, %102, %84, %47, %38
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
