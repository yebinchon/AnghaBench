; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_add_patterns_from_file_to_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_add_patterns_from_file_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_list = type { i32 }
%struct.index_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_patterns_from_file_to_list(i8* %0, i8* %1, i32 %2, %struct.pattern_list* %3, %struct.index_state* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pattern_list*, align 8
  %10 = alloca %struct.index_state*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.pattern_list* %3, %struct.pattern_list** %9, align 8
  store %struct.index_state* %4, %struct.index_state** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.pattern_list*, %struct.pattern_list** %9, align 8
  %15 = load %struct.index_state*, %struct.index_state** %10, align 8
  %16 = call i32 @add_patterns(i8* %11, i8* %12, i32 %13, %struct.pattern_list* %14, %struct.index_state* %15, i32* null)
  ret i32 %16
}

declare dso_local i32 @add_patterns(i8*, i8*, i32, %struct.pattern_list*, %struct.index_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
