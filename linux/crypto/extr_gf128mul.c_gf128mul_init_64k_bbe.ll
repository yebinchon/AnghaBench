; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gf128mul.c_gf128mul_init_64k_bbe.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gf128mul.c_gf128mul_init_64k_bbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128mul_64k = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gf128mul_64k* @gf128mul_init_64k_bbe(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.gf128mul_64k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 8, i32 %7)
  %9 = bitcast i8* %8 to %struct.gf128mul_64k*
  store %struct.gf128mul_64k* %9, %struct.gf128mul_64k** %3, align 8
  %10 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %11 = icmp ne %struct.gf128mul_64k* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %195

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 8, i32 %18)
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  %21 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %22 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %28 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %17
  %36 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %37 = call i32 @gf128mul_free_64k(%struct.gf128mul_64k* %36)
  store %struct.gf128mul_64k* null, %struct.gf128mul_64k** %3, align 8
  br label %195

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %14

42:                                               ; preds = %14
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %46 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %44, i32* %52, align 4
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %80, %42
  %54 = load i32, i32* %5, align 4
  %55 = icmp sle i32 %54, 64
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %58 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %70 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @gf128mul_x_bbe(i32* %68, i32* %78)
  br label %80

80:                                               ; preds = %56
  %81 = load i32, i32* %5, align 4
  %82 = shl i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %53

83:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %193, %83
  store i32 2, i32* %5, align 4
  br label %85

85:                                               ; preds = %137, %84
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 256
  br i1 %87, label %88, label %141

88:                                               ; preds = %85
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %133, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %136

93:                                               ; preds = %89
  %94 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %95 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %96, i64 %98
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %109 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %110, i64 %112
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %121 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %122, i64 %124
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = call i32 @be128_xor(i32* %107, i32* %119, i32* %131)
  br label %133

133:                                              ; preds = %93
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %89

136:                                              ; preds = %89
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %5, align 4
  br label %85

141:                                              ; preds = %85
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  %144 = icmp sge i32 %143, 16
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %194

146:                                              ; preds = %141
  store i32 128, i32* %5, align 4
  br label %147

147:                                              ; preds = %190, %146
  %148 = load i32, i32* %5, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %193

150:                                              ; preds = %147
  %151 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %152 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %153, i64 %156
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %166 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %167, i64 %169
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %164, i32* %176, align 4
  %177 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  %178 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %179, i64 %181
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = call i32 @gf128mul_x8_bbe(i32* %188)
  br label %190

190:                                              ; preds = %150
  %191 = load i32, i32* %5, align 4
  %192 = ashr i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %147

193:                                              ; preds = %147
  br label %84

194:                                              ; preds = %145
  br label %195

195:                                              ; preds = %194, %35, %12
  %196 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %3, align 8
  ret %struct.gf128mul_64k* %196
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @gf128mul_free_64k(%struct.gf128mul_64k*) #1

declare dso_local i32 @gf128mul_x_bbe(i32*, i32*) #1

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

declare dso_local i32 @gf128mul_x8_bbe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
