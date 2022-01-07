; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gholder.c_sort_sub_list.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gholder.c_sort_sub_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_40__*, %struct.TYPE_27__* }
%struct.TYPE_40__ = type { %struct.TYPE_39__, %struct.TYPE_37__, %struct.TYPE_35__, i32, i32, i32, i32, %struct.TYPE_33__ }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_38__, %struct.TYPE_36__, %struct.TYPE_34__, i32, i32, i32, i32, %struct.TYPE_31__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_31__ = type { i32 }

@conf = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, i32)* @sort_sub_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_sub_list(%struct.TYPE_29__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %212, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %215

17:                                               ; preds = %11
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %7, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %27 = icmp eq %struct.TYPE_26__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %212

29:                                               ; preds = %17
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_28__* @new_gholder_item(i32 %32)
  store %struct.TYPE_28__* %33, %struct.TYPE_28__** %5, align 8
  store i32 0, i32* %9, align 4
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %35, align 8
  store %struct.TYPE_27__* %36, %struct.TYPE_27__** %6, align 8
  br label %37

37:                                               ; preds = %156, %29
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %39 = icmp ne %struct.TYPE_27__* %38, null
  br i1 %39, label %40, label %162

40:                                               ; preds = %37
  %41 = call %struct.TYPE_30__* (...) @new_gmetrics()
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  store %struct.TYPE_30__* %41, %struct.TYPE_30__** %46, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_40__*, %struct.TYPE_40__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 0
  store i32 %52, i32* %60, align 4
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_40__*, %struct.TYPE_40__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @xstrdup(i32 %65)
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 6
  store i32 %66, i32* %73, align 4
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_40__*, %struct.TYPE_40__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 5
  store i32 %78, i32* %85, align 4
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_40__*, %struct.TYPE_40__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 4
  store i32 %90, i32* %97, align 4
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 3
  store i32 %102, i32* %109, align 4
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @conf, i32 0, i32 0), align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %155

112:                                              ; preds = %40
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_40__*, %struct.TYPE_40__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 0
  store i32 %118, i32* %126, align 4
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_40__*, %struct.TYPE_40__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %139, i32 0, i32 0
  store i32 %132, i32* %140, align 4
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_40__*, %struct.TYPE_40__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %153, i32 0, i32 0
  store i32 %146, i32* %154, align 4
  br label %155

155:                                              ; preds = %112, %40
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %158, align 8
  store %struct.TYPE_27__* %159, %struct.TYPE_27__** %6, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %37

162:                                              ; preds = %37
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @sort_holder_items(%struct.TYPE_28__* %163, i32 %164, i32 %165)
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %168 = call i32 @delete_sub_list(%struct.TYPE_26__* %167)
  %169 = call %struct.TYPE_26__* (...) @new_gsublist()
  store %struct.TYPE_26__* %169, %struct.TYPE_26__** %7, align 8
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %206, %162
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %209

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %184, align 8
  store %struct.TYPE_26__* %185, %struct.TYPE_26__** %7, align 8
  br label %186

186:                                              ; preds = %177, %174
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %195, align 8
  %197 = call i32 @add_sub_item_back(%struct.TYPE_26__* %187, i32 %190, %struct.TYPE_30__* %196)
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 0
  store %struct.TYPE_26__* %198, %struct.TYPE_26__** %205, align 8
  br label %206

206:                                              ; preds = %186
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %170

209:                                              ; preds = %170
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %211 = call i32 @free(%struct.TYPE_28__* %210)
  br label %212

212:                                              ; preds = %209, %28
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %11

215:                                              ; preds = %11
  ret void
}

declare dso_local %struct.TYPE_28__* @new_gholder_item(i32) #1

declare dso_local %struct.TYPE_30__* @new_gmetrics(...) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @sort_holder_items(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @delete_sub_list(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @new_gsublist(...) #1

declare dso_local i32 @add_sub_item_back(%struct.TYPE_26__*, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @free(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
