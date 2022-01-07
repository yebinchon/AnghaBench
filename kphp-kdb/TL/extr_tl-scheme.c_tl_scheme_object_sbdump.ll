; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_sbdump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_sbdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tl_scheme_object*, %struct.tl_scheme_object* }
%struct.tl_buffer = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.15lg\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obj_empty_list = common dso_local global %struct.tl_scheme_object zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_scheme_object_sbdump(%struct.tl_buffer* %0, %struct.tl_scheme_object* %1) #0 {
  %3 = alloca %struct.tl_buffer*, align 8
  %4 = alloca %struct.tl_scheme_object*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.tl_scheme_object*, align 8
  store %struct.tl_buffer* %0, %struct.tl_buffer** %3, align 8
  store %struct.tl_scheme_object* %1, %struct.tl_scheme_object** %4, align 8
  %9 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %10 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %125 [
    i32 133, label %12
    i32 131, label %19
    i32 135, label %26
    i32 128, label %33
    i32 134, label %40
    i32 132, label %47
    i32 130, label %119
    i32 129, label %122
  ]

12:                                               ; preds = %2
  %13 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %14 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %15 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.tl_buffer*, i8*, ...) @tl_string_buffer_printf(%struct.tl_buffer* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %125

19:                                               ; preds = %2
  %20 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %21 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %22 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.tl_buffer*, i8*, ...) @tl_string_buffer_printf(%struct.tl_buffer* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %125

26:                                               ; preds = %2
  %27 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %28 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %29 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.tl_buffer*, i8*, ...) @tl_string_buffer_printf(%struct.tl_buffer* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %125

33:                                               ; preds = %2
  %34 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %35 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %36 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @tl_scheme_object_sbdump_str(%struct.tl_buffer* %34, i32 %38)
  br label %125

40:                                               ; preds = %2
  %41 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %42 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %43 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.tl_buffer*, i8*, ...) @tl_string_buffer_printf(%struct.tl_buffer* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %125

47:                                               ; preds = %2
  store i8 0, i8* %5, align 1
  %48 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %49 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %51, align 8
  %53 = icmp ne %struct.tl_scheme_object* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %56 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %58, align 8
  %60 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 129
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  store i8 91, i8* %6, align 1
  store i8 93, i8* %7, align 1
  %64 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %65 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %67, align 8
  store %struct.tl_scheme_object* %68, %struct.tl_scheme_object** %4, align 8
  br label %70

69:                                               ; preds = %54, %47
  store i8 40, i8* %6, align 1
  store i8 41, i8* %7, align 1
  br label %70

70:                                               ; preds = %69, %63
  %71 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %72 = load i8, i8* %6, align 1
  %73 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %71, i8 signext %72)
  %74 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  store %struct.tl_scheme_object* %74, %struct.tl_scheme_object** %8, align 8
  br label %75

75:                                               ; preds = %109, %70
  %76 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %8, align 8
  %77 = icmp ne %struct.tl_scheme_object* %76, @obj_empty_list
  br i1 %77, label %78, label %115

78:                                               ; preds = %75
  %79 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %8, align 8
  %80 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 132
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i8, i8* %5, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %90 = load i8, i8* %5, align 1
  %91 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %89, i8 signext %90)
  br label %92

92:                                               ; preds = %88, %78
  %93 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %94 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %8, align 8
  %95 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %97, align 8
  call void @tl_scheme_object_sbdump(%struct.tl_buffer* %93, %struct.tl_scheme_object* %98)
  %99 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %8, align 8
  %100 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %102, align 8
  %104 = call i32 @tl_scheme_object_is_colon_terminated_function(%struct.tl_scheme_object* %103)
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 0, i32 32
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %5, align 1
  br label %109

109:                                              ; preds = %92
  %110 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %8, align 8
  %111 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %113, align 8
  store %struct.tl_scheme_object* %114, %struct.tl_scheme_object** %8, align 8
  br label %75

115:                                              ; preds = %75
  %116 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %117 = load i8, i8* %7, align 1
  %118 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %116, i8 signext %117)
  br label %125

119:                                              ; preds = %2
  %120 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %121 = call i32 (%struct.tl_buffer*, i8*, ...) @tl_string_buffer_printf(%struct.tl_buffer* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %125

122:                                              ; preds = %2
  %123 = load %struct.tl_buffer*, %struct.tl_buffer** %3, align 8
  %124 = call i32 (%struct.tl_buffer*, i8*, ...) @tl_string_buffer_printf(%struct.tl_buffer* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %2, %122, %119, %115, %40, %33, %26, %19, %12
  ret void
}

declare dso_local i32 @tl_string_buffer_printf(%struct.tl_buffer*, i8*, ...) #1

declare dso_local i32 @tl_scheme_object_sbdump_str(%struct.tl_buffer*, i32) #1

declare dso_local i32 @tl_string_buffer_append_char(%struct.tl_buffer*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_scheme_object_is_colon_terminated_function(%struct.tl_scheme_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
