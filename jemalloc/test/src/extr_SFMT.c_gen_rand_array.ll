; ModuleID = '/home/carl/AnghaBench/jemalloc/test/src/extr_SFMT.c_gen_rand_array.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/src/extr_SFMT.c_gen_rand_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8** }

@N = common dso_local global i32 0, align 4
@POS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**, i32)* @gen_rand_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_rand_array(%struct.TYPE_3__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* @N, align 4
  %15 = sub nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16
  store i8** %17, i8*** %9, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* @N, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  store i8** %24, i8*** %10, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %58, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @N, align 4
  %28 = load i32, i32* @POS1, align 4
  %29 = sub nsw i32 %27, %28
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @POS1, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  %50 = load i8**, i8*** %9, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = call i32 @do_recursion(i8** %35, i8** %41, i8** %49, i8** %50, i8** %51)
  %53 = load i8**, i8*** %10, align 8
  store i8** %53, i8*** %9, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8** %57, i8*** %10, align 8
  br label %58

58:                                               ; preds = %31
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %25

61:                                               ; preds = %25
  br label %62

62:                                               ; preds = %93, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @N, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %62
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @POS1, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @N, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %77, i64 %83
  %85 = load i8**, i8*** %9, align 8
  %86 = load i8**, i8*** %10, align 8
  %87 = call i32 @do_recursion(i8** %70, i8** %76, i8** %84, i8** %85, i8** %86)
  %88 = load i8**, i8*** %10, align 8
  store i8** %88, i8*** %9, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8** %92, i8*** %10, align 8
  br label %93

93:                                               ; preds = %66
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %62

96:                                               ; preds = %62
  br label %97

97:                                               ; preds = %130, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @N, align 4
  %101 = sub nsw i32 %99, %100
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @N, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %108, i64 %112
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @POS1, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* @N, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %114, i64 %120
  %122 = load i8**, i8*** %9, align 8
  %123 = load i8**, i8*** %10, align 8
  %124 = call i32 @do_recursion(i8** %107, i8** %113, i8** %121, i8** %122, i8** %123)
  %125 = load i8**, i8*** %10, align 8
  store i8** %125, i8*** %9, align 8
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8** %129, i8*** %10, align 8
  br label %130

130:                                              ; preds = %103
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %97

133:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %157, %133
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @N, align 4
  %137 = mul nsw i32 2, %136
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %137, %138
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %134
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* @N, align 4
  %147 = sub nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %142, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  store i8* %150, i8** %156, align 8
  br label %157

157:                                              ; preds = %141
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %134

160:                                              ; preds = %134
  br label %161

161:                                              ; preds = %203, %160
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %208

165:                                              ; preds = %161
  %166 = load i8**, i8*** %5, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8**, i8*** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @N, align 4
  %173 = sub nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %170, i64 %174
  %176 = load i8**, i8*** %5, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @POS1, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* @N, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %176, i64 %182
  %184 = load i8**, i8*** %9, align 8
  %185 = load i8**, i8*** %10, align 8
  %186 = call i32 @do_recursion(i8** %169, i8** %175, i8** %183, i8** %184, i8** %185)
  %187 = load i8**, i8*** %10, align 8
  store i8** %187, i8*** %9, align 8
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  store i8** %191, i8*** %10, align 8
  %192 = load i8**, i8*** %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i8**, i8*** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  store i8* %196, i8** %202, align 8
  br label %203

203:                                              ; preds = %165
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %161

208:                                              ; preds = %161
  ret void
}

declare dso_local i32 @do_recursion(i8**, i8**, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
