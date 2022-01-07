; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_write_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_write_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_str(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %198, %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %201

13:                                               ; preds = %9
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %185 [
    i32 34, label %17
    i32 92, label %38
    i32 47, label %59
    i32 8, label %80
    i32 12, label %101
    i32 10, label %122
    i32 13, label %143
    i32 9, label %164
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @likely(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  store i8 92, i8* %25, align 1
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @likely(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  store i8 34, i8* %35, align 1
  br label %37

37:                                               ; preds = %34, %27
  br label %198

38:                                               ; preds = %13
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @likely(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  store i8 92, i8* %46, align 1
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @likely(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  store i8 92, i8* %56, align 1
  br label %58

58:                                               ; preds = %55, %48
  br label %198

59:                                               ; preds = %13
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = icmp sgt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @likely(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  store i8 92, i8* %67, align 1
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %5, align 4
  %72 = icmp sgt i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @likely(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  store i8 47, i8* %77, align 1
  br label %79

79:                                               ; preds = %76, %69
  br label %198

80:                                               ; preds = %13
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %5, align 4
  %83 = icmp sgt i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @likely(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %4, align 8
  store i8 92, i8* %88, align 1
  br label %90

90:                                               ; preds = %87, %80
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %5, align 4
  %93 = icmp sgt i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @likely(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  store i8 98, i8* %98, align 1
  br label %100

100:                                              ; preds = %97, %90
  br label %198

101:                                              ; preds = %13
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %5, align 4
  %104 = icmp sgt i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @likely(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8
  store i8 92, i8* %109, align 1
  br label %111

111:                                              ; preds = %108, %101
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %5, align 4
  %114 = icmp sgt i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @likely(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %4, align 8
  store i8 102, i8* %119, align 1
  br label %121

121:                                              ; preds = %118, %111
  br label %198

122:                                              ; preds = %13
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %5, align 4
  %125 = icmp sgt i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @likely(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %4, align 8
  store i8 92, i8* %130, align 1
  br label %132

132:                                              ; preds = %129, %122
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %5, align 4
  %135 = icmp sgt i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @likely(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %4, align 8
  store i8 110, i8* %140, align 1
  br label %142

142:                                              ; preds = %139, %132
  br label %198

143:                                              ; preds = %13
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %5, align 4
  %146 = icmp sgt i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @likely(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i8*, i8** %4, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %4, align 8
  store i8 92, i8* %151, align 1
  br label %153

153:                                              ; preds = %150, %143
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %5, align 4
  %156 = icmp sgt i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @likely(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load i8*, i8** %4, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %4, align 8
  store i8 114, i8* %161, align 1
  br label %163

163:                                              ; preds = %160, %153
  br label %198

164:                                              ; preds = %13
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %5, align 4
  %167 = icmp sgt i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @likely(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load i8*, i8** %4, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %4, align 8
  store i8 92, i8* %172, align 1
  br label %174

174:                                              ; preds = %171, %164
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %5, align 4
  %177 = icmp sgt i32 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @likely(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load i8*, i8** %4, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %4, align 8
  store i8 116, i8* %182, align 1
  br label %184

184:                                              ; preds = %181, %174
  br label %198

185:                                              ; preds = %13
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %5, align 4
  %188 = icmp sgt i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @likely(i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load i8*, i8** %6, align 8
  %194 = load i8, i8* %193, align 1
  %195 = load i8*, i8** %4, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %4, align 8
  store i8 %194, i8* %195, align 1
  br label %197

197:                                              ; preds = %192, %185
  br label %198

198:                                              ; preds = %197, %184, %163, %142, %121, %100, %79, %58, %37
  %199 = load i8*, i8** %6, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %6, align 8
  br label %9

201:                                              ; preds = %9
  %202 = load i8*, i8** %4, align 8
  store i8 0, i8* %202, align 1
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %5, align 4
  %205 = sub nsw i32 %203, %204
  ret i32 %205
}

declare dso_local i32 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
