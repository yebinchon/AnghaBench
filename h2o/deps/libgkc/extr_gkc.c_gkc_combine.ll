; ModuleID = '/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_combine.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gkc_summary = type { i64, i32, i32, i32, %struct.list }
%struct.list = type { %struct.list* }
%struct.gkc_tuple = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gkc_summary* @gkc_combine(%struct.gkc_summary* %0, %struct.gkc_summary* %1) #0 {
  %3 = alloca %struct.gkc_summary*, align 8
  %4 = alloca %struct.gkc_summary*, align 8
  %5 = alloca %struct.gkc_summary*, align 8
  %6 = alloca %struct.gkc_summary*, align 8
  %7 = alloca %struct.list*, align 8
  %8 = alloca %struct.list*, align 8
  %9 = alloca %struct.gkc_tuple*, align 8
  %10 = alloca %struct.gkc_tuple*, align 8
  %11 = alloca %struct.gkc_tuple*, align 8
  store %struct.gkc_summary* %0, %struct.gkc_summary** %4, align 8
  store %struct.gkc_summary* %1, %struct.gkc_summary** %5, align 8
  %12 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %13 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.gkc_summary*, %struct.gkc_summary** %5, align 8
  %16 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.gkc_summary* null, %struct.gkc_summary** %3, align 8
  br label %207

20:                                               ; preds = %2
  %21 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %22 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.gkc_summary* @gkc_summary_alloc(i64 %23)
  store %struct.gkc_summary* %24, %struct.gkc_summary** %6, align 8
  %25 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %26 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.list, %struct.list* %26, i32 0, i32 0
  %28 = load %struct.list*, %struct.list** %27, align 8
  store %struct.list* %28, %struct.list** %7, align 8
  %29 = load %struct.gkc_summary*, %struct.gkc_summary** %5, align 8
  %30 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.list, %struct.list* %30, i32 0, i32 0
  %32 = load %struct.list*, %struct.list** %31, align 8
  store %struct.list* %32, %struct.list** %8, align 8
  br label %33

33:                                               ; preds = %97, %20
  %34 = load %struct.list*, %struct.list** %7, align 8
  %35 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %36 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %35, i32 0, i32 4
  %37 = icmp ne %struct.list* %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.list*, %struct.list** %8, align 8
  %40 = load %struct.gkc_summary*, %struct.gkc_summary** %5, align 8
  %41 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %40, i32 0, i32 4
  %42 = icmp ne %struct.list* %39, %41
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %112

45:                                               ; preds = %43
  %46 = load %struct.list*, %struct.list** %7, align 8
  %47 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %46)
  store %struct.gkc_tuple* %47, %struct.gkc_tuple** %9, align 8
  %48 = load %struct.list*, %struct.list** %8, align 8
  %49 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %48)
  store %struct.gkc_tuple* %49, %struct.gkc_tuple** %10, align 8
  %50 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %51 = call %struct.gkc_tuple* @gkc_alloc(%struct.gkc_summary* %50)
  store %struct.gkc_tuple* %51, %struct.gkc_tuple** %11, align 8
  %52 = load %struct.gkc_tuple*, %struct.gkc_tuple** %9, align 8
  %53 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.gkc_tuple*, %struct.gkc_tuple** %10, align 8
  %56 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %45
  %60 = load %struct.gkc_tuple*, %struct.gkc_tuple** %9, align 8
  %61 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %64 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.gkc_tuple*, %struct.gkc_tuple** %9, align 8
  %66 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %69 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.gkc_tuple*, %struct.gkc_tuple** %9, align 8
  %71 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %74 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.list*, %struct.list** %7, align 8
  %76 = getelementptr inbounds %struct.list, %struct.list* %75, i32 0, i32 0
  %77 = load %struct.list*, %struct.list** %76, align 8
  store %struct.list* %77, %struct.list** %7, align 8
  br label %97

78:                                               ; preds = %45
  %79 = load %struct.gkc_tuple*, %struct.gkc_tuple** %10, align 8
  %80 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %83 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.gkc_tuple*, %struct.gkc_tuple** %10, align 8
  %85 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %88 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.gkc_tuple*, %struct.gkc_tuple** %10, align 8
  %90 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %93 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.list*, %struct.list** %8, align 8
  %95 = getelementptr inbounds %struct.list, %struct.list* %94, i32 0, i32 0
  %96 = load %struct.list*, %struct.list** %95, align 8
  store %struct.list* %96, %struct.list** %8, align 8
  br label %97

