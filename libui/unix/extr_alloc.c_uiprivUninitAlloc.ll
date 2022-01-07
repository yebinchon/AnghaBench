; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_alloc.c_uiprivUninitAlloc.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_alloc.c_uiprivUninitAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@allocations = common dso_local global %struct.TYPE_4__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@uninitComplain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"Some data was leaked; either you left a uiControl lying around or there's a bug in libui itself. Leaked data:\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivUninitAlloc() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @allocations, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @allocations, align 8
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @g_ptr_array_free(%struct.TYPE_4__* %7, i32 %8)
  br label %18

10:                                               ; preds = %0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @allocations, align 8
  %12 = load i32, i32* @uninitComplain, align 4
  %13 = call i32 @g_ptr_array_foreach(%struct.TYPE_4__* %11, i32 %12, i8** %1)
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @uiprivUserBug(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @g_free(i8* %16)
  br label %18

18:                                               ; preds = %10, %6
  ret void
}

declare dso_local i32 @g_ptr_array_free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @g_ptr_array_foreach(%struct.TYPE_4__*, i32, i8**) #1

declare dso_local i32 @uiprivUserBug(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
