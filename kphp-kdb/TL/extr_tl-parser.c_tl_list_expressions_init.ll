; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_list_expressions_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_list_expressions_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { %struct.tl_expression*, %struct.tl_expression* }

@.str = private unnamed_addr constant [31 x i8] c"tl_list_expressions_init (%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_list_expressions_init(%struct.tl_expression* %0) #0 {
  %2 = alloca %struct.tl_expression*, align 8
  store %struct.tl_expression* %0, %struct.tl_expression** %2, align 8
  %3 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %4 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.tl_expression* %3)
  %5 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %6 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %7 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %6, i32 0, i32 0
  store %struct.tl_expression* %5, %struct.tl_expression** %7, align 8
  %8 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %9 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %8, i32 0, i32 1
  store %struct.tl_expression* %5, %struct.tl_expression** %9, align 8
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.tl_expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
