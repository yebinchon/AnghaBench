; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_dump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i32 }
%struct.tl_buffer = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_scheme_object_dump(i32* %0, %struct.tl_scheme_object* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tl_scheme_object*, align 8
  %5 = alloca %struct.tl_buffer, align 8
  store i32* %0, i32** %3, align 8
  store %struct.tl_scheme_object* %1, %struct.tl_scheme_object** %4, align 8
  %6 = call i32 @tl_string_buffer_init(%struct.tl_buffer* %5)
  %7 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %8 = call i32 @tl_scheme_object_sbdump(%struct.tl_buffer* %5, %struct.tl_scheme_object* %7)
  %9 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %5, i32 0)
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %5, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @tl_string_buffer_free(%struct.tl_buffer* %5)
  ret void
}

declare dso_local i32 @tl_string_buffer_init(%struct.tl_buffer*) #1

declare dso_local i32 @tl_scheme_object_sbdump(%struct.tl_buffer*, %struct.tl_scheme_object*) #1

declare dso_local i32 @tl_string_buffer_append_char(%struct.tl_buffer*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @tl_string_buffer_free(%struct.tl_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
