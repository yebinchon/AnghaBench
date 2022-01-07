; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_recommend_prepare_raw_updates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_recommend_prepare_raw_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mandatory_owners_hashset = common dso_local global i32 0, align 4
@forbidden_owners_hashset = common dso_local global i32 0, align 4
@recommend_cmp_pair1 = common dso_local global i32 0, align 4
@dups_users_removed_from_urlist = common dso_local global i32 0, align 4
@recommend_cmp_pair2 = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recommend_prepare_raw_updates(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %24 = load i32, i32* %20, align 4
  %25 = call i32 @dyn_mark(i32 %24)
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %56, %8
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %17, align 4
  %33 = shl i32 %32, 1
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -2
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %18, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %18, align 4
  br label %55

42:                                               ; preds = %30
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %17, align 4
  %45 = shl i32 %44, 1
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %19, align 4
  br label %54

54:                                               ; preds = %51, %42
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @hashset_int_init(i32* @mandatory_owners_hashset, i32 %60)
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @hashset_int_init(i32* @forbidden_owners_hashset, i32 %62)
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %139, %137, %102, %59
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %142

68:                                               ; preds = %64
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %17, align 4
  %71 = shl i32 %70, 1
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, -2
  br i1 %76, label %77, label %103

77:                                               ; preds = %68
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %17, align 4
  %80 = shl i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @hashset_int_insert(i32* @mandatory_owners_hashset, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %77
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %17, align 4
  %93 = shl i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = shl i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = call i32 @memcpy(i32* %95, i32* %100, i32 8)
  br label %102

102:                                              ; preds = %90, %77
  br label %64

103:                                              ; preds = %68
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %17, align 4
  %106 = shl i32 %105, 1
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %138

112:                                              ; preds = %103
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %17, align 4
  %115 = shl i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @hashset_int_insert(i32* @forbidden_owners_hashset, i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %112
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %17, align 4
  %128 = shl i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = shl i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = call i32 @memcpy(i32* %130, i32* %135, i32 8)
  br label %137

137:                                              ; preds = %125, %112
  br label %64

138:                                              ; preds = %103
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %64

142:                                              ; preds = %64
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @hashset_int_insert(i32* @forbidden_owners_hashset, i32 %143)
  store i32 0, i32* %21, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @recommend_cmp_pair1, align 4
  %148 = call i32 @qsort(i32* %145, i32 %146, i32 8, i32 %147)
  store i32 1, i32* %17, align 4
  br label %149

149:                                              ; preds = %195, %142
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %198

153:                                              ; preds = %149
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %17, align 4
  %156 = mul nsw i32 2, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %21, align 4
  %162 = mul nsw i32 2, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %159, %165
  br i1 %166, label %167, label %194

167:                                              ; preds = %153
  %168 = load i32, i32* %21, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %21, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* %17, align 4
  %172 = mul nsw i32 2, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %21, align 4
  %178 = mul nsw i32 2, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %175, i32* %180, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %17, align 4
  %183 = mul nsw i32 2, %182
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %21, align 4
  %190 = mul nsw i32 2, %189
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  store i32 %187, i32* %193, align 4
  br label %194

194:                                              ; preds = %167, %153
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %17, align 4
  br label %149

198:                                              ; preds = %149
  %199 = load i32, i32* %21, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %21, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %21, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load i32, i32* @dups_users_removed_from_urlist, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* @dups_users_removed_from_urlist, align 4
  %206 = load i32, i32* %21, align 4
  store i32 %206, i32* %10, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @recommend_cmp_pair2, align 4
  %210 = call i32 @qsort(i32* %207, i32 %208, i32 8, i32 %209)
  %211 = load i32, i32* @now, align 4
  %212 = load i32, i32* %16, align 4
  %213 = mul nsw i32 30, %212
  %214 = sub nsw i32 %211, %213
  store i32 %214, i32* %22, align 4
  %215 = call i32 (...) @recommend_init_raw_updates()
  store i32 0, i32* %17, align 4
  br label %216

216:                                              ; preds = %240, %198
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %243

220:                                              ; preds = %216
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* %17, align 4
  %223 = shl i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* %17, align 4
  %229 = shl i32 %228, 1
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %22, align 4
  %239 = call i32 @recommend_process_raw_updates(i32 %226, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %220
  %241 = load i32, i32* %17, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %17, align 4
  br label %216

243:                                              ; preds = %216
  %244 = load i32, i32* %16, align 4
  %245 = call i32 @recommend_finish_raw_updates(i32 %244)
  store i32 %245, i32* %23, align 4
  %246 = load i32, i32* %20, align 4
  %247 = call i32 @dyn_release(i32 %246)
  %248 = load i32, i32* %23, align 4
  ret i32 %248
}

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local i32 @hashset_int_init(i32*, i32) #1

declare dso_local i32 @hashset_int_insert(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @recommend_init_raw_updates(...) #1

declare dso_local i32 @recommend_process_raw_updates(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @recommend_finish_raw_updates(i32) #1

declare dso_local i32 @dyn_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
