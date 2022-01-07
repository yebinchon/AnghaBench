; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_add_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_add_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32, i32)* @add_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_list(i32** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32**, i32*** %5, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i64 @zzmalloc(i32 %22)
  %24 = inttoptr i64 %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32* %25, i32** %9, align 8
  %26 = load i32**, i32*** %5, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 -2
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 -1
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %17, %4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %130, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %133

40:                                               ; preds = %34
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %129

49:                                               ; preds = %40
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 2, %51
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %128

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 2, %63
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %61, %68
  br i1 %69, label %70, label %128

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %86, %70
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 2, %77
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %75, %82
  br label %84

84:                                               ; preds = %74, %71
  %85 = phi i1 [ false, %71 ], [ %83, %74 ]
  br i1 %85, label %86, label %114

86:                                               ; preds = %84
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 2, %88
  %90 = sub nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = mul nsw i32 2, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = mul nsw i32 2, %100
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 2, %107
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %10, align 4
  br label %71

114:                                              ; preds = %84
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 2, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 2, %123
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %114, %60, %49
  br label %204

129:                                              ; preds = %40
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %34

133:                                              ; preds = %34
  %134 = load i32, i32* %10, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 -2
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %180

139:                                              ; preds = %133
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = load i32*, i32** %9, align 8
  store i32* %144, i32** %12, align 8
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  %147 = mul nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = call i64 @zzmalloc(i32 %150)
  %152 = inttoptr i64 %151 to i32*
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32* %153, i32** %9, align 8
  %154 = load i32, i32* %10, align 4
  %155 = mul nsw i32 2, %154
  %156 = add nsw i32 %155, 1
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 -2
  store i32 %156, i32* %158, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %10, align 4
  %162 = mul nsw i32 %161, 2
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 4
  %165 = trunc i64 %164 to i32
  %166 = call i32 @memcpy(i32* %159, i32* %160, i32 %165)
  %167 = load i32*, i32** %12, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 -2
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  %171 = mul nsw i32 %170, 2
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = call i32 @zzfree(i32* %168, i32 %174)
  %176 = load i32*, i32** %9, align 8
  %177 = load i32**, i32*** %5, align 8
  store i32* %176, i32** %177, align 8
  br label %179

178:                                              ; preds = %139
  br label %204

179:                                              ; preds = %143
  br label %180

180:                                              ; preds = %179, %133
  %181 = load i32, i32* %10, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 -2
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %181, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load i32, i32* %6, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %10, align 4
  %191 = mul nsw i32 2, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %188, i32* %193, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %10, align 4
  %196 = mul nsw i32 2, %195
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  store i32 1, i32* %199, align 4
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  %202 = load i32*, i32** %9, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 -1
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %180, %178, %128
  ret void
}

declare dso_local i64 @zzmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @zzfree(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
