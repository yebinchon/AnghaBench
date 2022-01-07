; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_ref_exclusion.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_ref_exclusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_ref_exclusion(%struct.string_list** %0, i8* %1) #0 {
  %3 = alloca %struct.string_list**, align 8
  %4 = alloca i8*, align 8
  store %struct.string_list** %0, %struct.string_list*** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.string_list**, %struct.string_list*** %3, align 8
  %6 = load %struct.string_list*, %struct.string_list** %5, align 8
  %7 = icmp ne %struct.string_list* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = call %struct.string_list* @xcalloc(i32 1, i32 4)
  %10 = load %struct.string_list**, %struct.string_list*** %3, align 8
  store %struct.string_list* %9, %struct.string_list** %10, align 8
  %11 = load %struct.string_list**, %struct.string_list*** %3, align 8
  %12 = load %struct.string_list*, %struct.string_list** %11, align 8
  %13 = getelementptr inbounds %struct.string_list, %struct.string_list* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %8, %2
  %15 = load %struct.string_list**, %struct.string_list*** %3, align 8
  %16 = load %struct.string_list*, %struct.string_list** %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @string_list_append(%struct.string_list* %16, i8* %17)
  ret void
}

declare dso_local %struct.string_list* @xcalloc(i32, i32) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