97:                                               ; preds = %78, %59
  %98 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %99 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %98, i32 0, i32 4
  %100 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %101 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %100, i32 0, i32 2
  %102 = call i32 @list_add_tail(%struct.list* %99, i32* %101)
  %103 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %104 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %107 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 8
  br label %33

112:                                              ; preds = %43
  br label %113

113:                                              ; preds = %118, %112
  %114 = load %struct.list*, %struct.list** %7, align 8
  %115 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %116 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %115, i32 0, i32 4
  %117 = icmp ne %struct.list* %114, %116
  br i1 %117, label %118, label %155

118:                                              ; preds = %113
  %119 = load %struct.list*, %struct.list** %7, align 8
  %120 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %119)
  store %struct.gkc_tuple* %120, %struct.gkc_tuple** %9, align 8
  %121 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %122 = call %struct.gkc_tuple* @gkc_alloc(%struct.gkc_summary* %121)
  store %struct.gkc_tuple* %122, %struct.gkc_tuple** %11, align 8
  %123 = load %struct.gkc_tuple*, %struct.gkc_tuple** %9, align 8
  %124 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %127 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.gkc_tuple*, %struct.gkc_tuple** %9, align 8
  %129 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %132 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load %struct.gkc_tuple*, %struct.gkc_tuple** %9, align 8
  %134 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %137 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %139 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %138, i32 0, i32 4
  %140 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %141 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %140, i32 0, i32 2
  %142 = call i32 @list_add_tail(%struct.list* %139, i32* %141)
  %143 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %144 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %147 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 8
  %152 = load %struct.list*, %struct.list** %7, align 8
  %153 = getelementptr inbounds %struct.list, %struct.list* %152, i32 0, i32 0
  %154 = load %struct.list*, %struct.list** %153, align 8
  store %struct.list* %154, %struct.list** %7, align 8
  br label %113

155:                                              ; preds = %113
  br label %156

156:                                              ; preds = %161, %155
  %157 = load %struct.list*, %struct.list** %8, align 8
  %158 = load %struct.gkc_summary*, %struct.gkc_summary** %5, align 8
  %159 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %158, i32 0, i32 4
  %160 = icmp ne %struct.list* %157, %159
  br i1 %160, label %161, label %198

161:                                              ; preds = %156
  %162 = load %struct.list*, %struct.list** %8, align 8
  %163 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %162)
  store %struct.gkc_tuple* %163, %struct.gkc_tuple** %10, align 8
  %164 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %165 = call %struct.gkc_tuple* @gkc_alloc(%struct.gkc_summary* %164)
  store %struct.gkc_tuple* %165, %struct.gkc_tuple** %11, align 8
  %166 = load %struct.gkc_tuple*, %struct.gkc_tuple** %10, align 8
  %167 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %170 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.gkc_tuple*, %struct.gkc_tuple** %10, align 8
  %172 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %175 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.gkc_tuple*, %struct.gkc_tuple** %10, align 8
  %177 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %180 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %182 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %181, i32 0, i32 4
  %183 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %184 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %183, i32 0, i32 2
  %185 = call i32 @list_add_tail(%struct.list* %182, i32* %184)
  %186 = load %struct.gkc_tuple*, %struct.gkc_tuple** %11, align 8
  %187 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %190 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 8
  %195 = load %struct.list*, %struct.list** %8, align 8
  %196 = getelementptr inbounds %struct.list, %struct.list* %195, i32 0, i32 0
  %197 = load %struct.list*, %struct.list** %196, align 8
  store %struct.list* %197, %struct.list** %8, align 8
  br label %156

198:                                              ; preds = %156
  %199 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %200 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %203 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  %204 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %205 = call i32 @gkc_compress(%struct.gkc_summary* %204)
  %206 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  store %struct.gkc_summary* %206, %struct.gkc_summary** %3, align 8
  br label %207

207:                                              ; preds = %198, %19
  %208 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  ret %struct.gkc_summary* %208
}

declare dso_local %struct.gkc_summary* @gkc_summary_alloc(i64) #1

declare dso_local %struct.gkc_tuple* @list_to_tuple(%struct.list*) #1

declare dso_local %struct.gkc_tuple* @gkc_alloc(%struct.gkc_summary*) #1

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

declare dso_local i32 @gkc_compress(%struct.gkc_summary*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
