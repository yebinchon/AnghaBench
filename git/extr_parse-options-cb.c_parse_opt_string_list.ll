; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_opt_string_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_opt_string_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.string_list* }
%struct.string_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_string_list(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.string_list*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.string_list*, %struct.string_list** %10, align 8
  store %struct.string_list* %11, %struct.string_list** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.string_list*, %struct.string_list** %8, align 8
  %16 = call i32 @string_list_clear(%struct.string_list* %15, i32 0)
  store i32 0, i32* %4, align 4
  br label %25

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %25

21:                                               ; preds = %17
  %22 = load %struct.string_list*, %struct.string_list** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @string_list_append(%struct.string_list* %22, i8* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %20, %14
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
