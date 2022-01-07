; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_wp512.c_wp512_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_wp512.c_wp512_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.wp512_ctx = type { i32, i32*, i32*, i32 }

@WP512_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @wp512_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wp512_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wp512_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %21 = call %struct.wp512_ctx* @shash_desc_ctx(%struct.shash_desc* %20)
  store %struct.wp512_ctx* %21, %struct.wp512_ctx** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul i32 %22, 8
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 7
  %26 = sub nsw i32 8, %25
  %27 = and i32 %26, 7
  store i32 %27, i32* %10, align 4
  %28 = load %struct.wp512_ctx*, %struct.wp512_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 7
  store i32 %31, i32* %11, align 4
  %32 = load %struct.wp512_ctx*, %struct.wp512_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %15, align 8
  %35 = load %struct.wp512_ctx*, %struct.wp512_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %16, align 8
  %38 = load %struct.wp512_ctx*, %struct.wp512_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %17, align 4
  %41 = load %struct.wp512_ctx*, %struct.wp512_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %19, align 8
  store i32 31, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %80, %3
  %47 = load i32, i32* %12, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %19, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ true, %49 ], [ %54, %52 ]
  br label %57

57:                                               ; preds = %55, %46
  %58 = phi i1 [ false, %46 ], [ %56, %55 ]
  br i1 %58, label %59, label %83

59:                                               ; preds = %57
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %19, align 8
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 255
  %68 = add nsw i32 %64, %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  %77 = ashr i32 %76, 8
  store i32 %77, i32* %14, align 4
  %78 = load i64, i64* %19, align 8
  %79 = lshr i64 %78, 8
  store i64 %79, i64* %19, align 8
  br label %80

80:                                               ; preds = %59
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %12, align 4
  br label %46

83:                                               ; preds = %57
  br label %84

84:                                               ; preds = %128, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp ugt i32 %85, 8
  br i1 %86, label %87, label %144

87:                                               ; preds = %84
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 %92, %93
  %95 = and i32 %94, 255
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 255
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 8, %103
  %105 = ashr i32 %102, %104
  %106 = or i32 %95, %105
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %11, align 4
  %109 = ashr i32 %107, %108
  %110 = load i32*, i32** %15, align 8
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %18, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %109
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 8, %117
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* @WP512_BLOCK_SIZE, align 4
  %123 = mul nsw i32 %122, 8
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %87
  %126 = load %struct.wp512_ctx*, %struct.wp512_ctx** %7, align 8
  %127 = call i32 @wp512_process_buffer(%struct.wp512_ctx* %126)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %128

128:                                              ; preds = %125, %87
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %11, align 4
  %131 = sub nsw i32 8, %130
  %132 = shl i32 %129, %131
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %9, align 4
  %141 = sub i32 %140, 8
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %84

144:                                              ; preds = %84
  %145 = load i32, i32* %9, align 4
  %146 = icmp ugt i32 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %144
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %10, align 4
  %154 = shl i32 %152, %153
  %155 = and i32 %154, 255
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %11, align 4
  %158 = ashr i32 %156, %157
  %159 = load i32*, i32** %15, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %158
  store i32 %164, i32* %162, align 4
  br label %166

165:                                              ; preds = %144
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %165, %147
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %9, align 4
  %169 = add i32 %167, %168
  %170 = icmp ult i32 %169, 8
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %17, align 4
  %174 = add i32 %173, %172
  store i32 %174, i32* %17, align 4
  br label %205

175:                                              ; preds = %166
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %11, align 4
  %179 = sub nsw i32 8, %178
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %11, align 4
  %183 = sub nsw i32 8, %182
  %184 = load i32, i32* %9, align 4
  %185 = sub i32 %184, %183
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* @WP512_BLOCK_SIZE, align 4
  %188 = mul nsw i32 %187, 8
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %175
  %191 = load %struct.wp512_ctx*, %struct.wp512_ctx** %7, align 8
  %192 = call i32 @wp512_process_buffer(%struct.wp512_ctx* %191)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %193

193:                                              ; preds = %190, %175
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %11, align 4
  %196 = sub nsw i32 8, %195
  %197 = shl i32 %194, %196
  %198 = load i32*, i32** %15, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %197, i32* %201, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %17, align 4
  br label %205

205:                                              ; preds = %193, %171
  %206 = load i32, i32* %17, align 4
  %207 = load %struct.wp512_ctx*, %struct.wp512_ctx** %7, align 8
  %208 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %18, align 4
  %210 = load %struct.wp512_ctx*, %struct.wp512_ctx** %7, align 8
  %211 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 8
  ret i32 0
}

declare dso_local %struct.wp512_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @wp512_process_buffer(%struct.wp512_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
