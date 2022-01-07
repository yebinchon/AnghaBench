; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_utf8_utils.c_string_to_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_utf8_utils.c_string_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_to_utf8(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %5, align 8
  br label %11

11:                                               ; preds = %174, %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %175

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  br label %174

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 64
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  store i32* %32, i32** %4, align 8
  br label %175

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 192
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = load i32*, i32** %5, align 8
  store i32* %46, i32** %4, align 8
  br label %175

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 30
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  store i32* %52, i32** %4, align 8
  br label %175

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 31
  %56 = shl i32 %55, 6
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 63
  %59 = or i32 %56, %58
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %4, align 8
  store i32 %59, i32* %60, align 4
  br label %172

62:                                               ; preds = %33
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %62
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %3, align 8
  %69 = load i8, i8* %67, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 192
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = load i32*, i32** %5, align 8
  store i32* %75, i32** %4, align 8
  br label %175

76:                                               ; preds = %66
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %3, align 8
  %79 = load i8, i8* %77, align 1
  %80 = zext i8 %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 192
  %83 = icmp eq i32 %82, 128
  br i1 %83, label %86, label %84

84:                                               ; preds = %76
  %85 = load i32*, i32** %5, align 8
  store i32* %85, i32** %4, align 8
  br label %175

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 15
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 32
  %91 = or i32 %88, %90
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = load i32*, i32** %5, align 8
  store i32* %94, i32** %4, align 8
  br label %175

95:                                               ; preds = %86
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 15
  %98 = shl i32 %97, 12
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 63
  %101 = shl i32 %100, 6
  %102 = or i32 %98, %101
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, 63
  %105 = or i32 %102, %104
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %4, align 8
  store i32 %105, i32* %106, align 4
  br label %171

108:                                              ; preds = %62
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %168

112:                                              ; preds = %108
  %113 = load i8*, i8** %3, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %3, align 8
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i32
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, 192
  %119 = icmp eq i32 %118, 128
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = load i32*, i32** %5, align 8
  store i32* %121, i32** %4, align 8
  br label %175

122:                                              ; preds = %112
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %3, align 8
  %125 = load i8, i8* %123, align 1
  %126 = zext i8 %125 to i32
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, 192
  %129 = icmp eq i32 %128, 128
  br i1 %129, label %132, label %130

130:                                              ; preds = %122
  %131 = load i32*, i32** %5, align 8
  store i32* %131, i32** %4, align 8
  br label %175

132:                                              ; preds = %122
  %133 = load i8*, i8** %3, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %3, align 8
  %135 = load i8, i8* %133, align 1
  %136 = zext i8 %135 to i32
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, 192
  %139 = icmp eq i32 %138, 128
  br i1 %139, label %142, label %140

140:                                              ; preds = %132
  %141 = load i32*, i32** %5, align 8
  store i32* %141, i32** %4, align 8
  br label %175

142:                                              ; preds = %132
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, 7
  %145 = load i32, i32* %7, align 4
  %146 = and i32 %145, 48
  %147 = or i32 %144, %146
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %142
  %150 = load i32*, i32** %5, align 8
  store i32* %150, i32** %4, align 8
  br label %175

151:                                              ; preds = %142
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %152, 7
  %154 = shl i32 %153, 18
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, 63
  %157 = shl i32 %156, 12
  %158 = or i32 %154, %157
  %159 = load i32, i32* %8, align 4
  %160 = and i32 %159, 63
  %161 = shl i32 %160, 6
  %162 = or i32 %158, %161
  %163 = load i32, i32* %9, align 4
  %164 = and i32 %163, 63
  %165 = or i32 %162, %164
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %4, align 8
  store i32 %165, i32* %166, align 4
  br label %170

168:                                              ; preds = %108
  %169 = load i32*, i32** %5, align 8
  store i32* %169, i32** %4, align 8
  br label %175

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %95
  br label %172

172:                                              ; preds = %171, %53
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173, %23
  br label %11

175:                                              ; preds = %168, %149, %140, %130, %120, %93, %84, %74, %51, %45, %31, %11
  %176 = load i32*, i32** %4, align 8
  store i32 0, i32* %176, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
