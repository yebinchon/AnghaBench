; ModuleID = '/home/carl/AnghaBench/git/extr_reachable.c_lookup_object_by_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_reachable.c_lookup_object_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"BUG: unknown object type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.repository*, %struct.object_id*, i32)* @lookup_object_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_object_by_type(%struct.repository* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 130, label %9
    i32 128, label %13
    i32 129, label %17
    i32 131, label %21
  ]

9:                                                ; preds = %3
  %10 = load %struct.repository*, %struct.repository** %5, align 8
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call i8* @lookup_commit(%struct.repository* %10, %struct.object_id* %11)
  store i8* %12, i8** %4, align 8
  br label %28

13:                                               ; preds = %3
  %14 = load %struct.repository*, %struct.repository** %5, align 8
  %15 = load %struct.object_id*, %struct.object_id** %6, align 8
  %16 = call i8* @lookup_tree(%struct.repository* %14, %struct.object_id* %15)
  store i8* %16, i8** %4, align 8
  br label %28

17:                                               ; preds = %3
  %18 = load %struct.repository*, %struct.repository** %5, align 8
  %19 = load %struct.object_id*, %struct.object_id** %6, align 8
  %20 = call i8* @lookup_tag(%struct.repository* %18, %struct.object_id* %19)
  store i8* %20, i8** %4, align 8
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.repository*, %struct.repository** %5, align 8
  %23 = load %struct.object_id*, %struct.object_id** %6, align 8
  %24 = call i8* @lookup_blob(%struct.repository* %22, %struct.object_id* %23)
  store i8* %24, i8** %4, align 8
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %9, %13, %17, %21, %25
  %29 = load i8*, i8** %4, align 8
  ret i8* %29
}

declare dso_local i8* @lookup_commit(%struct.repository*, %struct.object_id*) #1

declare dso_local i8* @lookup_tree(%struct.repository*, %struct.object_id*) #1

declare dso_local i8* @lookup_tag(%struct.repository*, %struct.object_id*) #1

declare dso_local i8* @lookup_blob(%struct.repository*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
