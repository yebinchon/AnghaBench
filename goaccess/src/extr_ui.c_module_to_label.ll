; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_module_to_label.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_module_to_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@module_to_label.modules = internal global [14 x i8*] [i8* inttoptr (i64 129 to i8*), i8* inttoptr (i64 133 to i8*), i8* inttoptr (i64 132 to i8*), i8* inttoptr (i64 138 to i8*), i8* inttoptr (i64 140 to i8*), i8* inttoptr (i64 137 to i8*), i8* inttoptr (i64 142 to i8*), i8* inttoptr (i64 128 to i8*), i8* inttoptr (i64 130 to i8*), i8* inttoptr (i64 136 to i8*), i8* inttoptr (i64 135 to i8*), i8* inttoptr (i64 139 to i8*), i8* inttoptr (i64 131 to i8*), i8* inttoptr (i64 134 to i8*)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @module_to_label(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds [14 x i8*], [14 x i8*]* @module_to_label.modules, i64 0, i64 %3
  %5 = load i8*, i8** %4, align 8
  %6 = call i8* @_(i8* %5)
  ret i8* %6
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
