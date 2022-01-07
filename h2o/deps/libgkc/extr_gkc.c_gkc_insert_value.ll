; ModuleID = '/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_insert_value.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_insert_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gkc_summary = type { i32, i32, %struct.list }
%struct.list = type { %struct.list* }
%struct.gkc_tuple = type { double, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gkc_insert_value(%struct.gkc_summary* %0, double %1) #0 {
  %3 = alloca %struct.gkc_summary*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.list*, align 8
  %6 = alloca %struct.gkc_tuple*, align 8
  %7 = alloca %struct.gkc_tuple*, align 8
  %8 = alloca %struct.gkc_tuple*, align 8
  %9 = alloca double, align 8
  store %struct.gkc_summary* %0, %struct.gkc_summary** %3, align 8
  store double %1, double* %4, align 8
  store %struct.list* null, %struct.list** %5, align 8
  store %struct.gkc_tuple* null, %struct.gkc_tuple** %8, align 8
  %10 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %11 = call %struct.gkc_tuple* @gkc_alloc(%struct.gkc_summary* %10)
  store %struct.gkc_tuple* %11, %struct.gkc_tuple** %6, align 8
  %12 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %13 = call i32 @memset(%struct.gkc_tuple* %12, i32 0, i32 24)
  %14 = load double, double* %4, align 8
  %15 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %16 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %15, i32 0, i32 0
  store double %14, double* %16, align 8
  %17 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %18 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %17, i32 0, i32 1
  store i32 1, i32* %18, align 8
  %19 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %20 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %19, i32 0, i32 3
  %21 = call i32 @list_init(i32* %20)
  %22 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %23 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %27 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %26, i32 0, i32 2
  %28 = call i64 @list_empty(%struct.list* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %32 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %31, i32 0, i32 2
  %33 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %34 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %33, i32 0, i32 3
  %35 = call i32 @list_add(%struct.list* %32, i32* %34)
  br label %131

36:                                               ; preds = %2
  %37 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %38 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.list, %struct.list* %38, i32 0, i32 0
  %40 = load %struct.list*, %struct.list** %39, align 8
  store %struct.list* %40, %struct.list** %5, align 8
  %41 = load %struct.list*, %struct.list** %5, align 8
  %42 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %41)
  store %struct.gkc_tuple* %42, %struct.gkc_tuple** %7, align 8
  %43 = load %struct.gkc_tuple*, %struct.gkc_tuple** %7, align 8
  %44 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %47 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fcmp ogt double %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %52 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %51, i32 0, i32 2
  %53 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %54 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %53, i32 0, i32 3
  %55 = call i32 @list_add(%struct.list* %52, i32* %54)
  br label %117

56:                                               ; preds = %36
  store double 0.000000e+00, double* %9, align 8
  br label %57

57:                                               ; preds = %107, %56
  %58 = load %struct.list*, %struct.list** %5, align 8
  %59 = getelementptr inbounds %struct.list, %struct.list* %58, i32 0, i32 0
  %60 = load %struct.list*, %struct.list** %59, align 8
  %61 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %62 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %61, i32 0, i32 2
  %63 = icmp ne %struct.list* %60, %62
  br i1 %63, label %64, label %111

64:                                               ; preds = %57
  %65 = load %struct.list*, %struct.list** %5, align 8
  %66 = getelementptr inbounds %struct.list, %struct.list* %65, i32 0, i32 0
  %67 = load %struct.list*, %struct.list** %66, align 8
  %68 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %67)
  store %struct.gkc_tuple* %68, %struct.gkc_tuple** %8, align 8
  %69 = load %struct.list*, %struct.list** %5, align 8
  %70 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %69)
  store %struct.gkc_tuple* %70, %struct.gkc_tuple** %7, align 8
  %71 = load %struct.gkc_tuple*, %struct.gkc_tuple** %7, align 8
  %72 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sitofp i32 %73 to double
  %75 = load double, double* %9, align 8
  %76 = fadd double %75, %74
  store double %76, double* %9, align 8
  %77 = load %struct.gkc_tuple*, %struct.gkc_tuple** %7, align 8
  %78 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %81 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %80, i32 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = fcmp ole double %79, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %64
  %85 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %86 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %85, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = load %struct.gkc_tuple*, %struct.gkc_tuple** %8, align 8
  %89 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %88, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = fcmp olt double %87, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %84
  %93 = load %struct.gkc_tuple*, %struct.gkc_tuple** %7, align 8
  %94 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.gkc_tuple*, %struct.gkc_tuple** %7, align 8
  %97 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = sub nsw i32 %99, 1
  %101 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %102 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.list*, %struct.list** %5, align 8
  %104 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %105 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %104, i32 0, i32 3
  %106 = call i32 @list_add(%struct.list* %103, i32* %105)
  br label %117

107:                                              ; preds = %84, %64
  %108 = load %struct.list*, %struct.list** %5, align 8
  %109 = getelementptr inbounds %struct.list, %struct.list* %108, i32 0, i32 0
  %110 = load %struct.list*, %struct.list** %109, align 8
  store %struct.list* %110, %struct.list** %5, align 8
  br label %57

111:                                              ; preds = %57
  %112 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %113 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %112, i32 0, i32 2
  %114 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %115 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %114, i32 0, i32 3
  %116 = call i32 @list_add_tail(%struct.list* %113, i32* %115)
  br label %117

117:                                              ; preds = %111, %92, %50
  %118 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %119 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %122 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 2, %123
  %125 = sdiv i32 1, %124
  %126 = srem i32 %120, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load %struct.gkc_summary*, %struct.gkc_summary** %3, align 8
  %130 = call i32 @gkc_compress(%struct.gkc_summary* %129)
  br label %131

131:                                              ; preds = %30, %128, %117
  ret void
}

declare dso_local %struct.gkc_tuple* @gkc_alloc(%struct.gkc_summary*) #1

declare dso_local i32 @memset(%struct.gkc_tuple*, i32, i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i64 @list_empty(%struct.list*) #1

declare dso_local i32 @list_add(%struct.list*, i32*) #1

declare dso_local %struct.gkc_tuple* @list_to_tuple(%struct.list*) #1

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

declare dso_local i32 @gkc_compress(%struct.gkc_summary*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
