; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_sbdump_indent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_sbdump_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tl_scheme_object*, %struct.tl_scheme_object* }
%struct.tl_buffer = type { i32 }

@tlso_open_square_bracket = common dso_local global i64 0, align 8
@obj_empty_list = common dso_local global %struct.tl_scheme_object zeroinitializer, align 8
@tlso_list = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_scheme_object_sbdump_indent(%struct.tl_buffer* %0, %struct.tl_scheme_object* %1, i32 %2) #0 {
  %4 = alloca %struct.tl_buffer*, align 8
  %5 = alloca %struct.tl_scheme_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.tl_scheme_object*, align 8
  store %struct.tl_buffer* %0, %struct.tl_buffer** %4, align 8
  store %struct.tl_scheme_object* %1, %struct.tl_scheme_object** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %12 = call i32 @tl_scheme_object_contain_list(%struct.tl_scheme_object* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.tl_buffer*, %struct.tl_buffer** %4, align 8
  %16 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %17 = call i32 @tl_scheme_object_sbdump(%struct.tl_buffer* %15, %struct.tl_scheme_object* %16)
  br label %102

18:                                               ; preds = %3
  %19 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %20 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %22, align 8
  %24 = icmp ne %struct.tl_scheme_object* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %27 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %29, align 8
  %31 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @tlso_open_square_bracket, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  store i8 91, i8* %8, align 1
  store i8 93, i8* %9, align 1
  %36 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %37 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %39, align 8
  store %struct.tl_scheme_object* %40, %struct.tl_scheme_object** %5, align 8
  store i8 32, i8* %7, align 1
  br label %42

41:                                               ; preds = %25, %18
  store i8 40, i8* %8, align 1
  store i8 41, i8* %9, align 1
  store i8 0, i8* %7, align 1
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.tl_buffer*, %struct.tl_buffer** %4, align 8
  %44 = load i8, i8* %8, align 1
  %45 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %43, i8 signext %44)
  %46 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  store %struct.tl_scheme_object* %46, %struct.tl_scheme_object** %10, align 8
  br label %47

47:                                               ; preds = %87, %42
  %48 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %10, align 8
  %49 = icmp ne %struct.tl_scheme_object* %48, @obj_empty_list
  br i1 %49, label %50, label %93

50:                                               ; preds = %47
  %51 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %10, align 8
  %52 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @tlso_list, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i8, i8* %7, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.tl_buffer*, %struct.tl_buffer** %4, align 8
  %63 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %62, i8 signext 10)
  %64 = load %struct.tl_buffer*, %struct.tl_buffer** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @indent(%struct.tl_buffer* %64, i32 %66)
  br label %68

68:                                               ; preds = %61, %50
  %69 = load %struct.tl_buffer*, %struct.tl_buffer** %4, align 8
  %70 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %10, align 8
  %71 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  call void @tl_scheme_object_sbdump_indent(%struct.tl_buffer* %69, %struct.tl_scheme_object* %74, i32 %76)
  %77 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %10, align 8
  %78 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %80, align 8
  %82 = call i64 @tl_scheme_object_is_colon_terminated_function(%struct.tl_scheme_object* %81)
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 0, i32 32
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %7, align 1
  br label %87

87:                                               ; preds = %68
  %88 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %10, align 8
  %89 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %91, align 8
  store %struct.tl_scheme_object* %92, %struct.tl_scheme_object** %10, align 8
  br label %47

93:                                               ; preds = %47
  %94 = load %struct.tl_buffer*, %struct.tl_buffer** %4, align 8
  %95 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %94, i8 signext 10)
  %96 = load %struct.tl_buffer*, %struct.tl_buffer** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @indent(%struct.tl_buffer* %96, i32 %97)
  %99 = load %struct.tl_buffer*, %struct.tl_buffer** %4, align 8
  %100 = load i8, i8* %9, align 1
  %101 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %99, i8 signext %100)
  br label %102

102:                                              ; preds = %93, %14
  ret void
}

declare dso_local i32 @tl_scheme_object_contain_list(%struct.tl_scheme_object*) #1

declare dso_local i32 @tl_scheme_object_sbdump(%struct.tl_buffer*, %struct.tl_scheme_object*) #1

declare dso_local i32 @tl_string_buffer_append_char(%struct.tl_buffer*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @indent(%struct.tl_buffer*, i32) #1

declare dso_local i64 @tl_scheme_object_is_colon_terminated_function(%struct.tl_scheme_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
